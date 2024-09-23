.class public final Landroid/zrhung/watchpoint/SysHungScreenOn;
.super Landroid/zrhung/ZrHungImpl;
.source "SysHungScreenOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/zrhung/watchpoint/SysHungScreenOn$ScreenOnCheckHandler;
    }
.end annotation


# static fields
.field public static final HUNG_CONFIG_ENABLE:Ljava/lang/String; = "1"

.field public static final MESSAGE_CHECK_SCREENON:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ZrHung.SysHungScreenOn"

.field private static mSysHungScreenOn:Landroid/zrhung/watchpoint/SysHungScreenOn;


# instance fields
.field private mHungConfig:Landroid/util/ZRHung$HungConfig;

.field private mHungConfigEnable:Ljava/lang/String;

.field private mHungConfigStatus:I

.field private mScreenODelayTime:I

.field private mScreenOnCheckHandler:Landroid/os/Handler;

.field private mScreenOnInfo:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mSysHungScreenOn:Landroid/zrhung/watchpoint/SysHungScreenOn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "wpName"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Landroid/zrhung/ZrHungImpl;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnInfo:Ljava/lang/StringBuilder;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfigStatus:I

    .line 48
    const-string v0, "null"

    iput-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfigEnable:Ljava/lang/String;

    .line 49
    const/16 v0, 0x1388

    iput v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenODelayTime:I

    .line 53
    new-instance v0, Landroid/zrhung/watchpoint/SysHungScreenOn$ScreenOnCheckHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/zrhung/watchpoint/SysHungScreenOn$ScreenOnCheckHandler;-><init>(Landroid/zrhung/watchpoint/SysHungScreenOn;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnCheckHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Landroid/zrhung/watchpoint/SysHungScreenOn;
    .locals 2
    .param p0, "wpName"    # Ljava/lang/String;

    const-class v0, Landroid/zrhung/watchpoint/SysHungScreenOn;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Landroid/zrhung/watchpoint/SysHungScreenOn;->mSysHungScreenOn:Landroid/zrhung/watchpoint/SysHungScreenOn;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Landroid/zrhung/watchpoint/SysHungScreenOn;

    invoke-direct {v1, p0}, Landroid/zrhung/watchpoint/SysHungScreenOn;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/zrhung/watchpoint/SysHungScreenOn;->mSysHungScreenOn:Landroid/zrhung/watchpoint/SysHungScreenOn;

    .line 60
    :cond_0
    sget-object v1, Landroid/zrhung/watchpoint/SysHungScreenOn;->mSysHungScreenOn:Landroid/zrhung/watchpoint/SysHungScreenOn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 56
    .end local p0    # "wpName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isBootCompleted()Z
    .locals 3

    .line 272
    const-string v0, "1"

    const-string v1, "sys.boot_completed"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 110
    const/4 v0, -0x1

    .line 112
    .local v0, "value":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "ZrHung.SysHungScreenOn"

    const-string v3, "parseInt NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized addInfo(Landroid/zrhung/ZrHungData;)Z
    .locals 4
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    monitor-enter p0

    .line 252
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/zrhung/watchpoint/SysHungScreenOn;->isBootCompleted()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 253
    monitor-exit p0

    return v0

    .line 255
    :cond_0
    const/16 v1, 0x2710

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 256
    const-string v1, "ZrHung.SysHungScreenOn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permission not allowed. uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit p0

    return v0

    .line 259
    :cond_1
    :try_start_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "nowTime":Ljava/lang/String;
    iget-object v2, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnInfo:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "addScreenOnInfo"

    invoke-virtual {p1, v3}, Landroid/zrhung/ZrHungData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 267
    .end local v1    # "nowTime":Ljava/lang/String;
    :cond_2
    nop

    .line 268
    monitor-exit p0

    return v0

    .line 251
    .end local p1    # "args":Landroid/zrhung/ZrHungData;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 264
    .restart local p1    # "args":Landroid/zrhung/ZrHungData;
    :catch_0
    move-exception v1

    .line 265
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "ZrHung.SysHungScreenOn"

    const-string v3, "addInfo exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    monitor-exit p0

    return v0

    .line 251
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local p1    # "args":Landroid/zrhung/ZrHungData;
    :goto_0
    monitor-exit p0

    .end local p0    # "this":Landroid/zrhung/watchpoint/SysHungScreenOn;
    throw p1
.end method

.method public cancelCheck(Landroid/zrhung/ZrHungData;)Z
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public check(Landroid/zrhung/ZrHungData;)Z
    .locals 1
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/zrhung/ZrHungData;)I
    .locals 4
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 90
    :try_start_0
    iget-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfigStatus:I

    if-ne v0, v2, :cond_1

    .line 91
    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/util/ZRHung;->getHungConfig(S)Landroid/util/ZRHung$HungConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    .line 92
    iget-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    iget v0, v0, Landroid/util/ZRHung$HungConfig;->status:I

    iput v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfigStatus:I

    .line 94
    iget-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    iget-object v0, v0, Landroid/util/ZRHung$HungConfig;->value:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "value":[Ljava/lang/String;
    aget-object v3, v0, v1

    iput-object v3, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfigEnable:Ljava/lang/String;

    .line 96
    array-length v3, v0

    if-le v3, v2, :cond_1

    .line 97
    aget-object v2, v0, v2

    invoke-direct {p0, v2}, Landroid/zrhung/watchpoint/SysHungScreenOn;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenODelayTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "value":[Ljava/lang/String;
    :cond_1
    nop

    .line 105
    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ZrHung.SysHungScreenOn"

    const-string v2, "init exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, -0x2

    return v1
.end method

.method public query()Landroid/zrhung/ZrHungData;
    .locals 1

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendEvent(Landroid/zrhung/ZrHungData;)Z
    .locals 5
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 209
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfig:Landroid/util/ZRHung$HungConfig;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 210
    iget v1, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfigStatus:I

    if-nez v1, :cond_1

    const-string v1, "1"

    iget-object v3, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mHungConfigEnable:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const/16 v1, 0xb

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/util/ZRHung;->sendHungEvent(SLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 212
    .local v1, "result":Z
    if-nez v1, :cond_0

    .line 213
    const-string v3, "ZrHung.SysHungScreenOn"

    const-string v4, " ZRHung.sendHungEvent failed!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    const-string v3, "ZrHung.SysHungScreenOn"

    iget-object v4, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v2

    .line 219
    .end local v1    # "result":Z
    :cond_1
    iget-object v1, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnInfo:Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return v2

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "ZrHung.SysHungScreenOn"

    const-string v3, "ScreenOnCheckHandler exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v0
.end method

.method public start(Landroid/zrhung/ZrHungData;)Z
    .locals 5
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/zrhung/watchpoint/SysHungScreenOn;->init(Landroid/zrhung/ZrHungData;)I

    .line 132
    invoke-direct {p0}, Landroid/zrhung/watchpoint/SysHungScreenOn;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    return v1

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnCheckHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnCheckHandler:Landroid/os/Handler;

    iget v3, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenODelayTime:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    const-string v0, "ZrHung.SysHungScreenOn"

    const-string v2, "SysHungScreenOn start"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "ZrHung.SysHungScreenOn"

    const-string v3, "start exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v1
.end method

.method public stop(Landroid/zrhung/ZrHungData;)Z
    .locals 4
    .param p1, "args"    # Landroid/zrhung/ZrHungData;

    .line 183
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/zrhung/watchpoint/SysHungScreenOn;->isBootCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    return v0

    .line 186
    :cond_0
    iget-object v1, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnCheckHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnCheckHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    const-string v1, "ZrHung.SysHungScreenOn"

    const-string v2, "SysHungScreenOn stop"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1
    iget-object v1, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnInfo:Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/zrhung/watchpoint/SysHungScreenOn;->mScreenOnInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    const/4 v0, 0x1

    return v0

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "ZrHung.SysHungScreenOn"

    const-string v3, "stop exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v0
.end method
