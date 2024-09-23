.class public Lcom/huawei/android/util/HwSystemInfo;
.super Ljava/lang/Object;
.source "HwSystemInfo.java"


# static fields
.field private static final GB_IN_KB:J = 0x100000L

.field private static final KB_IN_B:J = 0x400L

.field static final LOG_TAG:Ljava/lang/String; = "DeviceInfo"

.field private static configEmmcSize:I = 0x0

.field private static configRamSize:I = 0x0

.field private static final sEmmcSizePattern:Ljava/util/regex/Pattern;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sKernelPartitions:Ljava/lang/String;

.field private static final sRamSizePattern:Ljava/util/regex/Pattern;

.field private static final sSectorLong:J = 0x200L

.field private static final sSectorSize:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "/proc/meminfo"

    invoke-static {v0}, Lcom/huawei/android/util/HwSystemInfo;->getProcInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/util/HwSystemInfo;->sKernelCmdLine:Ljava/lang/String;

    .line 33
    const-string v0, "/proc/partitions"

    invoke-static {v0}, Lcom/huawei/android/util/HwSystemInfo;->getProcInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/util/HwSystemInfo;->sKernelPartitions:Ljava/lang/String;

    .line 34
    const-string v0, "/proc/bootdevice/size"

    invoke-static {v0}, Lcom/huawei/android/util/HwSystemInfo;->getProcInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/util/HwSystemInfo;->sSectorSize:Ljava/lang/String;

    .line 35
    const-string v0, "MemTotal:\\s*(\\d+)\\s*"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/util/HwSystemInfo;->sRamSizePattern:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "\\s\\d+\\s+\\d+\\s+(\\d+)\\smmcblk0"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/util/HwSystemInfo;->sEmmcSizePattern:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "ro.config.hw_ramSize"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/android/util/HwSystemInfo;->configRamSize:I

    .line 40
    const-string v0, "ro.config.hw_emmcSize"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/android/util/HwSystemInfo;->configEmmcSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceEmmc()Ljava/lang/String;
    .locals 12

    .line 82
    sget v0, Lcom/huawei/android/util/HwSystemInfo;->configEmmcSize:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 83
    sget v0, Lcom/huawei/android/util/HwSystemInfo;->configEmmcSize:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    const-string v0, ""

    .line 86
    .local v0, "emmcSize":Ljava/lang/String;
    sget-object v1, Lcom/huawei/android/util/HwSystemInfo;->sEmmcSizePattern:Ljava/util/regex/Pattern;

    sget-object v2, Lcom/huawei/android/util/HwSystemInfo;->sKernelPartitions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 87
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    const-string v2, "DeviceInfo"

    const-string v3, "Emmc Info not found, display nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    const-wide/16 v2, 0x0

    .line 94
    .local v2, "emmcLong":J
    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 96
    .local v6, "sectors":J
    :try_start_0
    sget-object v8, Lcom/huawei/android/util/HwSystemInfo;->sSectorSize:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v6, v8

    .line 99
    goto :goto_1

    .line 97
    :catch_0
    move-exception v8

    .line 98
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v9, "DeviceInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDeviceEmmc has NumberFormatException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    cmp-long v4, v6, v4

    if-lez v4, :cond_2

    .line 101
    const-wide/16 v4, 0x200

    mul-long/2addr v4, v6

    const-wide/16 v8, 0x400

    div-long v2, v4, v8

    .line 103
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 105
    .end local v2    # "emmcLong":J
    .end local v6    # "sectors":J
    :cond_3
    const-string v2, "DeviceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emmcSize ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-object v0
.end method

.method public static getDeviceRam()Ljava/lang/String;
    .locals 12

    .line 49
    sget v0, Lcom/huawei/android/util/HwSystemInfo;->configRamSize:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 50
    sget v0, Lcom/huawei/android/util/HwSystemInfo;->configRamSize:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    const-string v0, ""

    .line 53
    .local v0, "ramSize":Ljava/lang/String;
    sget-object v1, Lcom/huawei/android/util/HwSystemInfo;->sRamSizePattern:Ljava/util/regex/Pattern;

    sget-object v2, Lcom/huawei/android/util/HwSystemInfo;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 54
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    const-string v2, "DeviceInfo"

    const-string v3, "Ram Info not found, display nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 62
    .local v4, "ramLong":J
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    .line 65
    goto :goto_1

    .line 63
    :catch_0
    move-exception v6

    .line 64
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 66
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    const-wide/16 v6, 0x0

    .line 67
    .local v6, "residueToGb":J
    const-wide/16 v8, 0x0

    .line 68
    .local v8, "timesToGb":J
    cmp-long v10, v4, v2

    if-lez v10, :cond_2

    .line 69
    const-wide/32 v10, 0x100000

    div-long v8, v4, v10

    .line 70
    rem-long v6, v4, v10

    .line 71
    cmp-long v2, v6, v2

    if-eqz v2, :cond_2

    .line 72
    const-wide/16 v2, 0x1

    add-long/2addr v2, v8

    mul-long v4, v10, v2

    .line 73
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 77
    :cond_2
    const-string v2, "DeviceInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ramSize ="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v0
.end method

.method private static getProcInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 111
    const-string v0, ""

    .line 112
    .local v0, "procInfo":Ljava/lang/String;
    const/4 v1, 0x0

    .line 117
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 118
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 119
    .local v2, "buffer":[B
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 120
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 121
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v4, v2, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 126
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    :cond_0
    nop

    .line 128
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :goto_0
    goto :goto_1

    .line 129
    :catch_0
    move-exception v2

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 123
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "DeviceInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No path exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 128
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 134
    :cond_1
    :goto_1
    return-object v0

    .line 126
    :goto_2
    if-eqz v1, :cond_2

    .line 128
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 130
    goto :goto_3

    .line 129
    :catch_2
    move-exception v3

    .line 130
    :cond_2
    :goto_3
    throw v2
.end method
