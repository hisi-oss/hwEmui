.class public Landroid/rms/iaware/HwIAwareHandler;
.super Ljava/lang/Object;
.source "HwIAwareHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwIAwareHandler"

.field private static final WECHAT_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final WECHAT_ATTR_TAG:Ljava/lang/String; = "messageTag"

.field private static volatile mHwIAwareHandler:Landroid/rms/iaware/HwIAwareHandler;


# instance fields
.field private mIsOptEnabled:Z

.field private mLuckyMoneyTag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/rms/iaware/HwIAwareHandler;->mIsOptEnabled:Z

    .line 32
    return-void
.end method

.method private checkoutConfig()V
    .locals 4

    .line 35
    iget-object v0, p0, Landroid/rms/iaware/HwIAwareHandler;->mLuckyMoneyTag:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/rms/iaware/FastgrabConfigReader;->getInstance(Landroid/content/Context;)Landroid/rms/iaware/FastgrabConfigReader;

    move-result-object v0

    .line 37
    .local v0, "fastgrabConfigReader":Landroid/rms/iaware/FastgrabConfigReader;
    if-eqz v0, :cond_1

    .line 38
    const-string v1, "switch"

    invoke-virtual {v0, v1}, Landroid/rms/iaware/FastgrabConfigReader;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Landroid/rms/iaware/HwIAwareHandler;->mIsOptEnabled:Z

    .line 39
    const-string v1, "messageTag"

    invoke-virtual {v0, v1}, Landroid/rms/iaware/FastgrabConfigReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/rms/iaware/HwIAwareHandler;->mLuckyMoneyTag:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Landroid/rms/iaware/HwIAwareHandler;->mLuckyMoneyTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/rms/iaware/HwIAwareHandler;->mLuckyMoneyTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    .line 42
    iput-boolean v2, p0, Landroid/rms/iaware/HwIAwareHandler;->mIsOptEnabled:Z

    .line 43
    const-string v1, "HwIAwareHandler"

    const-string v2, "LuckyMoneyTag is too short!"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .end local v0    # "fastgrabConfigReader":Landroid/rms/iaware/FastgrabConfigReader;
    :cond_1
    return-void
.end method

.method public static getInstance()Landroid/rms/iaware/HwIAwareHandler;
    .locals 2

    .line 20
    sget-object v0, Landroid/rms/iaware/HwIAwareHandler;->mHwIAwareHandler:Landroid/rms/iaware/HwIAwareHandler;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Landroid/rms/iaware/HwIAwareHandler;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Landroid/rms/iaware/HwIAwareHandler;->mHwIAwareHandler:Landroid/rms/iaware/HwIAwareHandler;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Landroid/rms/iaware/HwIAwareHandler;

    invoke-direct {v1}, Landroid/rms/iaware/HwIAwareHandler;-><init>()V

    sput-object v1, Landroid/rms/iaware/HwIAwareHandler;->mHwIAwareHandler:Landroid/rms/iaware/HwIAwareHandler;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Landroid/rms/iaware/HwIAwareHandler;->mHwIAwareHandler:Landroid/rms/iaware/HwIAwareHandler;

    return-object v0
.end method


# virtual methods
.method public resetDelayMills(Landroid/os/Message;J)J
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .line 50
    invoke-direct {p0}, Landroid/rms/iaware/HwIAwareHandler;->checkoutConfig()V

    .line 51
    iget-boolean v0, p0, Landroid/rms/iaware/HwIAwareHandler;->mIsOptEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/rms/iaware/HwIAwareHandler;->mLuckyMoneyTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/rms/iaware/HwIAwareHandler;->mLuckyMoneyTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "HwIAwareHandler"

    const-string v1, "LuckyMoney Catched!"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-wide/16 v0, 0x0

    return-wide v0

    .line 57
    :cond_0
    return-wide p2
.end method
