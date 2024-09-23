.class public Landroid/zrhung/appeye/AppEyeFwkBlock;
.super Landroid/zrhung/ZrHungImpl;
.source "AppEyeFwkBlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;
    }
.end annotation


# static fields
.field private static final COMPLETED:I = 0x0

.field private static final INTEREST_PROCESSES:[Ljava/lang/String;

.field private static final OVERDUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppEyeFwkBlock"

.field private static sAppEyeFwkBlock:Landroid/zrhung/appeye/AppEyeFwkBlock;


# instance fields
.field private BINDER_TRANS_PATH:Ljava/lang/String;

.field private HUAWEI_BINDER_TRANS_PATH:Ljava/lang/String;

.field private checkInterval:J

.field private configReady:Z

.field private enabled:Z

.field private freezeHappened:Z

.field private isFirstOverdue:Z

.field private mAppEyeFwkBlockThread:Ljava/lang/Thread;

.field private mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field mLastBlockedTid:I

.field private mMonitorChecker:Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;

.field private mMonitorThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    const-string v0, "surfaceflinger"

    const-string v1, "android.hardware.graphics.composer@2.1-service"

    const-string v2, "android.hardware.graphics.composer@2.2-service"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/zrhung/appeye/AppEyeFwkBlock;->INTEREST_PROCESSES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 155
    const-string v0, "AppEyeFwkBlock"

    invoke-direct {p0, v0}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->isFirstOverdue:Z

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mLastBlockedTid:I

    .line 67
    const-string v1, "/sys/kernel/debug/binder/transactions"

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->BINDER_TRANS_PATH:Ljava/lang/String;

    .line 69
    const-string v1, "/sys/kernel/debug/binder/transaction_proc"

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->HUAWEI_BINDER_TRANS_PATH:Ljava/lang/String;

    .line 156
    const-string v1, "AppEyeFwkBlock"

    const-string v2, "Create AppEyeFwkBlock"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "monitor thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mMonitorThread:Landroid/os/HandlerThread;

    .line 160
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mMonitorThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 161
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mMonitorThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    .line 162
    .local v1, "monitorHandler":Landroid/os/Handler;
    new-instance v2, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;

    const-string v3, "monitor thread"

    invoke-direct {v2, p0, v1, v3}, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;-><init>(Landroid/zrhung/appeye/AppEyeFwkBlock;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mMonitorChecker:Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;

    .line 164
    iget-object v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mMonitorChecker:Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mAppEyeFwkBlockThread:Ljava/lang/Thread;

    .line 167
    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->configReady:Z

    .line 168
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->enabled:Z

    .line 169
    const-wide/16 v2, 0x1770

    iput-wide v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->checkInterval:J

    .line 170
    iput-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->freezeHappened:Z

    .line 171
    return-void
.end method

.method private addMonitor(Ljava/lang/Object;)V
    .locals 1
    .param p1, "monitor"    # Ljava/lang/Object;

    .line 174
    monitor-enter p0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mMonitorChecker:Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;

    invoke-virtual {v0, p1}, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->addMonitor(Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 179
    return-void

    .line 178
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 5

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "state":I
    iget-object v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 184
    .local v1, "checkerSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 185
    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;

    .line 186
    .local v3, "hc":Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;
    invoke-virtual {v3}, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->getCompletionStateLocked()I

    move-result v4

    if-le v0, v4, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->getCompletionStateLocked()I

    move-result v4

    :goto_1
    move v0, v4

    .line 184
    .end local v3    # "hc":Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private getConfigure()V
    .locals 10

    .line 211
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->configReady:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    iget-short v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mWpId:S

    invoke-static {v0}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    .line 215
    .local v0, "cfg":Landroid/util/ZRHung$HungConfig;
    if-nez v0, :cond_1

    .line 216
    const-string v2, "AppEyeFwkBlock"

    const-string v3, "Failed to get config from zrhung"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->configReady:Z

    .line 218
    return-void

    .line 221
    :cond_1
    iget v2, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 222
    iget-object v2, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 223
    const-string v2, "AppEyeFwkBlock"

    const-string v3, "Failed to get config from zrhung"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->configReady:Z

    .line 225
    return-void

    .line 227
    :cond_2
    iget-object v2, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "configs":[Ljava/lang/String;
    if-nez v2, :cond_3

    .line 229
    const-string v3, "AppEyeFwkBlock"

    const-string v4, "Failed to parse HungConfig"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->configReady:Z

    .line 231
    return-void

    .line 234
    :cond_3
    aget-object v3, v2, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->enabled:Z

    .line 235
    array-length v3, v2

    if-le v3, v1, :cond_4

    .line 236
    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 238
    .local v5, "time":J
    :try_start_0
    aget-object v7, v2, v1

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v5, v7

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v7

    .line 240
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v8, "AppEyeFwkBlock"

    const-string v9, "the config string cannot be parsed as long"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    cmp-long v3, v5, v3

    if-eqz v3, :cond_4

    .line 243
    iput-wide v5, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->checkInterval:J

    .line 246
    .end local v5    # "time":J
    :cond_4
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->configReady:Z

    .line 247
    return-void

    .line 248
    .end local v2    # "configs":[Ljava/lang/String;
    :cond_5
    iget v2, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    iget v2, v0, Landroid/util/ZRHung$HungConfig;->status:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_7

    .line 249
    :cond_6
    const-string v2, "AppEyeFwkBlock"

    const-string v4, "config is not support or there is no config"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->configReady:Z

    .line 251
    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->enabled:Z

    .line 253
    :cond_7
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/zrhung/appeye/AppEyeFwkBlock;
    .locals 2

    const-class v0, Landroid/zrhung/appeye/AppEyeFwkBlock;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeFwkBlock;->sAppEyeFwkBlock:Landroid/zrhung/appeye/AppEyeFwkBlock;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Landroid/zrhung/appeye/AppEyeFwkBlock;

    invoke-direct {v1}, Landroid/zrhung/appeye/AppEyeFwkBlock;-><init>()V

    sput-object v1, Landroid/zrhung/appeye/AppEyeFwkBlock;->sAppEyeFwkBlock:Landroid/zrhung/appeye/AppEyeFwkBlock;

    .line 150
    :cond_0
    sget-object v1, Landroid/zrhung/appeye/AppEyeFwkBlock;->sAppEyeFwkBlock:Landroid/zrhung/appeye/AppEyeFwkBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 391
    const/4 v0, -0x1

    .line 393
    .local v0, "value":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "AppEyeFwkBlock"

    const-string v3, "parseInt NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method private parseTransactionLine(Ljava/lang/String;ILjava/util/regex/Pattern;)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "tid"    # I
    .param p3, "pattern"    # Ljava/util/regex/Pattern;

    .line 378
    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 379
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const/4 v1, -0x1

    .line 380
    .local v1, "ret":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const-string v2, "AppEyeFwkBlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseTransactionLine1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/zrhung/appeye/AppEyeFwkBlock;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 383
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/zrhung/appeye/AppEyeFwkBlock;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 386
    :cond_0
    return v1
.end method

.method private reportFreeze(SZ)V
    .locals 13
    .param p1, "wpId"    # S
    .param p2, "withCmd"    # Z

    .line 257
    :try_start_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "checkerSize":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Landroid/zrhung/ZrHungData;

    invoke-direct {v2}, Landroid/zrhung/ZrHungData;-><init>()V

    .line 260
    .local v2, "data":Landroid/zrhung/ZrHungData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v3, "cmd":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 262
    const-string v4, "B,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v4, "p="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    const/4 v4, 0x0

    .line 267
    .local v4, "curLockholderPid":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "i":I
    .local v6, "curLockholderPid":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 268
    iget-object v7, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;

    .line 269
    .local v7, "hc":Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;
    invoke-virtual {v7}, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->getCompletionStateLocked()I

    move-result v8

    .line 270
    .local v8, "state":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 271
    invoke-virtual {v7}, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    iget-object v9, v7, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCurrentMonitor:Ljava/lang/Object;

    if-eqz v9, :cond_3

    .line 275
    iget-object v9, v7, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->mCurrentMonitor:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Thread;->getLockOwnerThreadId(Ljava/lang/Object;)I

    move-result v9

    .line 276
    .local v9, "curBlockedTid":I
    const-string v10, "AppEyeFwkBlock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current locked tid is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget v10, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mLastBlockedTid:I

    if-lez v10, :cond_2

    iget v10, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mLastBlockedTid:I

    if-ne v10, v9, :cond_2

    .line 278
    iget v10, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mLastBlockedTid:I

    invoke-virtual {p0, v10}, Landroid/zrhung/appeye/AppEyeFwkBlock;->catchBadproc(I)I

    move-result v10

    move v6, v10

    .line 279
    const-string v10, "AppEyeFwkBlock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "locked pid is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v10, "pid"

    invoke-virtual {v2, v10, v6}, Landroid/zrhung/ZrHungData;->putInt(Ljava/lang/String;I)V

    .line 281
    const/4 v10, 0x0

    if-eqz v10, :cond_2

    if-eqz p2, :cond_2

    if-lez v6, :cond_2

    .line 282
    const-string v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v10, "p="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    :cond_2
    iput v9, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mLastBlockedTid:I

    .line 267
    .end local v7    # "hc":Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;
    .end local v8    # "state":I
    .end local v9    # "curBlockedTid":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 291
    .end local v4    # "i":I
    :cond_4
    sget-boolean v4, Ljava/lang/System;->DEBUG:Z

    if-eqz v4, :cond_6

    if-eqz p2, :cond_6

    .line 292
    sget-object v4, Landroid/zrhung/appeye/AppEyeFwkBlock;->INTEREST_PROCESSES:[Ljava/lang/String;

    array-length v4, v4

    .line 293
    .local v4, "length":I
    nop

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 294
    const-string v7, ",n="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    sget-object v7, Landroid/zrhung/appeye/AppEyeFwkBlock;->INTEREST_PROCESSES:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 297
    .end local v5    # "i":I
    :cond_5
    const-string v5, ",P="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .end local v4    # "length":I
    :cond_6
    const-string v4, "AppEyeFwkBlock"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v2, v4, v5}, Landroid/zrhung/appeye/AppEyeFwkBlock;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "checkerSize":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "data":Landroid/zrhung/ZrHungData;
    .end local v3    # "cmd":Ljava/lang/StringBuilder;
    .end local v6    # "curLockholderPid":I
    goto :goto_2

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "AppEyeFwkBlock"

    const-string v2, "sendAppEyeEvent exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public catchBadproc(I)I
    .locals 17
    .param p1, "tid"    # I

    move-object/from16 v1, p0

    .line 402
    const/4 v2, 0x0

    .line 403
    .local v2, "buff":Ljava/io/BufferedReader;
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Landroid/zrhung/appeye/AppEyeFwkBlock;->HUAWEI_BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 405
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 406
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 407
    .local v5, "reader":Ljava/io/Reader;
    const/4 v6, 0x0

    .line 408
    .local v6, "index":I
    const/4 v7, -0x1

    .line 409
    .local v7, "ret":I
    const/4 v8, 0x1

    .line 410
    .local v8, "isHwTransLog":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 411
    const-string v9, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file not exists : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/zrhung/appeye/AppEyeFwkBlock;->HUAWEI_BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Landroid/zrhung/appeye/AppEyeFwkBlock;->BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    .line 413
    const/4 v8, 0x0

    .line 414
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 415
    const-string v9, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file not exists : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/zrhung/appeye/AppEyeFwkBlock;->BINDER_TRANS_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v7

    .line 421
    :cond_0
    move v9, v8

    move-object v8, v0

    .end local v0    # "file":Ljava/io/File;
    .local v8, "file":Ljava/io/File;
    .local v9, "isHwTransLog":Z
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    .line 422
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v0, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v5, v0

    .line 423
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v0

    .line 424
    const-string v0, "[\\s\\S]*\t(\\d+):(\\d+) to (\\d+):(\\d+) code ([0-9a-f]+) wait:(\\d+).(\\d+) s"

    .line 425
    .local v0, "regEx":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 426
    const-string v10, "outgoing transaction .+ from (\\d+):(\\d+) to (\\d+):(\\d+) code ([0-9a-f]+)"

    move-object v0, v10

    goto :goto_0

    .line 428
    :cond_1
    move-object v10, v0

    .end local v0    # "regEx":Ljava/lang/String;
    .local v10, "regEx":Ljava/lang/String;
    :goto_0
    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v11, v0

    .line 429
    .local v11, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "readLine":Ljava/lang/String;
    :goto_1
    move-object v12, v0

    .line 430
    .end local v0    # "readLine":Ljava/lang/String;
    .local v12, "readLine":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 431
    move/from16 v13, p1

    :try_start_1
    invoke-direct {v1, v12, v13, v11}, Landroid/zrhung/appeye/AppEyeFwkBlock;->parseTransactionLine(Ljava/lang/String;ILjava/util/regex/Pattern;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v7, v0

    .line 432
    if-lez v7, :cond_2

    .line 433
    nop

    .line 442
    nop

    .line 443
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 444
    const/4 v2, 0x0

    goto :goto_2

    .line 446
    :catch_0
    move-exception v0

    move-object v14, v0

    .line 447
    .local v0, "e":Ljava/io/IOException;
    const-string v14, "AppEyeFwkBlock"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 448
    :goto_2
    nop

    .line 450
    :goto_3
    nop

    .line 451
    :try_start_3
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 452
    const/4 v5, 0x0

    goto :goto_4

    .line 454
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 456
    :goto_4
    nop

    .line 458
    :goto_5
    nop

    .line 459
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 460
    const/4 v3, 0x0

    goto :goto_6

    .line 462
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 463
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 464
    :goto_6
    nop

    .line 433
    :goto_7
    return v7

    .line 430
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v12    # "readLine":Ljava/lang/String;
    .local v0, "readLine":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    .line 429
    move-object/from16 v1, p0

    goto :goto_1

    .line 438
    .end local v0    # "readLine":Ljava/lang/String;
    .end local v10    # "regEx":Ljava/lang/String;
    .end local v11    # "pattern":Ljava/util/regex/Pattern;
    :catch_3
    move-exception v0

    goto :goto_d

    .line 436
    :catch_4
    move-exception v0

    goto/16 :goto_12

    .line 442
    :cond_3
    move/from16 v13, p1

    .line 443
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 444
    const/4 v2, 0x0

    goto :goto_8

    .line 446
    :catch_5
    move-exception v0

    move-object v1, v0

    .line 447
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 448
    :goto_8
    nop

    .line 450
    :goto_9
    nop

    .line 451
    :try_start_7
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 452
    const/4 v5, 0x0

    goto :goto_a

    .line 454
    :catch_6
    move-exception v0

    move-object v1, v0

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 456
    :goto_a
    nop

    .line 458
    :goto_b
    nop

    .line 459
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 460
    const/4 v3, 0x0

    goto/16 :goto_19

    .line 462
    :catch_7
    move-exception v0

    move-object v1, v0

    .line 463
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_18

    .line 441
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move/from16 v13, p1

    :goto_c
    move-object v1, v0

    goto/16 :goto_1b

    .line 438
    :catch_8
    move-exception v0

    move/from16 v13, p1

    .line 439
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_d
    :try_start_9
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 442
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_4

    .line 443
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 444
    const/4 v2, 0x0

    goto :goto_e

    .line 446
    :catch_9
    move-exception v0

    move-object v1, v0

    .line 447
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 448
    :cond_4
    :goto_e
    nop

    .line 450
    :goto_f
    if-eqz v5, :cond_5

    .line 451
    :try_start_b
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 452
    const/4 v5, 0x0

    goto :goto_10

    .line 454
    :catch_a
    move-exception v0

    move-object v1, v0

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 456
    :cond_5
    :goto_10
    nop

    .line 458
    :goto_11
    if-eqz v3, :cond_8

    .line 459
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_17

    .line 462
    :catch_b
    move-exception v0

    move-object v1, v0

    .line 463
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_18

    .line 436
    .end local v0    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v0

    move/from16 v13, p1

    .line 437
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_12
    :try_start_d
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FileNotFoundException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 442
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_6

    .line 443
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 444
    const/4 v2, 0x0

    goto :goto_13

    .line 446
    :catch_d
    move-exception v0

    move-object v1, v0

    .line 447
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_14

    .line 448
    :cond_6
    :goto_13
    nop

    .line 450
    :goto_14
    if-eqz v5, :cond_7

    .line 451
    :try_start_f
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    .line 452
    const/4 v5, 0x0

    goto :goto_15

    .line 454
    :catch_e
    move-exception v0

    move-object v1, v0

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_16

    .line 456
    :cond_7
    :goto_15
    nop

    .line 458
    :goto_16
    if-eqz v3, :cond_8

    .line 459
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 460
    :goto_17
    const/4 v0, 0x0

    .line 464
    .end local v3    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    move-object v3, v0

    goto :goto_19

    .line 462
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_f
    move-exception v0

    move-object v1, v0

    .line 463
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AppEyeFwkBlock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    :goto_18
    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1a

    .line 464
    :cond_8
    :goto_19
    nop

    .line 466
    :goto_1a
    return v7

    .line 441
    :catchall_1
    move-exception v0

    goto/16 :goto_c

    .line 442
    :goto_1b
    if-eqz v2, :cond_9

    .line 443
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 444
    const/4 v2, 0x0

    goto :goto_1c

    .line 446
    :catch_10
    move-exception v0

    move-object v10, v0

    .line 447
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "AppEyeFwkBlock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1d

    .line 448
    :cond_9
    :goto_1c
    nop

    .line 450
    :goto_1d
    if-eqz v5, :cond_a

    .line 451
    :try_start_12
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11

    .line 452
    const/4 v5, 0x0

    goto :goto_1e

    .line 454
    :catch_11
    move-exception v0

    move-object v10, v0

    .line 455
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "AppEyeFwkBlock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1f

    .line 456
    :cond_a
    :goto_1e
    nop

    .line 458
    :goto_1f
    if-eqz v3, :cond_b

    .line 459
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_12

    .line 460
    const/4 v3, 0x0

    goto :goto_20

    .line 462
    :catch_12
    move-exception v0

    move-object v10, v0

    .line 463
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AppEyeFwkBlock"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 464
    :cond_b
    :goto_20
    throw v1
.end method

.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 2
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 203
    const-string v0, "monitor"

    invoke-virtual {p1, v0}, Landroid/zrhung/ZrHungData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, "monitor":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, v0}, Landroid/zrhung/appeye/AppEyeFwkBlock;->addMonitor(Ljava/lang/Object;)V

    .line 207
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getLockOwnerPid(Ljava/lang/Object;)I
    .locals 5
    .param p1, "lock"    # Ljava/lang/Object;

    .line 367
    if-nez p1, :cond_0

    .line 368
    const/4 v0, -0x1

    return v0

    .line 370
    :cond_0
    invoke-static {p1}, Ljava/lang/Thread;->getLockOwnerThreadId(Ljava/lang/Object;)I

    move-result v0

    .line 371
    .local v0, "lock_holder_tid":I
    invoke-virtual {p0, v0}, Landroid/zrhung/appeye/AppEyeFwkBlock;->catchBadproc(I)I

    move-result v1

    .line 373
    .local v1, "pid":I
    const-string v2, "AppEyeFwkBlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blocking in thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remote:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v1
.end method

.method public run()V
    .locals 6

    .line 312
    :goto_0
    monitor-enter p0

    .line 314
    :try_start_0
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeFwkBlock;->getConfigure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    goto :goto_1

    .line 362
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "AppEyeFwkBlock"

    const-string v2, "getconfig exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-boolean v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->enabled:Z

    if-nez v0, :cond_0

    .line 320
    const-string v0, "AppEyeFwkBlock"

    const-string v1, "the function is not enabled, quit"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    monitor-exit p0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    .local v0, "checkerSize":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 325
    iget-object v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;

    .line 326
    .local v3, "hc":Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;
    invoke-virtual {v3}, Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;->scheduleCheckLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    .end local v3    # "hc":Landroid/zrhung/appeye/AppEyeFwkBlock$HandlerChecker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 330
    .end local v2    # "i":I
    :cond_1
    :try_start_2
    iget-wide v2, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->checkInterval:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    nop

    .line 336
    :try_start_3
    invoke-direct {p0}, Landroid/zrhung/appeye/AppEyeFwkBlock;->evaluateCheckerCompletionLocked()I

    move-result v2

    .line 338
    .local v2, "state":I
    if-nez v2, :cond_3

    .line 339
    iget-boolean v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->isFirstOverdue:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->freezeHappened:Z

    if-nez v3, :cond_2

    .line 340
    const-string v3, "AppEyeFwkBlock"

    const-string v4, "systemserver recover happend"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/16 v3, 0x120

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4, v4}, Landroid/zrhung/appeye/AppEyeFwkBlock;->sendAppEyeEvent(SLandroid/zrhung/ZrHungData;Ljava/lang/String;Ljava/lang/String;)Z

    .line 343
    :cond_2
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->freezeHappened:Z

    .line 344
    iput-boolean v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->isFirstOverdue:Z

    .line 345
    const/4 v1, -0x1

    iput v1, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mLastBlockedTid:I

    goto :goto_3

    .line 346
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 347
    const-string v4, "AppEyeFwkBlock"

    const-string v5, "systemserver overdue happend"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-boolean v4, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->isFirstOverdue:Z

    if-nez v4, :cond_4

    .line 349
    const-string v1, "AppEyeFwkBlock"

    const-string v4, "systemserver first overdue"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->isFirstOverdue:Z

    .line 351
    const/16 v1, 0x10e

    invoke-direct {p0, v1, v3}, Landroid/zrhung/appeye/AppEyeFwkBlock;->reportFreeze(SZ)V

    .line 352
    monitor-exit p0

    goto :goto_0

    .line 354
    :cond_4
    iget-boolean v4, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->freezeHappened:Z

    if-nez v4, :cond_5

    .line 355
    const-string v4, "AppEyeFwkBlock"

    const-string v5, "systemserver freeze happened"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput-boolean v3, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->freezeHappened:Z

    .line 357
    const/16 v3, 0x10f

    invoke-direct {p0, v3, v1}, Landroid/zrhung/appeye/AppEyeFwkBlock;->reportFreeze(SZ)V

    goto :goto_3

    .line 359
    :cond_5
    const-string v1, "AppEyeFwkBlock"

    const-string v3, "freeze happened agin, don\'t repeat report"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v0    # "checkerSize":I
    .end local v2    # "state":I
    :cond_6
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    .line 331
    .restart local v0    # "checkerSize":I
    :catch_1
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "AppEyeFwkBlock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error msg :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    monitor-exit p0

    goto/16 :goto_0

    .line 362
    .end local v0    # "checkerSize":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public start(Landroid/zrhung/ZrHungData;)Z
    .locals 2
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 193
    sget-object v0, Landroid/zrhung/appeye/AppEyeFwkBlock;->sAppEyeFwkBlock:Landroid/zrhung/appeye/AppEyeFwkBlock;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Landroid/zrhung/appeye/AppEyeFwkBlock;->sAppEyeFwkBlock:Landroid/zrhung/appeye/AppEyeFwkBlock;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mAppEyeFwkBlockThread:Ljava/lang/Thread;

    .line 195
    iget-object v0, p0, Landroid/zrhung/appeye/AppEyeFwkBlock;->mAppEyeFwkBlockThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
