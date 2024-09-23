.class Lcom/huawei/displayengine/BrightnessTrainingProcessor;
.super Ljava/lang/Object;
.source "BrigntnessTrainingProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DE J BrightnessTrainingProcessor"


# instance fields
.field private mAlgo:Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;

.field private final mContext:Landroid/content/Context;

.field private mLockAlgo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->mLockAlgo:Ljava/lang/Object;

    .line 31
    const-string v0, "DE J BrightnessTrainingProcessor"

    const-string v1, "BrightnessTrainingProcessor enter"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private getBrightnessTrainingAlgo()Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "DE J BrightnessTrainingProcessor"

    const-string v1, "mContext is null, returned!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->mLockAlgo:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->mAlgo:Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;

    if-nez v1, :cond_1

    .line 42
    new-instance v1, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;

    iget-object v2, p0, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->mAlgo:Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;

    .line 44
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v0, p0, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->mAlgo:Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;

    return-object v0

    .line 44
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public brightnessTrainingAbort()I
    .locals 4

    .line 63
    const-string v0, "DE J BrightnessTrainingProcessor"

    const-string v1, "brightnessTrainingAbort "

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->getBrightnessTrainingAlgo()Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;

    move-result-object v0

    .line 65
    .local v0, "algo":Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;
    if-nez v0, :cond_0

    .line 66
    const-string v1, "DE J BrightnessTrainingProcessor"

    const-string v2, "getBrightnessTrainingAlgo failed! "

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, -0x1

    return v1

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->abortTraining()I

    move-result v1

    .line 70
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 71
    const-string v2, "DE J BrightnessTrainingProcessor"

    const-string v3, "algo.brightnessTrainingAbort failed! "

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    return v1
.end method

.method public brightnessTrainingProcess(Ljava/lang/String;Ljava/util/Map;)I
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 49
    .local p2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "DE J BrightnessTrainingProcessor"

    const-string v1, "brightnessTrainingProcess "

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-direct {p0}, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->getBrightnessTrainingAlgo()Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;

    move-result-object v0

    .line 51
    .local v0, "algo":Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;
    if-nez v0, :cond_0

    .line 52
    const-string v1, "DE J BrightnessTrainingProcessor"

    const-string v2, "getBrightnessTrainingAlgo failed! "

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, -0x1

    return v1

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->processTraining()I

    move-result v1

    .line 56
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 57
    const-string v2, "DE J BrightnessTrainingProcessor"

    const-string v3, "algo.processTraining failed! "

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    return v1
.end method
