.class public Lhuawei/android/app/HwActivityThreadImpl;
.super Ljava/lang/Object;
.source "HwActivityThreadImpl.java"

# interfaces
.implements Landroid/common/HwActivityThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/app/HwActivityThreadImpl$DrawThread;
    }
.end annotation


# static fields
.field private static final APP_CP_LIMIT:I = 0x19000

.field private static final DEBUG_BIG_DATA:Z = false

.field private static DOWN_FACTOR:I = 0x0

.field private static final IS_MAPLE_PROCESS:Z

.field private static final LOG_LIMIT:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "HwActivityThreadImpl"

.field private static final mDecodeBitmapOptEnable:Z

.field private static mHight:I

.field private static mMonitor:Landroid/common/HwFrameworkMonitor;

.field private static mWidth:I

.field private static sInstance:Lhuawei/android/app/HwActivityThreadImpl;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPerfOptEnable:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-string v0, "persist.kirin.decodebitmap_opt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/app/HwActivityThreadImpl;->mDecodeBitmapOptEnable:Z

    .line 167
    sput v1, Lhuawei/android/app/HwActivityThreadImpl;->mWidth:I

    .line 168
    sput v1, Lhuawei/android/app/HwActivityThreadImpl;->mHight:I

    .line 169
    const/4 v0, 0x5

    sput v0, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    .line 356
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwFrameworkMonitor()Landroid/common/HwFrameworkMonitor;

    move-result-object v0

    sput-object v0, Lhuawei/android/app/HwActivityThreadImpl;->mMonitor:Landroid/common/HwFrameworkMonitor;

    .line 359
    sget-boolean v0, Landroid/app/ActivityThread;->sIsMygote:Z

    sput-boolean v0, Lhuawei/android/app/HwActivityThreadImpl;->IS_MAPLE_PROCESS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lhuawei/android/app/HwActivityThreadImpl;->mPerfOptEnable:I

    return-void
.end method

.method static synthetic access$000(Lhuawei/android/app/HwActivityThreadImpl;Landroid/app/Activity;Landroid/os/Handler;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/app/HwActivityThreadImpl;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/os/Handler;
    .param p3, "x3"    # Landroid/content/res/Configuration;

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/app/HwActivityThreadImpl;->setNavigationBarColor(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 3
    .param p1, "io"    # Ljava/io/Closeable;

    .line 539
    if-eqz p1, :cond_0

    .line 540
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HwActivityThreadImpl"

    const-string v2, "closeStream error"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 544
    :cond_0
    :goto_0
    nop

    .line 545
    :goto_1
    return-void
.end method

.method private copyCyclePatternFromAssets(Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "info"    # Landroid/app/LoadedApk;
    .param p2, "oldFile"    # Ljava/lang/String;
    .param p3, "newPath"    # Ljava/lang/String;
    .param p4, "newName"    # Ljava/lang/String;

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 512
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 513
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 514
    invoke-virtual {p1}, Landroid/app/LoadedApk;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v0, v3

    .line 515
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 516
    .local v3, "size":I
    const v4, 0x19000

    if-lez v3, :cond_2

    if-le v3, v4, :cond_0

    goto :goto_1

    .line 520
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 521
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 522
    .local v4, "buffer":[B
    const/4 v5, 0x0

    move v6, v5

    .line 523
    .local v6, "byteCount":I
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v6, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 524
    invoke-virtual {v1, v4, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "size":I
    .end local v4    # "buffer":[B
    .end local v6    # "byteCount":I
    goto :goto_2

    .line 517
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "size":I
    :cond_2
    :goto_1
    const-string v5, "HwActivityThreadImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to copy cycle.pattern since size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", limit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-direct {p0, v0}, Lhuawei/android/app/HwActivityThreadImpl;->closeStream(Ljava/io/Closeable;)V

    .line 533
    invoke-direct {p0, v1}, Lhuawei/android/app/HwActivityThreadImpl;->closeStream(Ljava/io/Closeable;)V

    .line 518
    return-void

    .line 532
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "size":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 529
    :catch_0
    move-exception v2

    .line 530
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_1
    const-string v3, "HwActivityThreadImpl"

    const-string v4, "copyCyclePatternFromAssets catch IO exception"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ioe":Ljava/io/IOException;
    goto :goto_2

    .line 527
    :catch_1
    move-exception v2

    .line 528
    .local v2, "fne":Ljava/io/FileNotFoundException;
    const-string v3, "HwActivityThreadImpl"

    const-string v4, "copyCyclePatternFromAssets catch file not found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    .end local v2    # "fne":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-direct {p0, v0}, Lhuawei/android/app/HwActivityThreadImpl;->closeStream(Ljava/io/Closeable;)V

    .line 533
    invoke-direct {p0, v1}, Lhuawei/android/app/HwActivityThreadImpl;->closeStream(Ljava/io/Closeable;)V

    .line 534
    nop

    .line 535
    return-void

    .line 532
    :goto_3
    invoke-direct {p0, v0}, Lhuawei/android/app/HwActivityThreadImpl;->closeStream(Ljava/io/Closeable;)V

    .line 533
    invoke-direct {p0, v1}, Lhuawei/android/app/HwActivityThreadImpl;->closeStream(Ljava/io/Closeable;)V

    throw v2
.end method

.method private doReportRuntimeByIdleHandler(Ljava/lang/String;J)V
    .locals 33
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    move-object/from16 v1, p1

    .line 383
    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStats()Ljava/util/Map;

    move-result-object v2

    .line 384
    .local v2, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 385
    move-object/from16 v19, v2

    goto/16 :goto_3

    .line 387
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p2

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    long-to-int v3, v3

    .line 389
    .local v3, "stat_duration":I
    const-string v0, "mpl.mem.gc-count"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 390
    .local v4, "gc_count":Ljava/lang/String;
    const-string v0, "mpl.mem.gc-max-time"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 391
    .local v7, "gc_max_time":Ljava/lang/String;
    const-string v0, "mpl.mem.leak-avg"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 392
    .local v8, "leak_avg":Ljava/lang/String;
    const-string v0, "mpl.mem.leak-peak"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 393
    .local v9, "leak_peak":Ljava/lang/String;
    const-string v0, "mpl.mem.allocation-utilization"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 394
    .local v10, "allocation_utilization":Ljava/lang/String;
    const-string v0, "mpl.mem.allocation-abnormal-count"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 395
    .local v11, "allocation_abnormal_count":Ljava/lang/String;
    const-string v0, "mpl.mem.rc-abnormal-count"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 397
    .local v12, "rc_abnormal_count":Ljava/lang/String;
    const-string v0, "mpl.ref.global-water-line"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 398
    .local v13, "global_water_line":Ljava/lang/String;
    const-string v0, "mpl.ref.weak-water-line"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 399
    .local v14, "weak_water_line":Ljava/lang/String;
    const-string v0, "mpl.ref.threads-local-water-line"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    .local v0, "threads_local_water_line":Ljava/lang/String;
    const-string v15, "mpl.ref.native-table-size"

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 402
    .local v15, "native_table_size":Ljava/lang/String;
    const-string v5, "mpl.mem.consum-mpl-files"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 403
    .local v5, "consum_mpl_files":Ljava/lang/String;
    const-string v6, "mpl.mem.consum-class-locator"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 404
    .local v6, "consum_class_locator":Ljava/lang/String;
    move-object/from16 v16, v6

    const-string v6, "mpl.mem.reflect-manage-heap"

    .end local v6    # "consum_class_locator":Ljava/lang/String;
    .local v16, "consum_class_locator":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 405
    .local v6, "reflect_manage_heap":Ljava/lang/String;
    move-object/from16 v17, v6

    const-string v6, "mpl.mem.gc-manage-heap"

    .end local v6    # "reflect_manage_heap":Ljava/lang/String;
    .local v17, "reflect_manage_heap":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 406
    .local v6, "gc_manage_heap":Ljava/lang/String;
    move-object/from16 v18, v6

    const-string v6, "mpl.mem.cycle-pattern"

    .end local v6    # "gc_manage_heap":Ljava/lang/String;
    .local v18, "gc_manage_heap":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 408
    .local v6, "cycle_pattern":Ljava/lang/String;
    move-object/from16 v19, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 409
    .local v2, "lengthOfWaterLine":I
    .local v19, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v20, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 446
    .local v5, "lengthOfCyclePattern":I
    .local v20, "consum_mpl_files":Ljava/lang/String;
    move-object/from16 v21, v15

    .end local v15    # "native_table_size":Ljava/lang/String;
    .local v21, "native_table_size":Ljava/lang/String;
    const/16 v15, 0xfa0

    if-le v2, v15, :cond_1

    .line 447
    move/from16 v23, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 449
    .end local v2    # "lengthOfWaterLine":I
    .local v23, "lengthOfWaterLine":I
    move-object/from16 v24, v0

    goto :goto_0

    .end local v23    # "lengthOfWaterLine":I
    .restart local v2    # "lengthOfWaterLine":I
    :cond_1
    move/from16 v23, v2

    const/4 v2, 0x0

    move-object/from16 v24, v0

    .end local v0    # "threads_local_water_line":Ljava/lang/String;
    .end local v2    # "lengthOfWaterLine":I
    .restart local v23    # "lengthOfWaterLine":I
    .local v24, "threads_local_water_line":Ljava/lang/String;
    :goto_0
    if-le v5, v15, :cond_2

    .line 450
    invoke-virtual {v6, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 453
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 455
    .local v2, "data":Landroid/os/Bundle;
    :try_start_0
    const-string v0, "proc_name"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v0, "stat_duration"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v0, "circref_rcycl_cnt"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v0, "circref_rcycl_max_duration"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const v22, 0xf4240

    div-int v15, v15, v22

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string v0, "mem_leak_avrg"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v0, "mem_leak_peak"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    const-string v0, "mem_alloc_space_util"

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 462
    const-string v0, "mem_alloc_abnormal"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const-string v0, "rc_abnormal"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    const-string v0, "global_water_line"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    const-string v0, "weak_water_line"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 467
    const-string v0, "threads_local_water_line"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v15, v24

    :try_start_1
    invoke-virtual {v2, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .end local v24    # "threads_local_water_line":Ljava/lang/String;
    .local v15, "threads_local_water_line":Ljava/lang/String;
    const-string v0, "native_table_size"
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v3, v21

    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .end local v4    # "gc_count":Ljava/lang/String;
    .end local v21    # "native_table_size":Ljava/lang/String;
    .local v3, "native_table_size":Ljava/lang/String;
    .local v25, "stat_duration":I
    .local v26, "gc_count":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    const-string v0, "consum_mpl_files"
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v27, v3

    move-object/from16 v4, v20

    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .end local v3    # "native_table_size":Ljava/lang/String;
    .end local v20    # "consum_mpl_files":Ljava/lang/String;
    .local v4, "consum_mpl_files":Ljava/lang/String;
    .local v27, "native_table_size":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string v0, "consum_class_locator"
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v28, v4

    move-object/from16 v3, v16

    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .end local v4    # "consum_mpl_files":Ljava/lang/String;
    .end local v16    # "consum_class_locator":Ljava/lang/String;
    .local v3, "consum_class_locator":Ljava/lang/String;
    .local v28, "consum_mpl_files":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    const-string v0, "reflect_manage_heap"
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v29, v3

    move-object/from16 v4, v17

    :try_start_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .end local v3    # "consum_class_locator":Ljava/lang/String;
    .end local v17    # "reflect_manage_heap":Ljava/lang/String;
    .local v4, "reflect_manage_heap":Ljava/lang/String;
    .local v29, "consum_class_locator":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    const-string v0, "gc_manage_heap"
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v30, v4

    move-object/from16 v3, v18

    :try_start_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .end local v4    # "reflect_manage_heap":Ljava/lang/String;
    .end local v18    # "gc_manage_heap":Ljava/lang/String;
    .local v3, "gc_manage_heap":Ljava/lang/String;
    .local v30, "reflect_manage_heap":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    const-string v0, "cycle_pattern"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    .line 478
    nop

    .line 479
    sget-object v0, Lhuawei/android/app/HwActivityThreadImpl;->mMonitor:Landroid/common/HwFrameworkMonitor;

    if-eqz v0, :cond_3

    sget-object v0, Lhuawei/android/app/HwActivityThreadImpl;->mMonitor:Landroid/common/HwFrameworkMonitor;

    const v4, 0x38263cb1

    invoke-interface {v0, v4, v2}, Landroid/common/HwFrameworkMonitor;->monitor(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    const-string v0, "HwActivityThreadImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v2

    const-string v2, "upload bigdata success for: "

    .end local v2    # "data":Landroid/os/Bundle;
    .local v31, "data":Landroid/os/Bundle;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 482
    .end local v31    # "data":Landroid/os/Bundle;
    .restart local v2    # "data":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v31, v2

    .end local v2    # "data":Landroid/os/Bundle;
    .restart local v31    # "data":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 475
    .end local v31    # "data":Landroid/os/Bundle;
    .restart local v2    # "data":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object/from16 v31, v2

    .end local v2    # "data":Landroid/os/Bundle;
    .restart local v31    # "data":Landroid/os/Bundle;
    goto/16 :goto_2

    .end local v3    # "gc_manage_heap":Ljava/lang/String;
    .end local v30    # "reflect_manage_heap":Ljava/lang/String;
    .end local v31    # "data":Landroid/os/Bundle;
    .restart local v2    # "data":Landroid/os/Bundle;
    .restart local v4    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v18    # "gc_manage_heap":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v30, v4

    move-object/from16 v3, v18

    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "reflect_manage_heap":Ljava/lang/String;
    .end local v18    # "gc_manage_heap":Ljava/lang/String;
    .restart local v3    # "gc_manage_heap":Ljava/lang/String;
    .restart local v30    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v31    # "data":Landroid/os/Bundle;
    goto :goto_2

    .end local v29    # "consum_class_locator":Ljava/lang/String;
    .end local v30    # "reflect_manage_heap":Ljava/lang/String;
    .end local v31    # "data":Landroid/os/Bundle;
    .restart local v2    # "data":Landroid/os/Bundle;
    .local v3, "consum_class_locator":Ljava/lang/String;
    .restart local v17    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v18    # "gc_manage_heap":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v17

    move-object/from16 v3, v18

    .end local v2    # "data":Landroid/os/Bundle;
    .end local v17    # "reflect_manage_heap":Ljava/lang/String;
    .end local v18    # "gc_manage_heap":Ljava/lang/String;
    .local v3, "gc_manage_heap":Ljava/lang/String;
    .restart local v29    # "consum_class_locator":Ljava/lang/String;
    .restart local v30    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v31    # "data":Landroid/os/Bundle;
    goto :goto_2

    .end local v3    # "gc_manage_heap":Ljava/lang/String;
    .end local v28    # "consum_mpl_files":Ljava/lang/String;
    .end local v29    # "consum_class_locator":Ljava/lang/String;
    .end local v30    # "reflect_manage_heap":Ljava/lang/String;
    .end local v31    # "data":Landroid/os/Bundle;
    .restart local v2    # "data":Landroid/os/Bundle;
    .local v4, "consum_mpl_files":Ljava/lang/String;
    .restart local v16    # "consum_class_locator":Ljava/lang/String;
    .restart local v17    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v18    # "gc_manage_heap":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v28, v4

    move-object/from16 v29, v16

    move-object/from16 v30, v17

    move-object/from16 v3, v18

    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "consum_mpl_files":Ljava/lang/String;
    .end local v16    # "consum_class_locator":Ljava/lang/String;
    .end local v17    # "reflect_manage_heap":Ljava/lang/String;
    .end local v18    # "gc_manage_heap":Ljava/lang/String;
    .restart local v3    # "gc_manage_heap":Ljava/lang/String;
    .restart local v28    # "consum_mpl_files":Ljava/lang/String;
    .restart local v29    # "consum_class_locator":Ljava/lang/String;
    .restart local v30    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v31    # "data":Landroid/os/Bundle;
    goto :goto_2

    .end local v27    # "native_table_size":Ljava/lang/String;
    .end local v28    # "consum_mpl_files":Ljava/lang/String;
    .end local v29    # "consum_class_locator":Ljava/lang/String;
    .end local v30    # "reflect_manage_heap":Ljava/lang/String;
    .end local v31    # "data":Landroid/os/Bundle;
    .restart local v2    # "data":Landroid/os/Bundle;
    .local v3, "native_table_size":Ljava/lang/String;
    .restart local v16    # "consum_class_locator":Ljava/lang/String;
    .restart local v17    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v18    # "gc_manage_heap":Ljava/lang/String;
    .restart local v20    # "consum_mpl_files":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v27, v3

    move-object/from16 v29, v16

    move-object/from16 v30, v17

    move-object/from16 v3, v18

    move-object/from16 v28, v20

    .end local v2    # "data":Landroid/os/Bundle;
    .end local v16    # "consum_class_locator":Ljava/lang/String;
    .end local v17    # "reflect_manage_heap":Ljava/lang/String;
    .end local v18    # "gc_manage_heap":Ljava/lang/String;
    .end local v20    # "consum_mpl_files":Ljava/lang/String;
    .local v3, "gc_manage_heap":Ljava/lang/String;
    .restart local v27    # "native_table_size":Ljava/lang/String;
    .restart local v28    # "consum_mpl_files":Ljava/lang/String;
    .restart local v29    # "consum_class_locator":Ljava/lang/String;
    .restart local v30    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v31    # "data":Landroid/os/Bundle;
    goto :goto_2

    .end local v25    # "stat_duration":I
    .end local v26    # "gc_count":Ljava/lang/String;
    .end local v27    # "native_table_size":Ljava/lang/String;
    .end local v28    # "consum_mpl_files":Ljava/lang/String;
    .end local v29    # "consum_class_locator":Ljava/lang/String;
    .end local v30    # "reflect_manage_heap":Ljava/lang/String;
    .end local v31    # "data":Landroid/os/Bundle;
    .restart local v2    # "data":Landroid/os/Bundle;
    .local v3, "stat_duration":I
    .local v4, "gc_count":Ljava/lang/String;
    .restart local v16    # "consum_class_locator":Ljava/lang/String;
    .restart local v17    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v18    # "gc_manage_heap":Ljava/lang/String;
    .restart local v20    # "consum_mpl_files":Ljava/lang/String;
    .restart local v21    # "native_table_size":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v31, v2

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v29, v16

    move-object/from16 v30, v17

    move-object/from16 v3, v18

    move-object/from16 v28, v20

    move-object/from16 v27, v21

    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "gc_count":Ljava/lang/String;
    .end local v16    # "consum_class_locator":Ljava/lang/String;
    .end local v17    # "reflect_manage_heap":Ljava/lang/String;
    .end local v18    # "gc_manage_heap":Ljava/lang/String;
    .end local v20    # "consum_mpl_files":Ljava/lang/String;
    .end local v21    # "native_table_size":Ljava/lang/String;
    .local v3, "gc_manage_heap":Ljava/lang/String;
    .restart local v25    # "stat_duration":I
    .restart local v26    # "gc_count":Ljava/lang/String;
    .restart local v27    # "native_table_size":Ljava/lang/String;
    .restart local v28    # "consum_mpl_files":Ljava/lang/String;
    .restart local v29    # "consum_class_locator":Ljava/lang/String;
    .restart local v30    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v31    # "data":Landroid/os/Bundle;
    goto :goto_2

    .end local v15    # "threads_local_water_line":Ljava/lang/String;
    .end local v25    # "stat_duration":I
    .end local v26    # "gc_count":Ljava/lang/String;
    .end local v27    # "native_table_size":Ljava/lang/String;
    .end local v28    # "consum_mpl_files":Ljava/lang/String;
    .end local v29    # "consum_class_locator":Ljava/lang/String;
    .end local v30    # "reflect_manage_heap":Ljava/lang/String;
    .end local v31    # "data":Landroid/os/Bundle;
    .restart local v2    # "data":Landroid/os/Bundle;
    .local v3, "stat_duration":I
    .restart local v4    # "gc_count":Ljava/lang/String;
    .restart local v16    # "consum_class_locator":Ljava/lang/String;
    .restart local v17    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v18    # "gc_manage_heap":Ljava/lang/String;
    .restart local v20    # "consum_mpl_files":Ljava/lang/String;
    .restart local v21    # "native_table_size":Ljava/lang/String;
    .restart local v24    # "threads_local_water_line":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object/from16 v31, v2

    move/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v29, v16

    move-object/from16 v30, v17

    move-object/from16 v3, v18

    move-object/from16 v28, v20

    move-object/from16 v27, v21

    move-object/from16 v15, v24

    .line 476
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "gc_count":Ljava/lang/String;
    .end local v16    # "consum_class_locator":Ljava/lang/String;
    .end local v17    # "reflect_manage_heap":Ljava/lang/String;
    .end local v18    # "gc_manage_heap":Ljava/lang/String;
    .end local v20    # "consum_mpl_files":Ljava/lang/String;
    .end local v21    # "native_table_size":Ljava/lang/String;
    .end local v24    # "threads_local_water_line":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v3, "gc_manage_heap":Ljava/lang/String;
    .restart local v15    # "threads_local_water_line":Ljava/lang/String;
    .restart local v25    # "stat_duration":I
    .restart local v26    # "gc_count":Ljava/lang/String;
    .restart local v27    # "native_table_size":Ljava/lang/String;
    .restart local v28    # "consum_mpl_files":Ljava/lang/String;
    .restart local v29    # "consum_class_locator":Ljava/lang/String;
    .restart local v30    # "reflect_manage_heap":Ljava/lang/String;
    .restart local v31    # "data":Landroid/os/Bundle;
    :goto_2
    const-string v2, "HwActivityThreadImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v3

    const-string v3, "upload bigdata decode failed: "

    .end local v3    # "gc_manage_heap":Ljava/lang/String;
    .local v32, "gc_manage_heap":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    return-void

    .line 385
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "lengthOfCyclePattern":I
    .end local v6    # "cycle_pattern":Ljava/lang/String;
    .end local v7    # "gc_max_time":Ljava/lang/String;
    .end local v8    # "leak_avg":Ljava/lang/String;
    .end local v9    # "leak_peak":Ljava/lang/String;
    .end local v10    # "allocation_utilization":Ljava/lang/String;
    .end local v11    # "allocation_abnormal_count":Ljava/lang/String;
    .end local v12    # "rc_abnormal_count":Ljava/lang/String;
    .end local v13    # "global_water_line":Ljava/lang/String;
    .end local v14    # "weak_water_line":Ljava/lang/String;
    .end local v15    # "threads_local_water_line":Ljava/lang/String;
    .end local v19    # "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "lengthOfWaterLine":I
    .end local v25    # "stat_duration":I
    .end local v26    # "gc_count":Ljava/lang/String;
    .end local v27    # "native_table_size":Ljava/lang/String;
    .end local v28    # "consum_mpl_files":Ljava/lang/String;
    .end local v29    # "consum_class_locator":Ljava/lang/String;
    .end local v30    # "reflect_manage_heap":Ljava/lang/String;
    .end local v31    # "data":Landroid/os/Bundle;
    .end local v32    # "gc_manage_heap":Ljava/lang/String;
    .local v2, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v19, v2

    .end local v2    # "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    return-void
.end method

.method public static declared-synchronized getDefault()Lhuawei/android/app/HwActivityThreadImpl;
    .locals 2

    const-class v0, Lhuawei/android/app/HwActivityThreadImpl;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lhuawei/android/app/HwActivityThreadImpl;->sInstance:Lhuawei/android/app/HwActivityThreadImpl;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lhuawei/android/app/HwActivityThreadImpl;

    invoke-direct {v1}, Lhuawei/android/app/HwActivityThreadImpl;-><init>()V

    sput-object v1, Lhuawei/android/app/HwActivityThreadImpl;->sInstance:Lhuawei/android/app/HwActivityThreadImpl;

    .line 76
    :cond_0
    sget-object v1, Lhuawei/android/app/HwActivityThreadImpl;->sInstance:Lhuawei/android/app/HwActivityThreadImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic lambda$doReportRuntime$0(Lhuawei/android/app/HwActivityThreadImpl;Ljava/lang/String;J)Z
    .locals 1
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 370
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/app/HwActivityThreadImpl;->doReportRuntimeByIdleHandler(Ljava/lang/String;J)V

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$doReportRuntime$1(Lhuawei/android/app/HwActivityThreadImpl;Ljava/lang/String;J)Z
    .locals 1
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 375
    invoke-direct {p0, p1, p2, p3}, Lhuawei/android/app/HwActivityThreadImpl;->doReportRuntimeByIdleHandler(Ljava/lang/String;J)V

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method private static saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 200
    .local v2, "ret":Z
    if-nez v2, :cond_1

    .line 201
    const-string v3, "HwActivityThreadImpl"

    const-string v4, "saveBitmapToFile delete file error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v2    # "ret":Z
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 205
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .line 206
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v1    # "file":Ljava/io/File;
    nop

    .line 213
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :goto_0
    goto :goto_1

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "HwActivityThreadImpl"

    const-string v3, "saveBitmapToFile, finally IO Exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 208
    :catch_1
    move-exception v1

    .line 209
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "HwActivityThreadImpl"

    const-string v3, "saveBitmapToFile, IO Exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_2

    .line 213
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 219
    :cond_2
    :goto_1
    return-void

    .line 211
    :goto_2
    if-eqz v0, :cond_3

    .line 213
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 216
    goto :goto_3

    .line 214
    :catch_2
    move-exception v2

    .line 215
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "HwActivityThreadImpl"

    const-string v4, "saveBitmapToFile, finally IO Exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    throw v1
.end method

.method private saveNavigationBarBitmap(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 222
    const-string v0, "persist.sys.navigationbar.mode.savebitmap"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_1

    .line 227
    const-string v1, "HwActivityThreadImpl"

    const-string v2, "getDecorView null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 233
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    sget v3, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    div-int/2addr v2, v3

    .line 234
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget v4, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    div-int/2addr v3, v4

    .line 237
    .local v3, "height":I
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 238
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    .local v5, "canvas":Landroid/graphics/Canvas;
    sget v6, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    sget v8, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 240
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 241
    const v6, -0x30304

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 242
    invoke-virtual {v0, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 243
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 249
    :cond_2
    const-string v1, "/sdcard/NavigationBarTest.jpg"

    invoke-static {v4, v1}, Lhuawei/android/app/HwActivityThreadImpl;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "HwActivityThreadImpl"

    const-string v5, "get NavigationBar Color error!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setNavigationBarColor(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handle"    # Landroid/os/Handler;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 257
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/app/HwActivityManager;->canPickColor(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-string v0, "HwActivityThreadImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can not pick color, return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 262
    const-string v0, "HwActivityThreadImpl"

    const-string v1, "getWindow null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 266
    :cond_1
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_2

    .line 268
    const-string v1, "HwActivityThreadImpl"

    const-string v2, "getDecorView null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 272
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    if-lt v1, v2, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget v2, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    if-ge v1, v2, :cond_3

    goto/16 :goto_2

    .line 277
    :cond_3
    invoke-static {p1}, Landroid/hwcontrol/HwWidgetFactory;->isHwTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    const-string v1, "HwActivityThreadImpl"

    const-string v2, "is HwTheme, not pick color, return!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 282
    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->isFloating()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_1

    .line 287
    :cond_5
    iget v1, p3, Landroid/content/res/Configuration;->nonFullScreen:I

    if-eqz v1, :cond_6

    .line 288
    const-string v1, "HwActivityThreadImpl"

    const-string v2, "not full screen, not pick color, return!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 292
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 293
    .local v1, "sysUiVisibility":I
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_7

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_7

    .line 294
    const-string v2, "HwActivityThreadImpl"

    const-string v3, "hide navigation, not pick color, return!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 298
    :cond_7
    iget v2, p1, Landroid/app/Activity;->mNavigationBarColor:I

    if-nez v2, :cond_b

    .line 299
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    sget v3, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    div-int/2addr v2, v3

    .line 300
    .local v2, "width":I
    sget v3, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    const/16 v4, 0x28

    div-int v3, v4, v3

    .line 303
    .local v3, "height":I
    :try_start_0
    sget v5, Lhuawei/android/app/HwActivityThreadImpl;->mWidth:I

    if-ne v2, v5, :cond_8

    sget v5, Lhuawei/android/app/HwActivityThreadImpl;->mHight:I

    if-eq v3, v5, :cond_9

    .line 304
    :cond_8
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lhuawei/android/app/HwActivityThreadImpl;->mBitmap:Landroid/graphics/Bitmap;

    .line 305
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lhuawei/android/app/HwActivityThreadImpl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lhuawei/android/app/HwActivityThreadImpl;->mCanvas:Landroid/graphics/Canvas;

    .line 306
    iget-object v5, p0, Lhuawei/android/app/HwActivityThreadImpl;->mCanvas:Landroid/graphics/Canvas;

    sget v6, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    sget v8, Lhuawei/android/app/HwActivityThreadImpl;->DOWN_FACTOR:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 307
    iget-object v5, p0, Lhuawei/android/app/HwActivityThreadImpl;->mCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v4

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    sput v2, Lhuawei/android/app/HwActivityThreadImpl;->mWidth:I

    .line 309
    sput v3, Lhuawei/android/app/HwActivityThreadImpl;->mHight:I

    .line 311
    :cond_9
    iget-object v4, p0, Lhuawei/android/app/HwActivityThreadImpl;->mCanvas:Landroid/graphics/Canvas;

    const v5, -0x30304

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 312
    iget-object v4, p0, Lhuawei/android/app/HwActivityThreadImpl;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 314
    const/4 v4, 0x0

    .line 315
    .local v4, "color":I
    iget-object v5, p0, Lhuawei/android/app/HwActivityThreadImpl;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Lhuawei/android/hwcolorpicker/HwColorPicker;->processBitmap(Landroid/graphics/Bitmap;)Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;

    move-result-object v5

    .line 316
    .local v5, "pickedColor":Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    sget-object v6, Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;->Domain:Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;

    invoke-virtual {v5, v6}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->get(Lhuawei/android/hwcolorpicker/HwColorPicker$ResultType;)I

    move-result v6

    move v4, v6

    .line 318
    invoke-virtual {v5}, Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_a

    .line 319
    const-string v6, "HwActivityThreadImpl"

    const-string v7, "state err, return"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 322
    :cond_a
    iput v4, p1, Landroid/app/Activity;->mNavigationBarColor:I

    .line 323
    invoke-direct {p0, p1}, Lhuawei/android/app/HwActivityThreadImpl;->saveNavigationBarBitmap(Landroid/app/Activity;)V

    .line 324
    const-string v6, "HwActivityThreadImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get NavigationBarColor color: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v4    # "color":I
    .end local v5    # "pickedColor":Lhuawei/android/hwcolorpicker/HwColorPicker$PickedColor;
    goto :goto_0

    .line 325
    :catch_0
    move-exception v4

    .line 326
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "HwActivityThreadImpl"

    const-string v6, "get NavigationBar Color error!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_0
    new-instance v2, Lhuawei/android/app/HwActivityThreadImpl$1;

    invoke-direct {v2, p0, p1}, Lhuawei/android/app/HwActivityThreadImpl$1;-><init>(Lhuawei/android/app/HwActivityThreadImpl;Landroid/app/Activity;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void

    .line 283
    .end local v1    # "sysUiVisibility":I
    :cond_c
    :goto_1
    const-string v1, "HwActivityThreadImpl"

    const-string v2, "is Floating or InMultiWindowMode or PIP Mode, not pick color, return!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 273
    :cond_d
    :goto_2
    const-string v1, "HwActivityThreadImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", not pick color, return!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method


# virtual methods
.method public changeToSpecialModel(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 80
    const-string v0, "ro.product.hw_model"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "strHwModel":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const-string v1, "com.sina.weibo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "MODEL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 85
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "field":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string v2, "HwActivityThreadImpl"

    const-string v3, "modify Build.MODEL fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_1
    :goto_0
    return-void
.end method

.method public decodeBitmapOptEnable()Z
    .locals 1

    .line 122
    sget-boolean v0, Lhuawei/android/app/HwActivityThreadImpl;->mDecodeBitmapOptEnable:Z

    return v0
.end method

.method public doReportRuntime(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 361
    sget-boolean v0, Lhuawei/android/app/HwActivityThreadImpl;->IS_MAPLE_PROCESS:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    const-string v0, "system_server"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$JVZZYtmxHSV2aRvCxcYdAsalHcM;

    invoke-direct {v1, p0, p1, p2, p3}, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$JVZZYtmxHSV2aRvCxcYdAsalHcM;-><init>(Lhuawei/android/app/HwActivityThreadImpl;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$NwKwoCdfQ3VIIRL-emZKjDpRXIs;

    invoke-direct {v1, p0, p1, p2, p3}, Lhuawei/android/app/-$$Lambda$HwActivityThreadImpl$NwKwoCdfQ3VIIRL-emZKjDpRXIs;-><init>(Lhuawei/android/app/HwActivityThreadImpl;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 379
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheDrawableFromAware(ILandroid/content/res/Resources;ILandroid/content/res/AssetManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "cookie"    # I
    .param p4, "asset"    # Landroid/content/res/AssetManager;

    .line 140
    invoke-static {}, Landroid/rms/iaware/AwareAppScheduleManager;->getInstance()Landroid/rms/iaware/AwareAppScheduleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/rms/iaware/AwareAppScheduleManager;->getCacheDrawableFromAware(ILandroid/content/res/Resources;ILandroid/content/res/AssetManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWechatScanActivity()Ljava/lang/String;
    .locals 1

    .line 152
    invoke-static {}, Landroid/rms/iaware/AwareAppScheduleManager;->getInstance()Landroid/rms/iaware/AwareAppScheduleManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/rms/iaware/AwareAppScheduleManager;->getWechatScanActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWechatScanOpt()Z
    .locals 1

    .line 149
    invoke-static {}, Landroid/rms/iaware/AwareAppScheduleManager;->getInstance()Landroid/rms/iaware/AwareAppScheduleManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/rms/iaware/AwareAppScheduleManager;->getWechatScanOpt()Z

    move-result v0

    return v0
.end method

.method public hitDrawableCache(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 146
    invoke-static {}, Landroid/rms/iaware/AwareAppScheduleManager;->getInstance()Landroid/rms/iaware/AwareAppScheduleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->hitDrawableCache(I)V

    .line 147
    return-void
.end method

.method public isLiteSysLoadEnable()Z
    .locals 1

    .line 161
    invoke-static {}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->getInstance()Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->isLiteSysLoadEnable()Z

    move-result v0

    return v0
.end method

.method public isPerfOptEnable(I)I
    .locals 5
    .param p1, "optTypeId"    # I

    .line 95
    iget v0, p0, Lhuawei/android/app/HwActivityThreadImpl;->mPerfOptEnable:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    iget v0, p0, Lhuawei/android/app/HwActivityThreadImpl;->mPerfOptEnable:I

    return v0

    .line 98
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 99
    .local v0, "am":Landroid/app/ActivityThread;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 100
    return v1

    .line 102
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 105
    :try_start_0
    invoke-static {}, Lcom/huawei/android/content/pm/HwPackageManager;->getService()Lcom/huawei/android/content/pm/IHwPackageManager;

    move-result-object v4

    invoke-interface {v4, v2, p1}, Lcom/huawei/android/content/pm/IHwPackageManager;->isPerfOptEnable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    iput v3, p0, Lhuawei/android/app/HwActivityThreadImpl;->mPerfOptEnable:I

    goto :goto_0

    .line 108
    :cond_2
    iput v1, p0, Lhuawei/android/app/HwActivityThreadImpl;->mPerfOptEnable:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    goto :goto_1

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 114
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    iput v3, p0, Lhuawei/android/app/HwActivityThreadImpl;->mPerfOptEnable:I

    .line 118
    .end local v0    # "am":Landroid/app/ActivityThread;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_1
    iget v0, p0, Lhuawei/android/app/HwActivityThreadImpl;->mPerfOptEnable:I

    return v0
.end method

.method public isScene(I)Z
    .locals 1
    .param p1, "scene"    # I

    .line 157
    invoke-static {}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->getInstance()Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->isInSysLoadScene(I)Z

    move-result v0

    return v0
.end method

.method public loadAppCyclePatternAsync(Landroid/app/LoadedApk;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 9
    .param p1, "info"    # Landroid/app/LoadedApk;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "processName"    # Ljava/lang/String;

    .line 489
    sget-boolean v0, Landroid/app/ActivityThread;->sIsMygote:Z

    if-nez v0, :cond_0

    .line 490
    return-void

    .line 492
    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    .line 495
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    .line 496
    .local v6, "runtime":Ldalvik/system/VMRuntime;
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-wide v3, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v5, 0x1

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Ldalvik/system/VMRuntime;->loadAppCyclePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Z

    move-result v7

    .line 498
    .local v7, "needCopySrc":Z
    if-eqz v7, :cond_2

    .line 499
    const-string v0, "cycle.pattern"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/cycle-pattern"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cycle.pattern."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lhuawei/android/app/HwActivityThreadImpl;->copyCyclePatternFromAssets(Landroid/app/LoadedApk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-wide v3, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v5, 0x2

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Ldalvik/system/VMRuntime;->loadAppCyclePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Z

    .line 504
    :cond_2
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-wide v3, p2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v5, 0x0

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Ldalvik/system/VMRuntime;->loadAppCyclePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)Z

    .line 506
    return-void

    .line 493
    .end local v6    # "runtime":Ldalvik/system/VMRuntime;
    .end local v7    # "needCopySrc":Z
    :cond_3
    :goto_0
    return-void
.end method

.method public postCacheDrawableToAware(ILandroid/content/res/Resources;JILandroid/content/res/AssetManager;)V
    .locals 7
    .param p1, "resId"    # I
    .param p2, "wrapper"    # Landroid/content/res/Resources;
    .param p3, "time"    # J
    .param p5, "cookie"    # I
    .param p6, "asset"    # Landroid/content/res/AssetManager;

    .line 143
    invoke-static {}, Landroid/rms/iaware/AwareAppScheduleManager;->getInstance()Landroid/rms/iaware/AwareAppScheduleManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/rms/iaware/AwareAppScheduleManager;->postCacheDrawableToAware(ILandroid/content/res/Resources;JILandroid/content/res/AssetManager;)V

    .line 144
    return-void
.end method

.method public reportBindApplicationToAware(Landroid/app/Application;Ljava/lang/String;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "processName"    # Ljava/lang/String;

    .line 127
    invoke-static {}, Landroid/rms/iaware/AwareAppScheduleManager;->getInstance()Landroid/rms/iaware/AwareAppScheduleManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->init(Ljava/lang/String;Landroid/app/Application;)V

    .line 128
    invoke-static {}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->getInstance()Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->init(Ljava/lang/String;Landroid/app/Application;)V

    .line 130
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwIAwareBitmapCacher()Landroid/graphics/IAwareBitmapCacher;

    move-result-object v0

    .line 131
    .local v0, "obj":Landroid/graphics/IAwareBitmapCacher;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p2, p1}, Landroid/graphics/IAwareBitmapCacher;->init(Ljava/lang/String;Landroid/app/Application;)V

    .line 136
    :cond_0
    invoke-static {}, Landroid/rms/iaware/AppSceneRecogManager;->getInstance()Landroid/rms/iaware/AppSceneRecogManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/rms/iaware/AppSceneRecogManager;->init(Landroid/app/Application;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public reportLoadUrl()V
    .locals 1

    .line 352
    invoke-static {}, Landroid/rms/iaware/AwareAppScheduleManager;->getInstance()Landroid/rms/iaware/AwareAppScheduleManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/rms/iaware/AwareAppScheduleManager;->reportLoadUrl()V

    .line 353
    return-void
.end method

.method public reportWebViewInit(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 348
    invoke-static {}, Landroid/rms/iaware/AwareAppScheduleManager;->getInstance()Landroid/rms/iaware/AwareAppScheduleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/rms/iaware/AwareAppScheduleManager;->reportWebViewInit(Landroid/content/Context;)V

    .line 349
    return-void
.end method

.method public setNavigationBarColorFromActivityThread(Landroid/app/Activity;Landroid/os/Handler;Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handle"    # Landroid/os/Handler;
    .param p3, "configuration"    # Landroid/content/res/Configuration;

    .line 190
    new-instance v6, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;

    const-string v2, "DrawThread"

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;-><init>(Lhuawei/android/app/HwActivityThreadImpl;Ljava/lang/String;Landroid/app/Activity;Landroid/os/Handler;Landroid/content/res/Configuration;)V

    .line 191
    .local v0, "thread":Lhuawei/android/app/HwActivityThreadImpl$DrawThread;
    invoke-virtual {v0}, Lhuawei/android/app/HwActivityThreadImpl$DrawThread;->start()V

    .line 192
    return-void
.end method
