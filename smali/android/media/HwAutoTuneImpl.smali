.class public Landroid/media/HwAutoTuneImpl;
.super Ljava/lang/Object;
.source "HwAutoTuneImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;
    }
.end annotation


# static fields
.field private static final AUDIO_CHANNEL_IN_MONO:I = 0x1

.field private static final AUDIO_CHANNEL_IN_STEREO:I = 0x2

.field private static final AUDIO_FORMAT_PCM_16_BIT:I = 0x1

.field private static final AUDIO_FORMAT_PCM_32_BIT:I = 0x2

.field private static final AUDIO_FORMAT_PCM_FLOAT:I = 0x3

.field private static final AUDIO_SAMPLE_RATE_16K:I = 0x3e80

.field private static final AUDIO_SAMPLE_RATE_48K:I = 0xbb80

.field private static final BUFFER_SIZE_LEN:I = 0x500000

.field private static final HWAUTOTUNE_ERROR_ILLEGAL_STATE:I = -0x4

.field private static final HWAUTOTUNE_ERROR_UNAUTHORIZED:I = -0x2

.field private static final HWAUTOTUNE_ERROR_UNKNOWN:I = -0x64

.field private static final HWAUTOTUNE_ERROR_UNSUPPORTED:I = -0x1

.field private static final HWAUTOTUNE_ERROR_UNVALID_INPUT:I = -0x3

.field private static final HWAUTOTUNE_NO_ERROR:I = 0x0

.field private static final HWAUTOTUNE_SUPPORT:Z

.field private static final TAG:Ljava/lang/String; = "HwAutoTuneImpl"

.field private static mInstance:Landroid/media/HwAutoTuneImpl;

.field private static mIsLoadSuccess:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSampleRate:I

.field private mIsDeinitSuccess:Z

.field private mIsInitSuccess:Z

.field private mIsSetBuffer:Z

.field private mIsSetRefFilePath:Z

.field private mStartCounts:I

.field private mSuccessCounts:I

.field private mTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const-string v0, "ro.config.smart_voice_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    .line 61
    const/4 v0, 0x0

    sput-object v0, Landroid/media/HwAutoTuneImpl;->mInstance:Landroid/media/HwAutoTuneImpl;

    .line 63
    sput-boolean v1, Landroid/media/HwAutoTuneImpl;->mIsLoadSuccess:Z

    .line 67
    :try_start_0
    const-string v0, "autotune_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/HwAutoTuneImpl;->mIsLoadSuccess:Z

    .line 69
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "loadLibrary autotune_jni success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v1, Landroid/media/HwAutoTuneImpl;->mIsLoadSuccess:Z

    .line 72
    const-string v1, "HwAutoTuneImpl"

    const-string v2, "loadLibrary autotune_jni error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsInitSuccess:Z

    .line 245
    iput-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsDeinitSuccess:Z

    .line 247
    iput-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsSetRefFilePath:Z

    .line 249
    iput-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsSetBuffer:Z

    .line 252
    iput v0, p0, Landroid/media/HwAutoTuneImpl;->mStartCounts:I

    .line 254
    iput v0, p0, Landroid/media/HwAutoTuneImpl;->mSuccessCounts:I

    .line 256
    const/16 v1, 0x3e80

    iput v1, p0, Landroid/media/HwAutoTuneImpl;->mCurrentSampleRate:I

    .line 258
    iput v0, p0, Landroid/media/HwAutoTuneImpl;->mTimes:I

    .line 266
    iput-object p1, p0, Landroid/media/HwAutoTuneImpl;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method

.method public static createImpl(Landroid/content/Context;)Landroid/media/HwAutoTuneImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 276
    const-class v0, Landroid/media/HwAutoTuneImpl;

    monitor-enter v0

    .line 277
    :try_start_0
    sget-object v1, Landroid/media/HwAutoTuneImpl;->mInstance:Landroid/media/HwAutoTuneImpl;

    if-nez v1, :cond_0

    .line 278
    new-instance v1, Landroid/media/HwAutoTuneImpl;

    invoke-direct {v1, p0}, Landroid/media/HwAutoTuneImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/HwAutoTuneImpl;->mInstance:Landroid/media/HwAutoTuneImpl;

    .line 280
    :cond_0
    sget-object v1, Landroid/media/HwAutoTuneImpl;->mInstance:Landroid/media/HwAutoTuneImpl;

    monitor-exit v0

    return-object v1

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native nativeDeinit()I
.end method

.method private native nativeGetParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetSentenceCorrectFlag(I)Z
.end method

.method private native nativeGetSentenceWordDescs(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeInit(III)I
.end method

.method private native nativeSetAudioBuffer([SIII)I
.end method

.method private native nativeSetConfigFilePath(Ljava/lang/String;)I
.end method

.method private native nativeSetParameter(Ljava/lang/String;)I
.end method

.method private native nativeSetRefFilePath(Ljava/lang/String;)I
.end method

.method private native nativeSetSentenceCorrectFlag(IZ)I
.end method

.method private native nativeStart(Z)I
.end method

.method private native nativeStop()I
.end method


# virtual methods
.method public deinit()I
    .locals 5

    .line 351
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "deinit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 353
    const/4 v0, -0x1

    return v0

    .line 355
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsInitSuccess:Z

    const/4 v1, -0x4

    if-nez v0, :cond_1

    .line 356
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "init first"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v1

    .line 359
    :cond_1
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsDeinitSuccess:Z

    if-eqz v0, :cond_2

    .line 360
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "Already deinit"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return v1

    .line 364
    :cond_2
    iget v0, p0, Landroid/media/HwAutoTuneImpl;->mTimes:I

    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget v0, p0, Landroid/media/HwAutoTuneImpl;->mStartCounts:I

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/media/HwAutoTuneImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 365
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwMediaMonitor()Landroid/media/IHwMediaMonitor;

    move-result-object v0

    .line 366
    .local v0, "monitor":Landroid/media/IHwMediaMonitor;
    if-eqz v0, :cond_3

    .line 367
    const-string v2, "appName"

    iget-object v3, p0, Landroid/media/HwAutoTuneImpl;->mContext:Landroid/content/Context;

    .line 368
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 367
    const v4, 0x3615def9

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/media/IHwMediaMonitor;->writeBigData(ILjava/lang/String;Ljava/lang/String;I)I

    .line 369
    const-string v2, "useTimes"

    iget v3, p0, Landroid/media/HwAutoTuneImpl;->mStartCounts:I

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/media/IHwMediaMonitor;->writeBigData(ILjava/lang/String;II)I

    .line 371
    const-string v2, "songTime"

    iget v3, p0, Landroid/media/HwAutoTuneImpl;->mTimes:I

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/media/IHwMediaMonitor;->writeBigData(ILjava/lang/String;II)I

    .line 372
    const-string v2, "sucTimes"

    iget v3, p0, Landroid/media/HwAutoTuneImpl;->mSuccessCounts:I

    invoke-interface {v0, v4, v2, v3, v1}, Landroid/media/IHwMediaMonitor;->writeBigData(ILjava/lang/String;II)I

    .line 377
    .end local v0    # "monitor":Landroid/media/IHwMediaMonitor;
    :cond_3
    invoke-direct {p0}, Landroid/media/HwAutoTuneImpl;->nativeDeinit()I

    move-result v0

    .line 378
    .local v0, "ret":I
    if-nez v0, :cond_4

    .line 379
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/HwAutoTuneImpl;->mIsDeinitSuccess:Z

    .line 380
    iput-boolean v1, p0, Landroid/media/HwAutoTuneImpl;->mIsInitSuccess:Z

    .line 381
    iput-boolean v1, p0, Landroid/media/HwAutoTuneImpl;->mIsSetRefFilePath:Z

    .line 382
    iput-boolean v1, p0, Landroid/media/HwAutoTuneImpl;->mIsSetBuffer:Z

    goto :goto_0

    .line 384
    :cond_4
    const-string v2, "HwAutoTuneImpl"

    const-string v3, "deinit fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iput-boolean v1, p0, Landroid/media/HwAutoTuneImpl;->mIsDeinitSuccess:Z

    .line 387
    :goto_0
    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 526
    const-string v0, "HwAutoTuneImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParameter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 528
    return-object v1

    .line 530
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsSetBuffer:Z

    if-nez v0, :cond_1

    .line 531
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "setBuffer first"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-object v1

    .line 534
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 539
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/HwAutoTuneImpl;->nativeGetParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 541
    return-object v0

    .line 543
    :cond_3
    const-string v2, "HwAutoTuneImpl"

    const-string v3, "getParameter fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-object v1

    .line 535
    .end local v0    # "ret":Ljava/lang/String;
    :cond_4
    :goto_0
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "setParameter unvalid input"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-object v1
.end method

.method public getSentenceCorrectFlag(I)Z
    .locals 3
    .param p1, "sentenceIndex"    # I

    .line 638
    const-string v0, "HwAutoTuneImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSentenceCorrectFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 640
    return v1

    .line 642
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsSetBuffer:Z

    if-nez v0, :cond_1

    .line 643
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "setBuffer first"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return v1

    .line 646
    :cond_1
    if-gez p1, :cond_2

    .line 647
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "getSentenceCorrectFlag unvalid"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return v1

    .line 651
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/HwAutoTuneImpl;->nativeGetSentenceCorrectFlag(I)Z

    move-result v0

    .line 652
    .local v0, "ret":Z
    return v0
.end method

.method public getSentenceWordDescs(I)Ljava/util/List;
    .locals 3
    .param p1, "sentenceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;",
            ">;"
        }
    .end annotation

    .line 664
    const-string v0, "HwAutoTuneImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSentenceWordDescs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 666
    return-object v1

    .line 668
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsSetRefFilePath:Z

    if-nez v0, :cond_1

    .line 669
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "setRefFilePath first"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-object v1

    .line 672
    :cond_1
    if-gez p1, :cond_2

    .line 673
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "getSentenceWordDescs unvalid"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    return-object v1

    .line 677
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/HwAutoTuneImpl;->nativeGetSentenceWordDescs(I)Ljava/util/List;

    move-result-object v0

    .line 678
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/media/HwAutoTuneImpl$AutoTuneWordDesc;>;"
    return-object v0
.end method

.method public init(III)I
    .locals 4
    .param p1, "sampleRate"    # I
    .param p2, "channels"    # I
    .param p3, "format"    # I

    .line 303
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 304
    const/4 v0, -0x1

    return v0

    .line 307
    :cond_0
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->mIsLoadSuccess:Z

    if-nez v0, :cond_1

    .line 308
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "loadLibrary autotune_jni error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, -0x4

    return v0

    .line 312
    :cond_1
    const-string v0, "HwAutoTuneImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init  sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  channels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/16 v0, 0x3e80

    const/4 v1, -0x3

    if-eq p1, v0, :cond_2

    .line 314
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "sampleRate unvalid"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v1

    .line 317
    :cond_2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    .line 318
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "channels unvalid"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v1

    .line 321
    :cond_3
    if-eq p3, v0, :cond_4

    .line 322
    const-string v0, "HwAutoTuneImpl"

    const-string v2, "format unvalid"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v1

    .line 326
    :cond_4
    iput p1, p0, Landroid/media/HwAutoTuneImpl;->mCurrentSampleRate:I

    .line 327
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/HwAutoTuneImpl;->mStartCounts:I

    .line 328
    iput v1, p0, Landroid/media/HwAutoTuneImpl;->mSuccessCounts:I

    .line 329
    iput v1, p0, Landroid/media/HwAutoTuneImpl;->mTimes:I

    .line 331
    invoke-direct {p0, p1, p2, p3}, Landroid/media/HwAutoTuneImpl;->nativeInit(III)I

    move-result v2

    .line 333
    .local v2, "ret":I
    if-nez v2, :cond_5

    .line 334
    iput-boolean v1, p0, Landroid/media/HwAutoTuneImpl;->mIsDeinitSuccess:Z

    .line 335
    iput-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsInitSuccess:Z

    goto :goto_0

    .line 337
    :cond_5
    const-string v0, "HwAutoTuneImpl"

    const-string v3, "init fail"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iput-boolean v1, p0, Landroid/media/HwAutoTuneImpl;->mIsInitSuccess:Z

    .line 340
    :goto_0
    return v2
.end method

.method public isSupported()Z
    .locals 2

    .line 290
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "isSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    return v0
.end method

.method public setAudioBuffer([SIII)I
    .locals 3
    .param p1, "buffer"    # [S
    .param p2, "buflen"    # I
    .param p3, "offsetms"    # I
    .param p4, "accompanyShift"    # I

    .line 460
    const-string v0, "HwAutoTuneImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioBuffer  len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  offsetms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  accompanyShift:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 462
    const/4 v0, -0x1

    return v0

    .line 464
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsSetRefFilePath:Z

    if-nez v0, :cond_1

    .line 465
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "setRefFilePath first"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, -0x4

    return v0

    .line 468
    :cond_1
    const/4 v0, -0x3

    if-eqz p1, :cond_6

    array-length v1, p1

    if-lez v1, :cond_6

    array-length v1, p1

    const/high16 v2, 0x500000

    if-le v1, v2, :cond_2

    goto :goto_2

    .line 472
    :cond_2
    if-lez p2, :cond_5

    if-le p2, v2, :cond_3

    goto :goto_1

    .line 477
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/HwAutoTuneImpl;->nativeSetAudioBuffer([SIII)I

    move-result v0

    .line 478
    .local v0, "ret":I
    if-nez v0, :cond_4

    .line 479
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/HwAutoTuneImpl;->mIsSetBuffer:Z

    .line 480
    iget v1, p0, Landroid/media/HwAutoTuneImpl;->mCurrentSampleRate:I

    div-int v1, p2, v1

    iput v1, p0, Landroid/media/HwAutoTuneImpl;->mTimes:I

    goto :goto_0

    .line 482
    :cond_4
    const-string v1, "HwAutoTuneImpl"

    const-string v2, "setAudioBuffer fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_0
    return v0

    .line 473
    .end local v0    # "ret":I
    :cond_5
    :goto_1
    const-string v1, "HwAutoTuneImpl"

    const-string v2, "buffer length unvalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return v0

    .line 469
    :cond_6
    :goto_2
    const-string v1, "HwAutoTuneImpl"

    const-string v2, "buffer unvalid"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return v0
.end method

.method public setConfigFilePath(Ljava/lang/String;)I
    .locals 2
    .param p1, "configFilepath"    # Ljava/lang/String;

    .line 399
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "setConfigFilePath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 401
    const/4 v0, -0x1

    return v0

    .line 403
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsInitSuccess:Z

    if-nez v0, :cond_1

    .line 404
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "init first"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, -0x4

    return v0

    .line 407
    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 412
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/HwAutoTuneImpl;->nativeSetConfigFilePath(Ljava/lang/String;)I

    move-result v0

    .line 413
    .local v0, "ret":I
    return v0

    .line 408
    .end local v0    # "ret":I
    :cond_3
    :goto_0
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "configFilepath unvalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, -0x3

    return v0
.end method

.method public setParameter(Ljava/lang/String;)I
    .locals 3
    .param p1, "keyValuePair"    # Ljava/lang/String;

    .line 496
    const-string v0, "HwAutoTuneImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 498
    const/4 v0, -0x1

    return v0

    .line 500
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsSetBuffer:Z

    if-nez v0, :cond_1

    .line 501
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "setBuffer first"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, -0x4

    return v0

    .line 504
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 509
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/HwAutoTuneImpl;->nativeSetParameter(Ljava/lang/String;)I

    move-result v0

    .line 510
    .local v0, "ret":I
    if-eqz v0, :cond_3

    .line 511
    const-string v1, "HwAutoTuneImpl"

    const-string v2, "setParameter fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_3
    return v0

    .line 505
    .end local v0    # "ret":I
    :cond_4
    :goto_0
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "buffer length unvalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v0, -0x3

    return v0
.end method

.method public setRefFilePath(Ljava/lang/String;)I
    .locals 3
    .param p1, "refFilepath"    # Ljava/lang/String;

    .line 425
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "setRefFilePath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 427
    const/4 v0, -0x1

    return v0

    .line 429
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsInitSuccess:Z

    if-nez v0, :cond_1

    .line 430
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "init first"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, -0x4

    return v0

    .line 433
    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 438
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/HwAutoTuneImpl;->nativeSetRefFilePath(Ljava/lang/String;)I

    move-result v0

    .line 439
    .local v0, "ret":I
    if-nez v0, :cond_3

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/HwAutoTuneImpl;->mIsSetRefFilePath:Z

    goto :goto_0

    .line 442
    :cond_3
    const-string v1, "HwAutoTuneImpl"

    const-string v2, "setRefFilePath fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/HwAutoTuneImpl;->mIsSetRefFilePath:Z

    .line 445
    :goto_0
    return v0

    .line 434
    .end local v0    # "ret":I
    :cond_4
    :goto_1
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "refFilepath unvalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, -0x3

    return v0
.end method

.method public setSentenceCorrectFlag(IZ)I
    .locals 3
    .param p1, "sentenceIndex"    # I
    .param p2, "correctFlag"    # Z

    .line 609
    const-string v0, "HwAutoTuneImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSentenceCorrectFlag  index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 611
    const/4 v0, -0x1

    return v0

    .line 613
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsSetBuffer:Z

    if-nez v0, :cond_1

    .line 614
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "setBuffer first"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v0, -0x4

    return v0

    .line 617
    :cond_1
    if-gez p1, :cond_2

    .line 618
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "sentenceIndex unvalid"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v0, -0x3

    return v0

    .line 622
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/HwAutoTuneImpl;->nativeSetSentenceCorrectFlag(IZ)I

    move-result v0

    .line 623
    .local v0, "ret":I
    if-eqz v0, :cond_3

    .line 624
    const-string v1, "HwAutoTuneImpl"

    const-string v2, "setSentenceCorrectFlag fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_3
    return v0
.end method

.method public start(Z)I
    .locals 3
    .param p1, "mode"    # Z

    .line 556
    const-string v0, "HwAutoTuneImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 558
    const/4 v0, -0x1

    return v0

    .line 560
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsSetBuffer:Z

    if-nez v0, :cond_1

    .line 561
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "setBuffer first"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v0, -0x4

    return v0

    .line 565
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/HwAutoTuneImpl;->nativeStart(Z)I

    move-result v0

    .line 566
    .local v0, "ret":I
    iget v1, p0, Landroid/media/HwAutoTuneImpl;->mStartCounts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/HwAutoTuneImpl;->mStartCounts:I

    .line 567
    if-nez v0, :cond_2

    .line 568
    iget v1, p0, Landroid/media/HwAutoTuneImpl;->mSuccessCounts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/HwAutoTuneImpl;->mSuccessCounts:I

    .line 569
    const/4 v1, 0x0

    return v1

    .line 571
    :cond_2
    const-string v1, "HwAutoTuneImpl"

    const-string v2, "start fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return v0
.end method

.method public stop()I
    .locals 3

    .line 583
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget-boolean v0, Landroid/media/HwAutoTuneImpl;->HWAUTOTUNE_SUPPORT:Z

    if-nez v0, :cond_0

    .line 585
    const/4 v0, -0x1

    return v0

    .line 587
    :cond_0
    iget-boolean v0, p0, Landroid/media/HwAutoTuneImpl;->mIsInitSuccess:Z

    if-nez v0, :cond_1

    .line 588
    const-string v0, "HwAutoTuneImpl"

    const-string v1, "init first"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v0, -0x4

    return v0

    .line 592
    :cond_1
    invoke-direct {p0}, Landroid/media/HwAutoTuneImpl;->nativeStop()I

    move-result v0

    .line 593
    .local v0, "ret":I
    if-eqz v0, :cond_2

    .line 594
    const-string v1, "HwAutoTuneImpl"

    const-string v2, "stop fail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_2
    return v0
.end method
