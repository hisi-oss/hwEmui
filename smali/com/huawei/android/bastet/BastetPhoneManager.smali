.class public Lcom/huawei/android/bastet/BastetPhoneManager;
.super Lcom/huawei/android/bastet/BastetManager;
.source "BastetPhoneManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BastetPhoneManager"

.field private static sInstance:Lcom/huawei/android/bastet/BastetPhoneManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/huawei/android/bastet/BastetPhoneManager;

    invoke-direct {v0}, Lcom/huawei/android/bastet/BastetPhoneManager;-><init>()V

    sput-object v0, Lcom/huawei/android/bastet/BastetPhoneManager;->sInstance:Lcom/huawei/android/bastet/BastetPhoneManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/huawei/android/bastet/BastetManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/android/bastet/BastetPhoneManager;
    .locals 2

    const-class v0, Lcom/huawei/android/bastet/BastetPhoneManager;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/huawei/android/bastet/BastetPhoneManager;->sInstance:Lcom/huawei/android/bastet/BastetPhoneManager;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/huawei/android/bastet/BastetPhoneManager;

    invoke-direct {v1}, Lcom/huawei/android/bastet/BastetPhoneManager;-><init>()V

    sput-object v1, Lcom/huawei/android/bastet/BastetPhoneManager;->sInstance:Lcom/huawei/android/bastet/BastetPhoneManager;

    .line 36
    :cond_0
    sget-object v1, Lcom/huawei/android/bastet/BastetPhoneManager;->sInstance:Lcom/huawei/android/bastet/BastetPhoneManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public configBstBlackList(I[Ljava/lang/String;[I)I
    .locals 2
    .param p1, "action"    # I
    .param p2, "blacklist"    # [Ljava/lang/String;
    .param p3, "option"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetPhoneManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "BastetPhoneManager"

    const-string v1, "configBstBlackList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "res":I
    return v0

    .line 57
    .end local v0    # "res":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public deleteBstBlackListNum([Ljava/lang/String;)I
    .locals 2
    .param p1, "blacklist"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetPhoneManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "BastetPhoneManager"

    const-string v1, "deleteBstBlackListNum"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "res":I
    return v0

    .line 73
    .end local v0    # "res":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected handleProxyMessage(III)V
    .locals 2
    .param p1, "proxyId"    # I
    .param p2, "err"    # I
    .param p3, "ext"    # I

    .line 110
    const-string v0, "BastetPhoneManager"

    const-string v1, "handleProxyMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method protected onBastetDied()V
    .locals 2

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    sget-object v0, Lcom/huawei/android/bastet/BastetPhoneManager;->sInstance:Lcom/huawei/android/bastet/BastetPhoneManager;

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/bastet/BastetPhoneManager;->sInstance:Lcom/huawei/android/bastet/BastetPhoneManager;

    .line 119
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const-string v0, "BastetPhoneManager"

    const-string v1, "bastetd died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBstBarredRule(I)I
    .locals 2
    .param p1, "rule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetPhoneManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "BastetPhoneManager"

    const-string v1, "setBstBarredRule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "res":I
    return v0

    .line 89
    .end local v0    # "res":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setBstBarredSwitch(I)I
    .locals 2
    .param p1, "enable_flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetPhoneManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "BastetPhoneManager"

    const-string v1, "setBstBarredSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "res":I
    return v0

    .line 105
    .end local v0    # "res":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
