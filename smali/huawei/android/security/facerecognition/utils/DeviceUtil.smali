.class public Lhuawei/android/security/facerecognition/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field private static final CAP_MIN:I = -0x64

.field private static final DISABLE_CAP_THRESHOLD:D

.field private static final DISABLE_TEMP_THRESHOLD:D

.field private static final MAX_BYTES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "DeviceUtil"

.field private static final TEMP_MAX:I = 0x3e8

.field private static final TEMP_MIN:I = -0x3e8

.field private static final TEMP_THRESHOLD:D

.field private static final sCapacityFilePath:Ljava/lang/String; = "/sys/class/power_supply/Battery/capacity"

.field private static final sTempFilePath:Ljava/lang/String; = "/sys/class/power_supply/Battery/temp"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    const-string v0, "ro.config.low_temp_tsh"

    .line 24
    const/16 v1, -0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v6

    sput-wide v2, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->TEMP_THRESHOLD:D

    .line 25
    const-string v0, "ro.config.face_disable_temp"

    .line 26
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    div-double/2addr v0, v6

    sput-wide v0, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->DISABLE_TEMP_THRESHOLD:D

    .line 27
    const-string v0, "ro.config.face_disable_cap"

    .line 28
    const/16 v1, -0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    sput-wide v0, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->DISABLE_CAP_THRESHOLD:D

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryCapacity()D
    .locals 2

    .line 41
    const-string v0, "/sys/class/power_supply/Battery/capacity"

    invoke-static {v0}, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->readDoubleFromFile(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getBatteryTemperature()D
    .locals 4

    .line 45
    const-string v0, "/sys/class/power_supply/Battery/temp"

    invoke-static {v0}, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->readDoubleFromFile(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static isLowTemperature(D)Z
    .locals 4
    .param p0, "temperature"    # D

    .line 36
    const-string v0, "DeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temperature threshold is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->TEMP_THRESHOLD:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-wide v0, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->TEMP_THRESHOLD:D

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static reachDisabledTempCap(DD)Z
    .locals 4
    .param p0, "temperature"    # D
    .param p2, "capacity"    # D

    .line 31
    const-string v0, "DeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable temperature threshold is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->DISABLE_TEMP_THRESHOLD:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", cap is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->DISABLE_CAP_THRESHOLD:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-wide v0, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->DISABLE_TEMP_THRESHOLD:D

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_0

    sget-wide v0, Lhuawei/android/security/facerecognition/utils/DeviceUtil;->DISABLE_CAP_THRESHOLD:D

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static readDoubleFromFile(Ljava/lang/String;)D
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;

    .line 49
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 50
    .local v0, "ret":D
    const/4 v2, 0x0

    move-object v3, v2

    .line 51
    .local v3, "retStr":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 52
    .local v4, "in":Ljava/io/FileInputStream;
    const/16 v5, 0xa

    :try_start_1
    new-array v6, v5, [B

    .line 53
    .local v6, "max":[B
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .local v5, "bytesRead":I
    if-gtz v5, :cond_0

    .line 55
    nop

    .line 61
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 55
    return-wide v0

    .line 57
    :cond_0
    :try_start_3
    new-array v8, v5, [B

    .line 58
    .local v8, "toReturn":[B
    invoke-static {v6, v7, v8, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 59
    new-instance v7, Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v3, v7

    .line 60
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v0, v9

    .line 61
    .end local v5    # "bytesRead":I
    .end local v6    # "max":[B
    .end local v8    # "toReturn":[B
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    :goto_0
    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_7
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2

    .line 63
    .end local v4    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v4, "DeviceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong fromat : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 61
    :catch_3
    move-exception v2

    .line 62
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "DeviceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read status occurs IOException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    nop

    .line 66
    :goto_3
    return-wide v0
.end method
