.class public Lcom/huawei/displayengine/HBMSceneFilter;
.super Ljava/lang/Object;
.source "HBMSceneFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DE J HBMSceneFilter"


# instance fields
.field private mBacklightLevel:I

.field private mDimming:Z

.field private mDimmingThreshould:I

.field private mDisplayEngineManager:Lcom/huawei/displayengine/DisplayEngineManager;

.field private mDurationThreshould:F

.field private volatile mInitialized:Z

.field private mLock:Ljava/lang/Object;

.field private mSpeedThreshould:F

.field private mSupport:Z

.field private mThreshould:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mInitialized:Z

    .line 11
    iput-boolean v0, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSupport:Z

    .line 12
    const/16 v1, 0x1c56

    iput v1, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mThreshould:I

    .line 13
    const/16 v1, 0xf51

    iput v1, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimmingThreshould:I

    .line 14
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDurationThreshould:F

    .line 15
    const/4 v1, 0x0

    iput v1, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSpeedThreshould:F

    .line 16
    iput v0, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mBacklightLevel:I

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimming:Z

    .line 21
    new-instance v0, Lcom/huawei/displayengine/DisplayEngineManager;

    invoke-direct {v0}, Lcom/huawei/displayengine/DisplayEngineManager;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDisplayEngineManager:Lcom/huawei/displayengine/DisplayEngineManager;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mLock:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method private initialize()V
    .locals 7

    .line 26
    iget-boolean v0, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mInitialized:Z

    if-nez v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-boolean v1, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mInitialized:Z

    if-nez v1, :cond_2

    .line 29
    const/4 v1, 0x3

    new-array v1, v1, [B

    .line 30
    .local v1, "info":[B
    iget-object v2, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDisplayEngineManager:Lcom/huawei/displayengine/DisplayEngineManager;

    const/16 v3, 0x19

    array-length v4, v1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v1, v4}, Lcom/huawei/displayengine/DisplayEngineManager;->getEffect(II[BI)I

    move-result v2

    .line 31
    .local v2, "ret":I
    if-eqz v2, :cond_0

    .line 32
    const-string v3, "DE J HBMSceneFilter"

    const-string v4, "Failed to get HBM information and use default value!"

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_0
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    if-ne v4, v5, :cond_1

    move v3, v5

    nop

    :cond_1
    iput-boolean v3, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSupport:Z

    .line 35
    aget-byte v3, v1, v5

    const/16 v4, 0xff

    and-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x2710

    div-int/2addr v3, v4

    iput v3, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mThreshould:I

    .line 36
    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x2710

    div-int/2addr v3, v4

    iput v3, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimmingThreshould:I

    .line 37
    iget v3, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mThreshould:I

    iget v4, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimmingThreshould:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDurationThreshould:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSpeedThreshould:F

    .line 38
    const-string v3, "DE J HBMSceneFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get information from hal: mSupport="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSupport:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mThreshould="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mThreshould:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mDimmingThreshould="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimmingThreshould:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mSpeedThreshould="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSpeedThreshould:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    iput-boolean v5, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mInitialized:Z

    .line 42
    .end local v1    # "info":[B
    .end local v2    # "ret":I
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public check(II)Z
    .locals 2
    .param p1, "scene"    # I
    .param p2, "action"    # I

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "bypass":Z
    invoke-direct {p0}, Lcom/huawei/displayengine/HBMSceneFilter;->initialize()V

    .line 49
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    .line 50
    iget-boolean v1, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSupport:Z

    if-eqz v1, :cond_0

    .line 51
    shr-int/lit8 v1, p2, 0x10

    iput v1, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mBacklightLevel:I

    .line 54
    :cond_0
    return v0
.end method

.method public setData(Landroid/os/Bundle;)I
    .locals 10
    .param p1, "data"    # Landroid/os/Bundle;

    .line 58
    invoke-direct {p0}, Lcom/huawei/displayengine/HBMSceneFilter;->initialize()V

    .line 59
    iget-boolean v0, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 60
    const-string v0, "target"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "target":I
    const-string v2, "rate"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 62
    .local v2, "rate":I
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 63
    .local v3, "duration":F
    const-string v4, "DE J HBMSceneFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hbm_dimming: target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " backlight10000="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mBacklightLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v4, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mThreshould:I

    const/16 v5, 0x1c

    if-lt v0, v4, :cond_0

    .line 65
    iget-boolean v4, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimming:Z

    if-nez v4, :cond_4

    .line 66
    const-string v4, "DE J HBMSceneFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hbm_dimming on: target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v4, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDisplayEngineManager:Lcom/huawei/displayengine/DisplayEngineManager;

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Lcom/huawei/displayengine/DisplayEngineManager;->setScene(II)I

    .line 68
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimming:Z

    goto/16 :goto_2

    .line 71
    :cond_0
    iget v4, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mBacklightLevel:I

    iget v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mThreshould:I

    if-lt v4, v6, :cond_4

    .line 72
    const/4 v4, 0x1

    .line 73
    .local v4, "dimming":Z
    if-eqz v2, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimmingThreshould:I

    if-ge v0, v6, :cond_3

    .line 77
    iget v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mBacklightLevel:I

    sub-int/2addr v6, v0

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 78
    .local v6, "speed":F
    const-string v7, "DE J HBMSceneFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gz hbm_dimming check speed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " mSpeedThreshould="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSpeedThreshould:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v7, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mSpeedThreshould:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 80
    const/4 v4, 0x0

    .end local v6    # "speed":F
    goto :goto_1

    .line 75
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 83
    :cond_3
    :goto_1
    iget-boolean v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimming:Z

    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    .line 84
    const-string v6, "DE J HBMSceneFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gz hbm_dimming off: target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " rate="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " backlight10000="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mBacklightLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v6, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDisplayEngineManager:Lcom/huawei/displayengine/DisplayEngineManager;

    const/16 v7, 0x11

    invoke-virtual {v6, v5, v7}, Lcom/huawei/displayengine/DisplayEngineManager;->setScene(II)I

    .line 86
    iput-boolean v1, p0, Lcom/huawei/displayengine/HBMSceneFilter;->mDimming:Z

    .line 91
    .end local v0    # "target":I
    .end local v2    # "rate":I
    .end local v3    # "duration":F
    .end local v4    # "dimming":Z
    :cond_4
    :goto_2
    return v1
.end method
