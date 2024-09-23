.class public final Landroid/rms/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BUNDLE_CURRENT_COUNT:Ljava/lang/String; = "current_count"

.field public static final BUNDLE_HARD_THRESHOLD:Ljava/lang/String; = "hard_threshold"

.field public static final BUNDLE_IS_IN_WHITELIST:Ljava/lang/String; = "isInWhiteList"

.field public static final BUNDLE_THIRD_PARTY_APP_LIFETIME:Ljava/lang/String; = "third_party_app_lifetime"

.field public static final BUNDLE_THIRD_PARTY_APP_USETIME:Ljava/lang/String; = "third_party_app_usetime"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DATE_FORMAT_DETAIL:Ljava/lang/String; = "yyyy-MM-dd hh:mm:ss"

.field public static final DATE_TIME_24HOURS:J = 0x5265c00L

.field public static final DEBUG:Z

.field public static final FLAG_CRASH_MONITOR:I = 0x2

.field public static final FLAG_IO_STATISTIC:I = 0x1

.field public static final HWFLOW:Z

.field public static final HWLOGW_E:Z = true

.field public static final IS_DEBUG_VERSION:Z

.field private static final PARAM_SPLIT:Ljava/lang/String; = ":"

.field public static final RMSVERSION:I

.field public static final SELF_COUNT_RESOURCE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "RMS"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 49
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_0

    const-string v0, "RMS"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    .line 53
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_2

    const-string v0, "RMS"

    const/4 v4, 0x4

    .line 54
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    sput-boolean v0, Landroid/rms/utils/Utils;->HWFLOW:Z

    .line 59
    const-string v0, "ro.logsystem.usertype"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v2, v3

    nop

    :cond_4
    sput-boolean v2, Landroid/rms/utils/Utils;->IS_DEBUG_VERSION:Z

    .line 63
    const-string v0, "ro.config.RmsVersion"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/rms/utils/Utils;->RMSVERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final generateDirectory(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "flag":Z
    if-nez p0, :cond_0

    .line 101
    return v0

    .line 104
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 110
    .end local v1    # "directory":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v2, "RMS"

    const-string v3, "mkdir fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "se":Ljava/lang/SecurityException;
    :goto_0
    return v0
.end method

.method public static getCompactPeriodInterval()I
    .locals 4

    .line 264
    const-string v0, "rms_debug_interval"

    const v1, 0x493e0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, "compactPeriodInterval":I
    const-string v1, "RMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug CompactPeriodInterval is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v0
.end method

.method public static getDateFormatValue(J)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # J

    .line 225
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatValue(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J
    .param p2, "format"    # Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "formatValue":Ljava/lang/String;
    return-object v1
.end method

.method public static getDifferencesByDay(JJ)J
    .locals 4
    .param p0, "time1"    # J
    .param p2, "time2"    # J

    .line 240
    sub-long v0, p0, p2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static final getPackageNameByUid(I)Ljava/lang/String;
    .locals 4
    .param p0, "uid"    # I

    .line 123
    const-string v0, ""

    .line 125
    .local v0, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RMS"

    const-string v3, "get pkg name fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static getShortDateFormatValue(J)J
    .locals 5
    .param p0, "time"    # J

    .line 229
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 231
    .local v0, "sdFormatter":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "formatValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 233
    .end local v1    # "formatValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/text/ParseException;
    const-string v2, "RMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShortDateFormatValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v1    # "e":Ljava/text/ParseException;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static getSizeOfDirectory(Ljava/io/File;)J
    .locals 9
    .param p0, "directory"    # Ljava/io/File;

    .line 244
    const-wide/16 v0, 0x0

    .line 246
    .local v0, "totalSizeInDirectory":J
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    const-string v2, "RMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSizeOfDirectory,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-wide v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "subFiles":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 252
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 253
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v7

    .line 252
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "subFiles":[Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "RMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSizeOfDirectory,IOException occurs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_1
    return-wide v0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterType"    # [Ljava/lang/Class;
    .param p3, "argsValues"    # [Ljava/lang/Object;

    .line 186
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 187
    const-string v1, "RMS"

    const-string v2, "invokeMethod,instance is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-object v0

    .line 190
    :cond_0
    nop

    .line 192
    .local v0, "resultObj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 193
    .local v1, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 194
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz p2, :cond_1

    .line 195
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 197
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 199
    :goto_0
    move-object v3, v2

    .line 200
    .local v3, "methodResult":Ljava/lang/reflect/Method;
    new-instance v4, Landroid/rms/utils/Utils$1;

    invoke-direct {v4, v3}, Landroid/rms/utils/Utils$1;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 220
    .end local v1    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methodResult":Ljava/lang/reflect/Method;
    :goto_1
    goto/16 :goto_2

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "RMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeMethod,Exception,method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2

    .line 214
    :catch_1
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "RMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeMethod,IllegalAccessException,method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 211
    :catch_2
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "RMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeMethod,no such method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    .line 208
    :catch_3
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "RMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invokeMethod,RuntimeException method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_1

    .line 221
    :goto_2
    return-object v0
.end method

.method public static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 140
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 141
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    const/4 v0, 0x1

    return v0

    .line 140
    .end local v3    # "arg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    return v0
.end method

.method public static scanArgsWithParam([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 157
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    .line 161
    :cond_0
    const/4 v0, 0x0

    .line 162
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 163
    .local v1, "splitsArray":[Ljava/lang/String;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    .line 164
    .local v4, "arg":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    goto :goto_1

    .line 167
    :cond_1
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 168
    array-length v5, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 169
    goto :goto_2

    .line 171
    :cond_2
    const/4 v5, 0x1

    aget-object v0, v1, v5

    .line 163
    .end local v4    # "arg":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_4
    :goto_2
    return-object v0

    .line 158
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "splitsArray":[Ljava/lang/String;
    :cond_5
    :goto_3
    const-string v0, "RMS"

    const-string v1, "scanArgsWithParam,neither args or key is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final wait(I)V
    .locals 2
    .param p0, "ms"    # I

    .line 117
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    :goto_0
    return-void
.end method

.method public static final writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x1

    .line 81
    .local v1, "success":Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 82
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    nop

    .line 89
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :goto_0
    goto :goto_1

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "RMS"

    const-string v4, "writeFile : IOException when close"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 83
    :catch_1
    move-exception v2

    .line 84
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "RMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    const/4 v1, 0x0

    .line 87
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 89
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 95
    :cond_0
    :goto_1
    return v1

    .line 87
    :goto_2
    if-eqz v0, :cond_1

    .line 89
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 92
    goto :goto_3

    .line 90
    :catch_2
    move-exception v3

    .line 91
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "RMS"

    const-string v5, "writeFile : IOException when close"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v2
.end method
