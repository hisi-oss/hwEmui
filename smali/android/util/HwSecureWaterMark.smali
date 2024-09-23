.class public Landroid/util/HwSecureWaterMark;
.super Ljava/lang/Object;
.source "HwSecureWaterMark.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final FIRST_SIM_SLOT:I = 0x0

.field private static final FLAG_MSPES_CONFIG_WATERMARK:J = 0x4L

.field public static final MAX_NUMER:I = 0xea60

.field public static final SECOND_SIM_SLOT:I = 0x1

.field static final TAG:Ljava/lang/String; = "HwSecureWaterMark"

.field private static mPhoneImei:Ljava/lang/String;

.field private static mPhoneMeid:Ljava/lang/String;

.field private static mWatermarkNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-string v0, "SecureWaterMark_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Landroid/util/HwSecureWaterMark;->getWatermarkNumber()I

    move-result v0

    sput v0, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    .line 49
    sput-object v0, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "srcbmp"    # Landroid/graphics/Bitmap;

    .line 330
    invoke-static {}, Landroid/util/HwSecureWaterMark;->getWatermarkNumber()I

    move-result v0

    invoke-static {p0, v0}, Landroid/util/HwSecureWaterMark;->addWatermark(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized addWatermark(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "srcbmp"    # Landroid/graphics/Bitmap;
    .param p1, "watermarkNumber"    # I

    const-class v0, Landroid/util/HwSecureWaterMark;

    monitor-enter v0

    .line 250
    :try_start_0
    invoke-static {}, Landroid/util/HwSecureWaterMark;->isWatermarkEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const-string v1, "HwSecureWaterMark"

    const-string v2, "addWatermark, watermark disable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit v0

    return-object p0

    .line 255
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 256
    :try_start_1
    const-string v2, "HwSecureWaterMark"

    const-string v3, "addWatermark, srcbmp == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit v0

    return-object v1

    .line 260
    :cond_1
    move v2, p1

    .line 261
    .local v2, "iWatermarkNumber":I
    if-ltz v2, :cond_9

    const v3, 0xea60

    if-lt v2, v3, :cond_2

    goto :goto_1

    .line 271
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 272
    .local v3, "bmpconfig":Landroid/graphics/Bitmap$Config;
    const/4 v4, -0x1

    .line 274
    .local v4, "format":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v3, v5, :cond_3

    .line 275
    const/4 v4, 0x2

    goto :goto_0

    .line 277
    :cond_3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v5, :cond_4

    .line 278
    const/4 v4, 0x4

    .line 283
    :cond_4
    :goto_0
    if-gez v4, :cond_5

    .line 284
    const-string v5, "HwSecureWaterMark"

    const-string v6, "addWatermark, format invaid"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    monitor-exit v0

    return-object v1

    .line 291
    :cond_5
    :try_start_3
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 293
    .local v5, "copybitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_6

    .line 294
    const-string v6, "HwSecureWaterMark"

    const-string v7, "addWatermark, copybitmap fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    monitor-exit v0

    return-object v1

    .line 298
    :cond_6
    :try_start_4
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 300
    .local v7, "mBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v7}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 301
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 302
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 304
    .local v8, "bytes":[B
    const/4 v9, 0x0

    .line 306
    .local v9, "res":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v12, 0x4

    invoke-static {v8, v10, v11, v12, v2}, Landroid/util/HwSecureWaterMark;->addWatermark_native([BIIII)I

    move-result v10

    move v9, v10

    .line 307
    if-ltz v9, :cond_8

    .line 308
    move-object v1, v5

    .line 314
    .local v1, "dscbitmap":Landroid/graphics/Bitmap;
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v7, v10

    .line 315
    invoke-virtual {v1, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 316
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    if-eq v3, v10, :cond_7

    .line 317
    invoke-virtual {v1, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v6

    .line 323
    :cond_7
    monitor-exit v0

    return-object v1

    .line 325
    .end local v1    # "dscbitmap":Landroid/graphics/Bitmap;
    :cond_8
    monitor-exit v0

    return-object v1

    .line 262
    .end local v3    # "bmpconfig":Landroid/graphics/Bitmap$Config;
    .end local v4    # "format":I
    .end local v5    # "copybitmap":Landroid/graphics/Bitmap;
    .end local v7    # "mBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "bytes":[B
    .end local v9    # "res":I
    :cond_9
    :goto_1
    :try_start_5
    const-string v3, "HwSecureWaterMark"

    const-string v4, "addWatermark, iWatermarkNumber invaid"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    monitor-exit v0

    return-object v1

    .line 249
    .end local v2    # "iWatermarkNumber":I
    .end local p0    # "srcbmp":Landroid/graphics/Bitmap;
    .end local p1    # "watermarkNumber":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static addWatermark(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "srcbmp"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .line 334
    invoke-static {p1}, Landroid/util/HwSecureWaterMark;->getWatermarkNumber(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/util/HwSecureWaterMark;->addWatermark(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static native addWatermark_native([BIIII)I
.end method

.method public static getWatermarkNumber()I
    .locals 6

    .line 149
    sget v0, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    if-lez v0, :cond_0

    .line 150
    sget v0, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v0

    .line 152
    :cond_0
    const/4 v0, -0x1

    sput v0, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "intimei":I
    :try_start_0
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    const v2, 0xea60

    if-eqz v1, :cond_1

    .line 156
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 157
    rem-int v1, v0, v2

    sput v1, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    .line 158
    sget v1, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v1

    .line 161
    :cond_1
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    const/16 v3, 0x10

    if-eqz v1, :cond_2

    .line 162
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 163
    .local v1, "intmeid":I
    rem-int v2, v1, v2

    sput v2, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v2

    .line 166
    .end local v1    # "intmeid":I
    :cond_2
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/telephony/HwInnerTelephonyManager;->getUniqueDeviceId(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    .line 168
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 169
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    sget-object v3, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    sget-object v4, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    .line 170
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 171
    rem-int v1, v0, v2

    sput v1, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    .line 172
    sget v1, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v1

    .line 175
    :cond_3
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/HwTelephonyManagerInner;->getMeid()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    .line 176
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 177
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    sget-object v4, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    sget-object v5, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    .line 178
    sget-object v1, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 179
    .restart local v1    # "intmeid":I
    rem-int v2, v1, v2

    sput v2, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 184
    .end local v0    # "intimei":I
    .end local v1    # "intmeid":I
    :cond_4
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HwSecureWaterMark"

    const-string v2, "getWatermarkNumber, RuntimeException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    sget v0, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v0
.end method

.method public static getWatermarkNumber(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    invoke-static {}, Landroid/util/HwSecureWaterMark;->getWatermarkNumber()I

    move-result v0

    sput v0, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    .line 96
    sget v0, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    if-lez v0, :cond_0

    .line 97
    sget v0, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v0

    .line 101
    :cond_0
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 102
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 103
    const-string v1, "HwSecureWaterMark"

    const-string v2, "onCreate-> telephony is null, can not init imei or meid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "imei1":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "secondImei":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telephony/HwTelephonyManagerInner;->getMeid(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "meid1":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/HwTelephonyManagerInner;->getDefault()Landroid/telephony/HwTelephonyManagerInner;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/telephony/HwTelephonyManagerInner;->getMeid(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "secondMeid":Ljava/lang/String;
    const v5, 0xea60

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    .line 112
    sget-object v6, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 113
    .local v6, "intimei1":I
    rem-int v5, v6, v5

    sput v5, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v5

    .line 116
    .end local v6    # "intimei1":I
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 117
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    .line 118
    sget-object v6, Landroid/util/HwSecureWaterMark;->mPhoneImei:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 119
    .local v6, "intimei2":I
    rem-int v5, v6, v5

    sput v5, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v5

    .line 122
    .end local v6    # "intimei2":I
    :cond_3
    const/16 v6, 0x10

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    .line 124
    sget-object v7, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 125
    .local v6, "intmeid1":I
    rem-int v5, v6, v5

    sput v5, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v5

    .line 128
    .end local v6    # "intmeid1":I
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    .line 130
    sget-object v7, Landroid/util/HwSecureWaterMark;->mPhoneMeid:Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 131
    .local v6, "intmeid2":I
    rem-int v5, v6, v5

    sput v5, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 137
    .end local v0    # "telephony":Landroid/telephony/TelephonyManager;
    .end local v1    # "meid1":Ljava/lang/String;
    .end local v2    # "imei1":Ljava/lang/String;
    .end local v3    # "secondMeid":Ljava/lang/String;
    .end local v4    # "secondImei":Ljava/lang/String;
    .end local v6    # "intmeid2":I
    :cond_5
    :goto_0
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HwSecureWaterMark"

    const-string v2, "getWatermarkNumber, 1 telephony.getImei RuntimeException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    sget v0, Landroid/util/HwSecureWaterMark;->mWatermarkNumber:I

    return v0
.end method

.method public static isWatermarkEnable()Z
    .locals 8

    .line 53
    const/4 v0, 0x0

    .line 57
    .local v0, "result":Z
    const-string v1, "ro.mspes.config"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "mspesConfig":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    const-string v2, "ro.config.hw_watermark"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 60
    .local v2, "HW_WATERMARK":Z
    if-eqz v2, :cond_1

    .line 61
    const-string v4, "ro.fastboot.unlock"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 62
    .local v4, "FASTBOOT_UNLOCK":Z
    const-string v5, "ro.build.hide"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 63
    .local v3, "BUILD_HIDE":Z
    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x1

    .line 67
    .end local v2    # "HW_WATERMARK":Z
    .end local v3    # "BUILD_HIDE":Z
    .end local v4    # "FASTBOOT_UNLOCK":Z
    :cond_1
    goto :goto_0

    .line 70
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .local v2, "mspesConfigValue":J
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 72
    const/4 v0, 0x1

    .line 77
    .end local v2    # "mspesConfigValue":J
    :cond_3
    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "HwSecureWaterMark"

    const-string v4, " ro.mspes.config  is not a number"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method public static isWatermarkReady()Z
    .locals 2

    .line 83
    const/4 v0, 0x0

    .line 87
    .local v0, "result":Z
    invoke-static {}, Landroid/util/HwSecureWaterMark;->getWatermarkNumber()I

    move-result v1

    if-lez v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :cond_0
    return v0
.end method
