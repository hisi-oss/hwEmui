.class public Landroid/util/HwLogExceptionInner;
.super Ljava/lang/Object;
.source "HwLogExceptionInner.java"

# interfaces
.implements Landroid/util/LogException;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HwLogExceptionInner$UpdateBlackListTask;
    }
.end annotation


# static fields
.field public static final CONFIG_FILE_DATA:I = 0x2

.field public static final CONFIG_FILE_NONE:I = 0x0

.field public static final CONFIG_FILE_ROM:I = 0x1

.field public static final LEVEL_A:I = 0x41

.field public static final LEVEL_B:I = 0x42

.field public static final LEVEL_C:I = 0x43

.field public static final LEVEL_D:I = 0x44

.field private static final LOG_ID_EXCEPTION:I = 0x5

.field public static final TAG:Ljava/lang/String; = "HwLogExceptionInner"

.field private static mBlackListFile:I

.field private static mLastModifiedTime:J

.field private static mLogBlackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogExceptionInner:Landroid/util/LogException;

.field private static mPackageNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mLogDisable:Z

.field private mPropLogSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-string v0, "hwlog_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/util/HwLogExceptionInner;->mLastModifiedTime:J

    .line 53
    const/4 v0, 0x0

    sput v0, Landroid/util/HwLogExceptionInner;->mBlackListFile:I

    .line 55
    const/4 v0, 0x0

    sput-object v0, Landroid/util/HwLogExceptionInner;->mLogExceptionInner:Landroid/util/LogException;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/util/HwLogExceptionInner;->mLogBlackList:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/util/HwLogExceptionInner;->mPackageNameList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwLogExceptionInner;->mPropLogSwitch:Z

    .line 51
    iput-boolean v0, p0, Landroid/util/HwLogExceptionInner;->mLogDisable:Z

    .line 59
    new-instance v0, Landroid/util/HwLogExceptionInner$UpdateBlackListTask;

    invoke-direct {v0, p0}, Landroid/util/HwLogExceptionInner$UpdateBlackListTask;-><init>(Landroid/util/HwLogExceptionInner;)V

    iput-object v0, p0, Landroid/util/HwLogExceptionInner;->mCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private addChangeCallback()V
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/util/HwLogExceptionInner;->mCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method private static getConfigFileUpdated()I
    .locals 7

    .line 244
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/system/hiview/log_blacklist.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "blackListFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    sget v1, Landroid/util/HwLogExceptionInner;->mBlackListFile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sget-wide v5, Landroid/util/HwLogExceptionInner;->mLastModifiedTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 247
    :cond_0
    return v2

    .line 250
    :cond_1
    sget v1, Landroid/util/HwLogExceptionInner;->mBlackListFile:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 251
    return v2

    .line 254
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static declared-synchronized getInstance()Landroid/util/LogException;
    .locals 2

    const-class v0, Landroid/util/HwLogExceptionInner;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Landroid/util/HwLogExceptionInner;->mLogExceptionInner:Landroid/util/LogException;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Landroid/util/HwLogExceptionInner;

    invoke-direct {v1}, Landroid/util/HwLogExceptionInner;-><init>()V

    sput-object v1, Landroid/util/HwLogExceptionInner;->mLogExceptionInner:Landroid/util/LogException;

    .line 65
    :cond_0
    sget-object v1, Landroid/util/HwLogExceptionInner;->mLogExceptionInner:Landroid/util/LogException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getPropLogSwitch()Z
    .locals 2

    .line 99
    const-string v0, "persist.hiview.logblacklist"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "flag":I
    if-nez v0, :cond_0

    .line 101
    return v1

    .line 103
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static initLogBlackList_static()V
    .locals 1

    .line 240
    invoke-static {}, Landroid/util/HwLogExceptionInner;->getConfigFileUpdated()I

    move-result v0

    invoke-static {v0}, Landroid/util/HwLogExceptionInner;->updateBlackList_static(I)Z

    .line 241
    return-void
.end method

.method public static isInLogBlackList_static()Z
    .locals 3

    .line 225
    sget-object v0, Landroid/util/HwLogExceptionInner;->mPackageNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Landroid/util/HwLogExceptionInner;->mLogBlackList:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const/4 v0, 0x1

    return v0

    .line 229
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isInLogBlackList_static(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 235
    invoke-static {}, Landroid/util/HwLogExceptionInner;->isInLogBlackList_static()Z

    move-result v0

    return v0
.end method

.method public static native println_exception_native(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 120
    sget-object v0, Landroid/util/HwLogExceptionInner;->mPackageNameList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public static native setliblogparam_native(ILjava/lang/String;)I
.end method

.method public static updateBlackList_static(I)Z
    .locals 9
    .param p0, "file"    # I

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "blackListFile":Ljava/io/File;
    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 170
    return v1

    .line 167
    :pswitch_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/system/hiview/log_blacklist.cfg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 168
    goto :goto_0

    .line 164
    :pswitch_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/etc/hiview/log_blacklist.cfg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 165
    nop

    .line 172
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_c

    .line 175
    :cond_0
    const/4 v1, 0x1

    .line 176
    .local v1, "bRet":Z
    const/4 v2, 0x0

    .line 177
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 178
    .local v3, "is":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 179
    .local v4, "fi":Ljava/io/FileInputStream;
    sget-object v5, Landroid/util/HwLogExceptionInner;->mLogBlackList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 181
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 182
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v3, v5

    .line 183
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 184
    const/4 v5, 0x0

    .line 185
    .local v5, "blackPackageName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_1

    .line 186
    sget-object v6, Landroid/util/HwLogExceptionInner;->mLogBlackList:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 192
    .end local v5    # "blackPackageName":Ljava/lang/String;
    :cond_1
    nop

    .line 194
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    goto :goto_2

    .line 195
    :catch_0
    move-exception v5

    .line 196
    .local v5, "ex":Ljava/io/IOException;
    const-string v6, "HwLogExceptionInner"

    const-string v7, "close fi IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v5    # "ex":Ljava/io/IOException;
    :goto_2
    nop

    .line 201
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    goto :goto_3

    .line 202
    :catch_1
    move-exception v5

    .line 203
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v6, "HwLogExceptionInner"

    const-string v7, "close is IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v5    # "ex":Ljava/io/IOException;
    :goto_3
    nop

    .line 208
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 211
    :goto_4
    goto :goto_7

    .line 209
    :catch_2
    move-exception v5

    .line 210
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v6, "HwLogExceptionInner"

    const-string v7, "close in IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "ex":Ljava/io/IOException;
    goto :goto_4

    .line 192
    :catchall_0
    move-exception v5

    goto :goto_8

    .line 188
    :catch_3
    move-exception v5

    .line 189
    .restart local v5    # "ex":Ljava/io/IOException;
    :try_start_4
    const-string v6, "HwLogExceptionInner"

    const-string v7, "updateBlackList_static IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    const/4 v1, 0x0

    .line 192
    .end local v5    # "ex":Ljava/io/IOException;
    if-eqz v4, :cond_2

    .line 194
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 197
    goto :goto_5

    .line 195
    :catch_4
    move-exception v5

    .line 196
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v6, "HwLogExceptionInner"

    const-string v7, "close fi IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    .line 201
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 204
    goto :goto_6

    .line 202
    :catch_5
    move-exception v5

    .line 203
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v6, "HwLogExceptionInner"

    const-string v7, "close is IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_3
    :goto_6
    if-eqz v2, :cond_4

    .line 208
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 215
    :cond_4
    :goto_7
    if-eqz v1, :cond_5

    .line 216
    sput p0, Landroid/util/HwLogExceptionInner;->mBlackListFile:I

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sput-wide v5, Landroid/util/HwLogExceptionInner;->mLastModifiedTime:J

    .line 220
    :cond_5
    return v1

    .line 192
    :goto_8
    if-eqz v4, :cond_6

    .line 194
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 197
    goto :goto_9

    .line 195
    :catch_6
    move-exception v6

    .line 196
    .local v6, "ex":Ljava/io/IOException;
    const-string v7, "HwLogExceptionInner"

    const-string v8, "close fi IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_6
    :goto_9
    if-eqz v3, :cond_7

    .line 201
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 204
    goto :goto_a

    .line 202
    :catch_7
    move-exception v6

    .line 203
    .restart local v6    # "ex":Ljava/io/IOException;
    const-string v7, "HwLogExceptionInner"

    const-string v8, "close is IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_7
    :goto_a
    if-eqz v2, :cond_8

    .line 208
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 211
    goto :goto_b

    .line 209
    :catch_8
    move-exception v6

    .line 210
    .restart local v6    # "ex":Ljava/io/IOException;
    const-string v7, "HwLogExceptionInner"

    const-string v8, "close in IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_8
    :goto_b
    throw v5

    .line 173
    .end local v1    # "bRet":Z
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/InputStreamReader;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    :cond_9
    :goto_c
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cmd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "contain"    # Ljava/lang/String;

    .line 70
    const-string v0, "command"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Landroid/util/HwLogExceptionInner;->println_exception_native(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initLogBlackList()V
    .locals 2

    .line 89
    invoke-static {}, Landroid/util/HwLogExceptionInner;->getPropLogSwitch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/util/HwLogExceptionInner;->mPropLogSwitch:Z

    .line 90
    invoke-static {}, Landroid/util/HwLogExceptionInner;->getConfigFileUpdated()I

    move-result v0

    invoke-static {v0}, Landroid/util/HwLogExceptionInner;->updateBlackList_static(I)Z

    .line 91
    const-string v0, "ro.logsystem.usertype"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, "flag":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Landroid/util/HwLogExceptionInner;->addChangeCallback()V

    .line 96
    :cond_0
    return-void
.end method

.method public isInLogBlackList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 111
    invoke-static {p1}, Landroid/util/HwLogExceptionInner;->setPackageName(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/util/HwLogExceptionInner;->updateAllSwitch()Z

    .line 113
    iget-boolean v0, p0, Landroid/util/HwLogExceptionInner;->mPropLogSwitch:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/util/HwLogExceptionInner;->isInLogBlackList_static()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public msg(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "mask"    # I
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "msgAll":Ljava/lang/String;
    const-string v1, "message"

    invoke-static {p1, p2, v1, v0}, Landroid/util/HwLogExceptionInner;->println_exception_native(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public msg(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "msgAll":Ljava/lang/String;
    const-string v1, "message"

    invoke-static {p1, p2, v1, v0}, Landroid/util/HwLogExceptionInner;->println_exception_native(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setliblogparam(ILjava/lang/String;)I
    .locals 3
    .param p1, "paramid"    # I
    .param p2, "val"    # Ljava/lang/String;

    .line 84
    const-string v0, "HwLogExceptionInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Log blacklist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p1, p2}, Landroid/util/HwLogExceptionInner;->setliblogparam_native(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method updateAllSwitch()Z
    .locals 3

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "bRet":Z
    invoke-static {}, Landroid/util/HwLogExceptionInner;->getPropLogSwitch()Z

    move-result v1

    .line 140
    .local v1, "propswitch":Z
    iget-boolean v2, p0, Landroid/util/HwLogExceptionInner;->mPropLogSwitch:Z

    if-eq v2, v1, :cond_0

    .line 141
    const/4 v0, 0x1

    .line 142
    iput-boolean v1, p0, Landroid/util/HwLogExceptionInner;->mPropLogSwitch:Z

    .line 144
    :cond_0
    if-eqz v1, :cond_1

    .line 145
    return v0

    .line 147
    :cond_1
    invoke-static {}, Landroid/util/HwLogExceptionInner;->getConfigFileUpdated()I

    move-result v2

    .line 148
    .local v2, "nFile":I
    if-eqz v2, :cond_2

    .line 149
    invoke-static {v2}, Landroid/util/HwLogExceptionInner;->updateBlackList_static(I)Z

    move-result v0

    .line 151
    :cond_2
    return v0
.end method

.method updateLogSwitch()V
    .locals 3

    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, "disable":Z
    sget-object v1, Landroid/util/HwLogExceptionInner;->mPackageNameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-boolean v1, p0, Landroid/util/HwLogExceptionInner;->mPropLogSwitch:Z

    if-nez v1, :cond_1

    invoke-static {}, Landroid/util/HwLogExceptionInner;->isInLogBlackList_static()Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 131
    :cond_2
    iget-boolean v1, p0, Landroid/util/HwLogExceptionInner;->mLogDisable:Z

    if-eq v1, v0, :cond_4

    .line 132
    const/4 v1, 0x2

    if-eqz v0, :cond_3

    const-string v2, "on"

    goto :goto_0

    :cond_3
    const-string v2, "off"

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/util/HwLogExceptionInner;->setliblogparam(ILjava/lang/String;)I

    .line 133
    iput-boolean v0, p0, Landroid/util/HwLogExceptionInner;->mLogDisable:Z

    .line 135
    :cond_4
    return-void
.end method
