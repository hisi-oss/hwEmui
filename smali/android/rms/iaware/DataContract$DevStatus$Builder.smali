.class public final Landroid/rms/iaware/DataContract$DevStatus$Builder;
.super Landroid/rms/iaware/DataContract$BaseBuilder;
.source "DataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/DataContract$DevStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Landroid/rms/iaware/DataContract$BaseBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAlarm(ILjava/lang/String;)Landroid/rms/iaware/DataContract$DevStatus$Builder;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 383
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 384
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "alarmTag"

    invoke-virtual {v0, v1, p2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Landroid/rms/iaware/DataContract$DevStatus$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "info"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-object p0
.end method

.method public addBatterystate(IZZ)Landroid/rms/iaware/DataContract$DevStatus$Builder;
    .locals 4
    .param p1, "plugType"    # I
    .param p2, "isBatteryPlugged"    # Z
    .param p3, "isBatterCharging"    # Z

    .line 338
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 339
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "PlugType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v1, "batterPlugged"

    if-eqz p2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "batterCharging"

    if-eqz p3, :cond_1

    const-string v2, "1"

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Landroid/rms/iaware/DataContract$DevStatus$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "info"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-object p0
.end method

.method public addDeviceIdle(ILjava/lang/String;)Landroid/rms/iaware/DataContract$DevStatus$Builder;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "activeReason"    # Ljava/lang/String;

    .line 350
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 351
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "deviceIdleActiveReason"

    invoke-virtual {v0, v1, p2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Landroid/rms/iaware/DataContract$DevStatus$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "info"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-object p0
.end method

.method public addJob(ILjava/lang/String;)Landroid/rms/iaware/DataContract$DevStatus$Builder;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 408
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 409
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "jobName"

    invoke-virtual {v0, v1, p2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Landroid/rms/iaware/DataContract$DevStatus$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "info"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-object p0
.end method

.method public addNetworkType(ILjava/lang/String;)Landroid/rms/iaware/DataContract$DevStatus$Builder;
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 327
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 328
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "networkType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "networkState"

    invoke-virtual {v0, v1, p2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Landroid/rms/iaware/DataContract$DevStatus$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "info"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-object p0
.end method

.method public addSensor(II)Landroid/rms/iaware/DataContract$DevStatus$Builder;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "sensorId"    # I

    .line 361
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 362
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "sensorId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Landroid/rms/iaware/DataContract$DevStatus$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "info"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-object p0
.end method

.method public addUid(I)Landroid/rms/iaware/DataContract$DevStatus$Builder;
    .locals 4
    .param p1, "uid"    # I

    .line 316
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 317
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Landroid/rms/iaware/DataContract$DevStatus$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "info"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-object p0
.end method

.method public addVibrator(IJ)Landroid/rms/iaware/DataContract$DevStatus$Builder;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .line 372
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 373
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "duration"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Landroid/rms/iaware/DataContract$DevStatus$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "info"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-object p0
.end method

.method public addWakeLock(IILjava/lang/String;I)Landroid/rms/iaware/DataContract$DevStatus$Builder;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "wakeLockType"    # I

    .line 395
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 396
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "pid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v1, "wakeLockTag"

    invoke-virtual {v0, v1, p3}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "wakeLockType"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Landroid/rms/iaware/DataContract$DevStatus$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "info"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-object p0
.end method

.method public build()Landroid/rms/iaware/CollectData;
    .locals 1

    .line 309
    sget-object v0, Landroid/rms/iaware/AwareConstant$ResourceType;->RES_DEV_STATUS:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v0}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/rms/iaware/DataContract$BaseBuilder;->build(I)Landroid/rms/iaware/CollectData;

    move-result-object v0

    return-object v0
.end method
