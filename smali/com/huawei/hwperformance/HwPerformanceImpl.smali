.class public final Lcom/huawei/hwperformance/HwPerformanceImpl;
.super Ljava/lang/Object;
.source "HwPerformanceImpl.java"

# interfaces
.implements Lcom/huawei/hwperformance/HwPerformance;


# static fields
.field private static final B_CORE_CPUS:Ljava/lang/String;

.field private static final HWDBG:Z

.field private static final L_CORE_CPUS:Ljava/lang/String;

.field static final PERF_CONFIG_GET:I = 0x3

.field static final PERF_CONFIG_SET:I = 0x2

.field static final PERF_EVENT:I = 0x1

.field private static final PERF_TAG_B_CPU_MAX_CODE:I = 0x40804000

.field private static final PERF_TAG_B_CPU_MIN_CODE:I = 0x40800000

.field private static final PERF_TAG_CTL_CPUS_ON_CODE:I = 0x41000000

.field private static final PERF_TAG_CTL_CPUS_ON_LIMIT_CODE:I = 0x41004000

.field private static final PERF_TAG_L_CPU_MAX_CODE:I = 0x40804100

.field private static final PERF_TAG_L_CPU_MIN_CODE:I = 0x40800100

.field private static final PLATFORM_DEFAULT:I = 0x0

.field private static final PLATFORM_HISI:I = 0x2

.field private static final PLATFORM_QCOM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HwPerformanceImpl"

.field private static mInstance:Lcom/huawei/hwperformance/HwPerformance;

.field private static final mLock:Ljava/lang/Object;

.field private static usingPlatform:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/hwperformance/HwPerformanceImpl;->L_CORE_CPUS:Ljava/lang/String;

    .line 48
    sput-object v0, Lcom/huawei/hwperformance/HwPerformanceImpl;->B_CORE_CPUS:Ljava/lang/String;

    .line 49
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_0

    const-string v0, "HwPerformanceImpl"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hwperformance/HwPerformanceImpl;->mLock:Ljava/lang/Object;

    .line 86
    sput v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-direct {p0}, Lcom/huawei/hwperformance/HwPerformanceImpl;->initUsingPlatform()V

    .line 84
    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/huawei/hwperformance/HwPerformance;
    .locals 2

    const-class v0, Lcom/huawei/hwperformance/HwPerformanceImpl;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->mInstance:Lcom/huawei/hwperformance/HwPerformance;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/huawei/hwperformance/HwPerformanceImpl;

    invoke-direct {v1}, Lcom/huawei/hwperformance/HwPerformanceImpl;-><init>()V

    sput-object v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->mInstance:Lcom/huawei/hwperformance/HwPerformance;

    .line 93
    :cond_0
    sget-object v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->mInstance:Lcom/huawei/hwperformance/HwPerformance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private handleCPUSet(I[I[I)I
    .locals 5
    .param p1, "duration"    # I
    .param p2, "tags"    # [I
    .param p3, "values"    # [I

    .line 388
    const/4 v0, 0x0

    .line 390
    .local v0, "type":I
    sget-boolean v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "HwPerformanceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCPUSet duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", usingPlatform = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    const/4 v1, 0x1

    sget v2, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    if-ne v1, v2, :cond_1

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hwperformance/HwPerformanceImpl;->perfLockCPUSet(I[I[I)I

    move-result v1

    .local v1, "ret":I
    :goto_0
    goto :goto_1

    .line 394
    .end local v1    # "ret":I
    :cond_1
    const/4 v1, 0x2

    sget v2, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    if-ne v1, v2, :cond_2

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hwperformance/HwPerformanceImpl;->perfhubCPUSet(I[I[I)I

    move-result v1

    goto :goto_0

    .line 398
    :cond_2
    const-string v1, "HwPerformanceImpl"

    const-string v2, "handleCPUSet other platform"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, -0x2

    .line 401
    .restart local v1    # "ret":I
    :goto_1
    sget-boolean v2, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "HwPerformanceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCPUSet ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_3
    return v1
.end method

.method private varargs handleEventSet(ILjava/lang/String;[I)I
    .locals 4
    .param p1, "eventId"    # I
    .param p2, "PackageName"    # Ljava/lang/String;
    .param p3, "payload"    # [I

    .line 412
    sget v0, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 414
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hwperformance/HwPerformanceImpl;->perfhubEvent(ILjava/lang/String;[I)I

    move-result v0

    .line 415
    .local v0, "ret":I
    if-eqz v0, :cond_1

    .line 416
    const/4 v0, -0x1

    goto :goto_0

    .line 420
    .end local v0    # "ret":I
    :cond_0
    const/4 v0, -0x2

    .line 422
    .restart local v0    # "ret":I
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "HwPerformanceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventSet ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_2
    return v0
.end method

.method private handleIOSet(ZILjava/lang/String;)I
    .locals 4
    .param p1, "isStart"    # Z
    .param p2, "pid"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;

    .line 369
    const/4 v0, -0x1

    .line 370
    .local v0, "ret":I
    sget v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 371
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hwperformance/HwPerformanceImpl;->perfLockIOSet(ZILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 375
    :cond_0
    const/4 v0, -0x2

    .line 377
    :goto_0
    sget-boolean v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "HwPerformanceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIOSet ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    return v0
.end method

.method private declared-synchronized initUsingPlatform()V
    .locals 5

    monitor-enter p0

    .line 98
    :try_start_0
    sget-object v0, Lcom/huawei/hwperformance/HwPerformanceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    const-string v1, "perfhub"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 100
    .local v1, "service":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 102
    const/4 v2, 0x2

    sput v2, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    goto :goto_0

    .line 105
    :cond_0
    const/4 v2, 0x1

    sput v2, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    .line 107
    :goto_0
    sget-boolean v2, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "HwPerformanceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init using Platform = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v1    # "service":Landroid/os/IBinder;
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/huawei/hwperformance/HwPerformanceImpl;
    throw v0
.end method

.method private isInputInvalid([I[I)Z
    .locals 4
    .param p1, "tags"    # [I
    .param p2, "values"    # [I

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    .line 117
    const-string v1, "HwPerformanceImpl"

    const-string v2, "Input Invalid length not match."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x1

    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 121
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "HwPerformanceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Invalid ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_3
    return v0
.end method

.method private perfLockCPUSet(I[I[I)I
    .locals 9
    .param p1, "duration"    # I
    .param p2, "tags"    # [I
    .param p3, "values"    # [I

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 303
    .local v1, "type":I
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    .line 306
    .local v2, "perf":Landroid/util/BoostFramework;
    const/4 v3, 0x0

    aget v4, p2, v3

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 312
    :pswitch_1
    const v1, 0x40804000    # 4.0078125f

    .line 313
    goto :goto_0

    .line 308
    :pswitch_2
    const/high16 v1, 0x40800000    # 4.0f

    .line 309
    goto :goto_0

    .line 320
    :pswitch_3
    const v1, 0x40804100

    .line 321
    goto :goto_0

    .line 316
    :pswitch_4
    const v1, 0x40800100    # 4.000122f

    .line 317
    nop

    .line 326
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    aget v4, p3, v3

    div-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const/4 v4, 0x1

    aget v5, p3, v4

    if-lez v5, :cond_0

    .line 330
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    aget v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    const/4 v4, 0x2

    aget v5, p3, v4

    if-lez v5, :cond_1

    .line 335
    const v5, 0x41004000    # 8.015625f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    aget v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 339
    .local v4, "valueSize":I
    new-array v5, v4, [I

    .line 340
    .local v5, "param":[I
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 341
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v3

    .line 342
    sget-boolean v6, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "HwPerformanceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "qcom param i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", param[i] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 344
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v2, p1, v5}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result v3

    .line 345
    .local v3, "ret":I
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private perfLockIOSet(ZILjava/lang/String;)I
    .locals 2
    .param p1, "isStart"    # Z
    .param p2, "pid"    # I
    .param p3, "pkg_name"    # Ljava/lang/String;

    .line 356
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    .line 357
    .local v0, "perf":Landroid/util/BoostFramework;
    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {v0, p2, p3}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;)I

    move-result v1

    .local v1, "ret":I
    goto :goto_0

    .line 360
    .end local v1    # "ret":I
    :cond_0
    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfIOPrefetchStop()I

    move-result v1

    .line 362
    .restart local v1    # "ret":I
    :goto_0
    return v1
.end method

.method private perfhubCPUSet(I[I[I)I
    .locals 9
    .param p1, "duration"    # I
    .param p2, "tags"    # [I
    .param p3, "values"    # [I

    .line 233
    const/4 v0, -0x1

    .line 234
    .local v0, "ret":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 237
    .local v2, "type":I
    const/4 v3, 0x0

    if-lez p1, :cond_2

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    aget v4, p2, v3

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 247
    :pswitch_1
    const/4 v2, 0x4

    .line 248
    goto :goto_0

    .line 243
    :pswitch_2
    const/4 v2, 0x3

    .line 244
    goto :goto_0

    .line 255
    :pswitch_3
    const/4 v2, 0x2

    .line 256
    goto :goto_0

    .line 251
    :pswitch_4
    const/4 v2, 0x1

    .line 252
    nop

    .line 261
    :goto_0
    shl-int/lit8 v4, v2, 0x10

    aget v5, p3, v3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 263
    .local v4, "valueSize":I
    new-array v5, v4, [I

    .line 264
    .local v5, "val":[I
    nop

    .local v3, "j":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 265
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v3

    .line 266
    sget-boolean v6, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v6, :cond_0

    const-string v6, "HwPerformanceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hisi val j = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", val[j] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 269
    .end local v3    # "j":I
    :cond_1
    const/16 v3, 0x1000

    const-string v6, "hwperf"

    invoke-direct {p0, v3, v6, v5}, Lcom/huawei/hwperformance/HwPerformanceImpl;->perfhubEvent(ILjava/lang/String;[I)I

    move-result v0

    .line 270
    .end local v4    # "valueSize":I
    .end local v5    # "val":[I
    goto :goto_2

    :cond_2
    if-nez p1, :cond_5

    .line 272
    const/4 v4, 0x3

    new-array v5, v4, [I

    .line 273
    .local v5, "setTags":[I
    new-array v6, v4, [I

    .line 274
    .local v6, "setVals":[I
    aget v7, p2, v3

    aput v7, v5, v3

    .line 275
    aget v7, p3, v3

    aput v7, v6, v3

    .line 276
    aget v3, p3, v4

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-ltz v3, :cond_3

    aget v3, p3, v4

    if-ge v3, v8, :cond_3

    .line 278
    aget v3, p2, v4

    aput v3, v5, v7

    .line 279
    aget v3, p3, v4

    aput v3, v6, v7

    .line 281
    :cond_3
    aget v3, p3, v8

    if-ltz v3, :cond_4

    aget v3, p3, v8

    if-gt v3, v7, :cond_4

    .line 283
    aget v3, p2, v8

    const/4 v4, 0x2

    aput v3, v5, v4

    .line 284
    aget v3, p3, v8

    aput v3, v6, v4

    .line 287
    :cond_4
    invoke-direct {p0, v5, v6}, Lcom/huawei/hwperformance/HwPerformanceImpl;->perfhubConfigSet([I[I)I

    move-result v0

    .line 289
    .end local v5    # "setTags":[I
    .end local v6    # "setVals":[I
    :cond_5
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private perfhubConfigGet([I[I)I
    .locals 9
    .param p1, "tags"    # [I
    .param p2, "values"    # [I

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "ret":I
    const-string v1, "perfhub"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 199
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 200
    const/4 v2, -0x1

    return v2

    .line 202
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 203
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 205
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.os.IPerfHub"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    array-length v4, p1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget v7, p1, v6

    .line 208
    .local v7, "i":I
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    .end local v7    # "i":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 210
    :cond_1
    move v4, v5

    .line 212
    .local v4, "result":I
    const/4 v6, 0x3

    :try_start_0
    invoke-interface {v1, v6, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 213
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 214
    nop

    .local v5, "loop":I
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_3

    .line 215
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    aput v6, p2, v5

    .line 216
    sget-boolean v6, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v6, :cond_2

    const-string v6, "HwPerformanceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perfhubConfigGet transact values["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, p2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 221
    .end local v5    # "loop":I
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 218
    :catch_0
    move-exception v5

    .line 219
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-boolean v6, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v6, :cond_3

    const-string v6, "HwPerformanceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get transact Exception e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 223
    nop

    .line 224
    sget-boolean v5, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v5, :cond_4

    const-string v5, "HwPerformanceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "perfhubConfigGet ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_4
    return v0

    .line 221
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 222
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method private perfhubConfigSet([I[I)I
    .locals 9
    .param p1, "tags"    # [I
    .param p2, "values"    # [I

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "ret":I
    const-string v1, "perfhub"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 164
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 165
    const/4 v2, -0x1

    return v2

    .line 167
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 168
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 170
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.os.IPerfHub"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    array-length v4, p1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget v7, p1, v6

    .line 173
    .local v7, "i":I
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    .end local v7    # "i":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 175
    :cond_1
    array-length v4, p2

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_2

    aget v7, p2, v6

    .line 176
    .local v7, "j":I
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    .end local v7    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 178
    :cond_2
    move v4, v5

    .line 180
    .local v4, "result":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v1, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_3
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 187
    goto :goto_3

    .line 185
    :catchall_0
    move-exception v5

    goto :goto_4

    .line 182
    :catch_0
    move-exception v5

    .line 183
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-boolean v6, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v6, :cond_3

    const-string v6, "HwPerformanceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set transact Exception e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 188
    :goto_3
    sget-boolean v5, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v5, :cond_4

    const-string v5, "HwPerformanceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "perfhubConfigSet ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_4
    return v0

    .line 185
    :goto_4
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 186
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method private varargs perfhubEvent(ILjava/lang/String;[I)I
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "PackageName"    # Ljava/lang/String;
    .param p3, "payload"    # [I

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "ret":I
    const-string v1, "perfhub"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 132
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 133
    const/4 v2, -0x1

    return v2

    .line 135
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 136
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 138
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.os.IPerfHub"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    array-length v4, p3

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget v6, p3, v5

    .line 143
    .local v6, "i":I
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    .end local v6    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v1, v4, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 152
    goto :goto_2

    .line 150
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 147
    :catch_0
    move-exception v4

    .line 148
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    sget-boolean v5, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v5, :cond_2

    const-string v5, "HwPerformanceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event transact Exception e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 153
    :goto_2
    sget-boolean v4, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v4, :cond_3

    const-string v4, "HwPerformanceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "perfhubEvent ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    return v0

    .line 150
    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method


# virtual methods
.method public perfConfigGet([I[I)I
    .locals 5
    .param p1, "tags"    # [I
    .param p2, "values"    # [I

    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, "ret":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 549
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 550
    const-string v2, "HwPerformanceImpl"

    const-string v3, "Permission denied for the caller is not systemic"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, -0x1

    return v2

    .line 554
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/hwperformance/HwPerformanceImpl;->isInputInvalid([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    const/4 v0, -0x3

    .line 556
    return v0

    .line 559
    :cond_1
    const/4 v2, 0x1

    sget v3, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    if-ne v2, v3, :cond_2

    .line 560
    const/4 v0, -0x2

    goto :goto_0

    .line 561
    :cond_2
    const/4 v2, 0x2

    sget v3, Lcom/huawei/hwperformance/HwPerformanceImpl;->usingPlatform:I

    if-ne v2, v3, :cond_4

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/huawei/hwperformance/HwPerformanceImpl;->perfhubConfigGet([I[I)I

    move-result v0

    .line 564
    if-eqz v0, :cond_3

    .line 565
    const/4 v0, -0x1

    goto :goto_0

    .line 567
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 571
    :cond_4
    const/4 v0, -0x2

    .line 573
    :goto_0
    sget-boolean v2, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v2, :cond_5

    const-string v2, "HwPerformanceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "perfConfigGet ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_5
    return v0
.end method

.method public perfConfigSet([I[ILjava/lang/String;)I
    .locals 20
    .param p1, "tags"    # [I
    .param p2, "values"    # [I
    .param p3, "pkg_name"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 430
    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 431
    .local v3, "ret":I
    const/4 v4, -0x1

    .line 432
    .local v4, "pid":I
    const/4 v5, -0x1

    .line 433
    .local v5, "payload":I
    const/4 v6, -0x1

    .line 434
    .local v6, "eventId":I
    const/4 v7, -0x1

    .line 435
    .local v7, "duration":I
    const/4 v8, -0x1

    .line 436
    .local v8, "powerType":I
    const/4 v9, -0x1

    .line 437
    .local v9, "onBCluster":I
    const/4 v10, -0x1

    .line 438
    .local v10, "cpusOn":I
    const/4 v11, -0x1

    .line 439
    .local v11, "cpusOnLimit":I
    const/4 v12, 0x5

    new-array v13, v12, [I

    .line 440
    .local v13, "cpuTags":[I
    new-array v12, v12, [I

    .line 442
    .local v12, "cpuValues":[I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 443
    .local v14, "uid":I
    move v15, v4

    const/16 v4, 0x3e8

    .end local v4    # "pid":I
    .local v15, "pid":I
    if-eq v14, v4, :cond_0

    .line 444
    const-string v4, "HwPerformanceImpl"

    move/from16 v16, v5

    const-string v5, "Permission denied for the caller is not systemic"

    .end local v5    # "payload":I
    .local v16, "payload":I
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v4, -0x1

    return v4

    .line 448
    .end local v16    # "payload":I
    .restart local v5    # "payload":I
    :cond_0
    move/from16 v16, v5

    .end local v5    # "payload":I
    .restart local v16    # "payload":I
    invoke-direct/range {p0 .. p2}, Lcom/huawei/hwperformance/HwPerformanceImpl;->isInputInvalid([I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 449
    const/4 v3, -0x3

    .line 450
    return v3

    .line 453
    :cond_1
    sget-boolean v4, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v4, :cond_2

    const-string v4, "HwPerformanceImpl"

    const-string v5, "perfConfigSet start read param"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_2
    move/from16 v17, v7

    move v7, v15

    const/4 v5, 0x0

    .end local v15    # "pid":I
    .local v5, "loop":I
    .local v7, "pid":I
    .local v17, "duration":I
    :goto_0
    array-length v4, v1

    move/from16 v18, v14

    const/16 v14, 0x14

    .end local v14    # "uid":I
    .local v18, "uid":I
    if-ge v5, v4, :cond_4

    .line 456
    aget v4, v1, v5

    if-eq v4, v14, :cond_3

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    goto :goto_1

    .line 470
    :pswitch_0
    aget v4, p2, v5

    .line 471
    .end local v17    # "duration":I
    .local v4, "duration":I
    nop

    .line 455
    move/from16 v17, v4

    goto :goto_1

    .line 466
    .end local v4    # "duration":I
    .restart local v17    # "duration":I
    :pswitch_1
    aget v4, p2, v5

    .line 467
    .end local v7    # "pid":I
    .local v4, "pid":I
    nop

    .line 455
    move v7, v4

    goto :goto_1

    .line 462
    .end local v4    # "pid":I
    .restart local v7    # "pid":I
    :pswitch_2
    aget v4, p2, v5

    .line 463
    .end local v16    # "payload":I
    .local v4, "payload":I
    nop

    .line 455
    move/from16 v16, v4

    goto :goto_1

    .line 458
    .end local v4    # "payload":I
    .restart local v16    # "payload":I
    :pswitch_3
    aget v4, p2, v5

    .line 459
    .end local v6    # "eventId":I
    .local v4, "eventId":I
    nop

    .line 455
    move v6, v4

    goto :goto_1

    .line 486
    .end local v4    # "eventId":I
    .restart local v6    # "eventId":I
    :pswitch_4
    aget v4, p2, v5

    .line 487
    .end local v11    # "cpusOnLimit":I
    .local v4, "cpusOnLimit":I
    nop

    .line 455
    move v11, v4

    goto :goto_1

    .line 482
    .end local v4    # "cpusOnLimit":I
    .restart local v11    # "cpusOnLimit":I
    :pswitch_5
    aget v4, p2, v5

    .line 483
    .end local v10    # "cpusOn":I
    .local v4, "cpusOn":I
    nop

    .line 455
    move v10, v4

    goto :goto_1

    .line 494
    .end local v4    # "cpusOn":I
    .restart local v10    # "cpusOn":I
    :pswitch_6
    aget v4, v1, v5

    const/4 v14, 0x0

    aput v4, v13, v14

    .line 495
    aget v4, p2, v5

    aput v4, v12, v14

    .line 496
    goto :goto_1

    .line 474
    :pswitch_7
    aget v4, p2, v5

    .line 475
    .end local v8    # "powerType":I
    .local v4, "powerType":I
    nop

    .line 455
    move v8, v4

    goto :goto_1

    .line 478
    .end local v4    # "powerType":I
    .restart local v8    # "powerType":I
    :cond_3
    aget v4, p2, v5

    .line 479
    .end local v9    # "onBCluster":I
    .local v4, "onBCluster":I
    nop

    .line 455
    move v9, v4

    .end local v4    # "onBCluster":I
    .restart local v9    # "onBCluster":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, v18

    goto :goto_0

    .line 503
    .end local v5    # "loop":I
    :cond_4
    const/16 v4, 0x65

    const/4 v5, 0x1

    aput v4, v13, v5

    .line 504
    aput v10, v12, v5

    .line 505
    const/16 v4, 0x66

    const/4 v15, 0x2

    aput v4, v13, v15

    .line 506
    aput v11, v12, v15

    .line 507
    const/4 v4, 0x3

    const/4 v15, 0x0

    aput v15, v13, v4

    .line 508
    aput v8, v12, v4

    .line 509
    const/4 v4, 0x4

    aput v14, v13, v4

    .line 510
    aput v9, v12, v4

    .line 511
    sget-boolean v4, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v4, :cond_5

    const-string v4, "HwPerformanceImpl"

    const-string v14, "perfConfigSet start handle set"

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v14, v1

    if-ge v4, v14, :cond_8

    .line 514
    const/16 v14, 0x64

    aget v5, v1, v4

    if-ne v14, v5, :cond_7

    .line 515
    aget v5, p2, v4

    const/16 v14, 0xc

    if-eq v5, v14, :cond_6

    packed-switch v5, :pswitch_data_3

    packed-switch v5, :pswitch_data_4

    .line 513
    move/from16 v5, v17

    .end local v17    # "duration":I
    .local v5, "duration":I
    :goto_3
    const/4 v14, 0x1

    :goto_4
    const/4 v15, 0x0

    goto :goto_5

    .line 527
    .end local v5    # "duration":I
    .restart local v17    # "duration":I
    :pswitch_8
    move/from16 v5, v17

    invoke-direct {v0, v5, v13, v12}, Lcom/huawei/hwperformance/HwPerformanceImpl;->handleCPUSet(I[I[I)I

    .line 528
    .end local v17    # "duration":I
    .restart local v5    # "duration":I
    goto :goto_3

    .line 520
    .end local v5    # "duration":I
    .restart local v17    # "duration":I
    :pswitch_9
    move/from16 v5, v17

    .end local v17    # "duration":I
    .restart local v5    # "duration":I
    const/4 v14, 0x0

    invoke-direct {v0, v14, v7, v2}, Lcom/huawei/hwperformance/HwPerformanceImpl;->handleIOSet(ZILjava/lang/String;)I

    .line 521
    nop

    .line 513
    move v15, v14

    const/4 v14, 0x1

    goto :goto_5

    .line 517
    .end local v5    # "duration":I
    .restart local v17    # "duration":I
    :pswitch_a
    move/from16 v5, v17

    const/4 v14, 0x0

    .end local v17    # "duration":I
    .restart local v5    # "duration":I
    const/4 v14, 0x1

    invoke-direct {v0, v14, v7, v2}, Lcom/huawei/hwperformance/HwPerformanceImpl;->handleIOSet(ZILjava/lang/String;)I

    .line 518
    goto :goto_4

    .line 530
    .end local v5    # "duration":I
    .restart local v17    # "duration":I
    :cond_6
    move/from16 v5, v17

    const/4 v14, 0x1

    .end local v17    # "duration":I
    .restart local v5    # "duration":I
    new-array v1, v14, [I

    const/4 v15, 0x0

    aput v16, v1, v15

    invoke-direct {v0, v6, v2, v1}, Lcom/huawei/hwperformance/HwPerformanceImpl;->handleEventSet(ILjava/lang/String;[I)I

    .line 531
    goto :goto_5

    .line 513
    .end local v5    # "duration":I
    .restart local v17    # "duration":I
    :cond_7
    move/from16 v5, v17

    const/4 v14, 0x1

    const/4 v15, 0x0

    .end local v17    # "duration":I
    .restart local v5    # "duration":I
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v17, v5

    move v5, v14

    move-object/from16 v1, p1

    goto :goto_2

    .line 538
    .end local v4    # "i":I
    .end local v5    # "duration":I
    .restart local v17    # "duration":I
    :cond_8
    move/from16 v5, v17

    .end local v17    # "duration":I
    .restart local v5    # "duration":I
    sget-boolean v1, Lcom/huawei/hwperformance/HwPerformanceImpl;->HWDBG:Z

    if-eqz v1, :cond_9

    const-string v1, "HwPerformanceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "perfConfigSet ret = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_9
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x65
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
