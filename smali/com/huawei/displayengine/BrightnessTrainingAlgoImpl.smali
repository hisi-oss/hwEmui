.class Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;
.super Ljava/lang/Object;
.source "BrigntnessTrainingAlgoImpl.java"


# static fields
.field public static final ABORT_TRAINING:I = 0x5

.field public static final CREATE_TRAINING_ENGINE:I = 0x0

.field public static final CURVE_COUNT:I = 0x23

.field public static final DESTROY_TRAINING_ENGINE:I = 0x2

.field public static final ESCW_COUNT:I = 0x9

.field public static final GETPARAM_TRAINING_ENGINE:I = 0x4

.field public static final MAX_ALGO_RESULT:I = 0x7d0

.field public static final PROCESS_TRAINING_ENGINE:I = 0x1

.field public static final SETPARAM_TRAINING_ENGINE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DE J BrightnessTrainingAlgoImpl"

.field private static mAlgoXmlPath:Ljava/lang/String;


# instance fields
.field private mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

.field private final mContext:Landroid/content/Context;

.field private mHandle:I

.field private mIsAlgoExist:Z

.field private mLockJNI:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    const-string v0, ""

    sput-object v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoXmlPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mIsAlgoExist:Z

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mLockJNI:Ljava/lang/Object;

    .line 110
    const-string v0, "DE J BrightnessTrainingAlgoImpl"

    const-string v1, "BrightnessTrainingAlgoImpl enter"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object p1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method private destroyAlgo()I
    .locals 4

    .line 389
    iget-boolean v0, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mIsAlgoExist:Z

    if-eqz v0, :cond_1

    .line 390
    const/4 v0, 0x1

    iget v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v0

    .line 392
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 393
    const-string v1, "DE J BrightnessTrainingAlgoImpl"

    const-string v2, " DESTROY_TRAINING_ENGINE failed"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mIsAlgoExist:Z

    .line 396
    return v0

    .line 398
    .end local v0    # "ret":I
    :cond_1
    const-string v0, "DE J BrightnessTrainingAlgoImpl"

    const-string v1, " destroyAlgo failed, algo is not exist!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v0, -0x1

    return v0
.end method

.method private static getFloat([BI)F
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "accum":I
    const/4 v1, 0x0

    .local v1, "shiftBy":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 248
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "shiftBy":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method private processAlgo()I
    .locals 9

    .line 328
    const/4 v0, -0x1

    .line 329
    .local v0, "ret":I
    iget-object v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mLockJNI:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_0
    iget v2, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    iget-object v3, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6, v2, v4, v3, v5}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v2

    move v0, v2

    .line 333
    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 334
    const-string v3, "DE J BrightnessTrainingAlgoImpl"

    const-string v4, " SETPARAM_TRAINING_ENGINE failed"

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    monitor-exit v1

    return v2

    .line 339
    :cond_0
    iget v3, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    const/4 v7, 0x0

    invoke-static {v6, v3, v7, v5, v5}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v3

    move v0, v3

    .line 341
    if-eqz v0, :cond_1

    .line 342
    const-string v3, "DE J BrightnessTrainingAlgoImpl"

    const-string v4, " CREATE_TRAINING_ENGINE failed"

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    monitor-exit v1

    return v2

    .line 345
    :cond_1
    iput-boolean v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mIsAlgoExist:Z

    .line 346
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 349
    const/16 v1, 0x7d0

    new-array v3, v1, [B

    .line 350
    .local v3, "outbuffer":[B
    iget v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    invoke-static {v6, v1, v6, v5, v3}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v5

    .line 352
    .end local v0    # "ret":I
    .local v5, "ret":I
    if-eqz v5, :cond_2

    .line 353
    const-string v0, "DE J BrightnessTrainingAlgoImpl"

    const-string v1, " PROCESS_TRAINING_ENGINE failed!"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mLockJNI:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_1
    invoke-direct {p0}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->destroyAlgo()I

    .line 356
    monitor-exit v0

    .line 357
    return v2

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 360
    :cond_2
    const-string v0, "DE J BrightnessTrainingAlgoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ESCW "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v3, v7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v8, v3, v6

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-byte v8, v3, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", eswValue = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    aget-byte v4, v3, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0, v3}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->writeBrightnessCurve([B)I

    .line 365
    :try_start_2
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 366
    .local v0, "power":Landroid/os/IPowerManager;
    if-nez v0, :cond_3

    .line 367
    const-string v1, "DE J BrightnessTrainingAlgoImpl"

    const-string v4, "power is null !"

    invoke-static {v1, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mLockJNI:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 369
    :try_start_3
    invoke-direct {p0}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->destroyAlgo()I

    .line 370
    monitor-exit v1

    .line 371
    return v2

    .line 370
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    .line 373
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "CurveUpdateFlag"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    const-string v2, "PersonalizedBrightness"

    invoke-interface {v0, v2, v1}, Landroid/os/IPowerManager;->hwBrightnessSetData(Ljava/lang/String;Landroid/os/Bundle;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 378
    .end local v0    # "power":Landroid/os/IPowerManager;
    .end local v1    # "data":Landroid/os/Bundle;
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DE J BrightnessTrainingAlgoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call hwbrightness error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v2, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mLockJNI:Ljava/lang/Object;

    monitor-enter v2

    .line 382
    :try_start_5
    invoke-direct {p0}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->destroyAlgo()I

    .line 383
    monitor-exit v2

    .line 385
    return v7

    .line 383
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 346
    .end local v3    # "outbuffer":[B
    .end local v5    # "ret":I
    .local v0, "ret":I
    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2
.end method

.method private readBrightnessCurve()I
    .locals 14

    .line 176
    iget-object v0, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getInstance(Landroid/content/Context;)Lcom/huawei/displayengine/DisplayEngineDBManager;

    move-result-object v0

    .line 177
    .local v0, "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 178
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "dbManager is null"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v1

    .line 183
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v2, "low_text":Ljava/lang/StringBuffer;
    const-string v3, "BrightnessCurveLow"

    invoke-direct {p0, v0, v2, v3}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->readCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v3

    .line 185
    .local v3, "count":I
    if-gtz v3, :cond_1

    .line 186
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    const-string v5, "Read low failed!"

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v1

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeLowLuma:Ljava/lang/String;

    .line 190
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iput v3, v4, Lcom/huawei/displayengine/AlgoParam;->mLowLumaCount:I

    .line 193
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v4, "middle_text":Ljava/lang/StringBuffer;
    const-string v5, "BrightnessCurveMiddle"

    invoke-direct {p0, v0, v4, v5}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->readCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v3

    .line 195
    if-gtz v3, :cond_2

    .line 196
    const-string v5, "DE J BrightnessTrainingAlgoImpl"

    const-string v6, "Read middle failed!"

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v1

    .line 199
    :cond_2
    iget-object v5, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeMedialLuma:Ljava/lang/String;

    .line 200
    iget-object v5, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iput v3, v5, Lcom/huawei/displayengine/AlgoParam;->mMedialLumaCount:I

    .line 203
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v5, "hight_text":Ljava/lang/StringBuffer;
    const-string v6, "BrightnessCurveHigh"

    invoke-direct {p0, v0, v5, v6}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->readCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v3

    .line 205
    if-gtz v3, :cond_3

    .line 206
    const-string v6, "DE J BrightnessTrainingAlgoImpl"

    const-string v7, "Read hight failed!"

    invoke-static {v6, v7}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v1

    .line 209
    :cond_3
    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeHighLuma:Ljava/lang/String;

    .line 210
    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iput v3, v6, Lcom/huawei/displayengine/AlgoParam;->mHighLumaCount:I

    .line 213
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v6, "default_text":Ljava/lang/StringBuffer;
    const-string v7, "BrightnessCurveDefault"

    invoke-direct {p0, v0, v6, v7}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->readCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v3

    .line 215
    if-gtz v3, :cond_4

    .line 216
    const-string v7, "DE J BrightnessTrainingAlgoImpl"

    const-string v8, "Read default failed!"

    invoke-static {v7, v8}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v1

    .line 219
    :cond_4
    iget-object v7, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeDefaultLuma:Ljava/lang/String;

    .line 220
    iget-object v7, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iput v3, v7, Lcom/huawei/displayengine/AlgoParam;->mDefaultLumaCount:I

    .line 223
    const-string v7, "AlgorithmESCW"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v7, v8}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v7

    .line 224
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v7, :cond_7

    .line 225
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 226
    const-string v8, "DE J BrightnessTrainingAlgoImpl"

    const-string v9, "DisplayEngineDB ESCW size is 0"

    invoke-static {v8, v9}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v1

    .line 229
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v1, "text":Ljava/lang/StringBuffer;
    const-string v8, "["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 232
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 233
    .local v10, "data":Landroid/os/Bundle;
    const-string v11, "ESCW"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    .line 234
    .local v11, "escw":F
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    .end local v10    # "data":Landroid/os/Bundle;
    .end local v11    # "escw":F
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 236
    .end local v9    # "i":I
    :cond_6
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/huawei/displayengine/AlgoParam;->mESCW:Ljava/lang/String;

    .line 237
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    const/4 v10, 0x1

    iput v10, v9, Lcom/huawei/displayengine/AlgoParam;->mESCWCount:I

    .line 238
    .end local v1    # "text":Ljava/lang/StringBuffer;
    nop

    .line 242
    return v8

    .line 239
    :cond_7
    const-string v8, "DE J BrightnessTrainingAlgoImpl"

    const-string v9, "DisplayEngineDB ESCW = null"

    invoke-static {v8, v9}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v1
.end method

.method private readCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .locals 7
    .param p1, "dbManager"    # Lcom/huawei/displayengine/DisplayEngineDBManager;
    .param p2, "text"    # Ljava/lang/StringBuffer;
    .param p3, "name"    # Ljava/lang/String;

    .line 150
    const/4 v0, -0x1

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, p3, v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v1

    .line 156
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 158
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "DisplayEngineDB low curve size is 0"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v0

    .line 161
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 162
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 163
    .local v2, "data":Landroid/os/Bundle;
    const-string v3, "AmbientLight"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 164
    .local v3, "al":F
    const-string v4, "BackLight"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 165
    .local v4, "bl":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "al":F
    .end local v4    # "bl":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 168
    :cond_3
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0

    .line 151
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_4
    :goto_1
    const-string v1, "DE J BrightnessTrainingAlgoImpl"

    const-string v2, "text is null"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v0
.end method

.method private readDragInfo()I
    .locals 19

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getInstance(Landroid/content/Context;)Lcom/huawei/displayengine/DisplayEngineDBManager;

    move-result-object v1

    .line 116
    .local v1, "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    const-string v2, "DragInfo"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 117
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v3, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->getInstance(Landroid/content/Context;)Lcom/huawei/displayengine/DisplayEngineDataCleaner;

    move-result-object v3

    .line 118
    .local v3, "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->cleanData(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 119
    iget-object v5, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iput v4, v5, Lcom/huawei/displayengine/AlgoParam;->mDragCount:I

    .line 120
    iget-object v5, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iput v4, v5, Lcom/huawei/displayengine/AlgoParam;->mDragSize:I

    .line 121
    iget-object v5, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    const-string v6, ""

    iput-object v6, v5, Lcom/huawei/displayengine/AlgoParam;->mDragInfo:Ljava/lang/String;

    .line 122
    if-eqz v2, :cond_1

    .line 123
    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 124
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 125
    .local v6, "data":Landroid/os/Bundle;
    const-string v7, "TimeStamp"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 126
    .local v7, "time":J
    const-string v9, "StartPoint"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    .line 127
    .local v9, "start":F
    const-string v10, "StopPoint"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 128
    .local v10, "stop":F
    const-string v11, "AmbientLight"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 129
    .local v11, "al":I
    const-string v12, "ProximityPositive"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 130
    .local v12, "cover":Z
    move v13, v12

    .line 131
    .local v13, "cover_falg":I
    const-string v14, "AppType"

    invoke-virtual {v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 132
    .local v14, "appType":I
    const-string v15, "GameState"

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 133
    .local v15, "gameState":I
    const-string v4, "PackageName"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "pkgName":Ljava/lang/String;
    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    .end local v1    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    .local v16, "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    move-object/from16 v17, v2

    iget v2, v1, Lcom/huawei/displayengine/AlgoParam;->mDragCount:I

    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .local v17, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/huawei/displayengine/AlgoParam;->mDragCount:I

    .line 136
    iget-object v1, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    .end local v3    # "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    .local v18, "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    iget-object v3, v3, Lcom/huawei/displayengine/AlgoParam;->mDragInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/huawei/displayengine/AlgoParam;->mDragInfo:Ljava/lang/String;

    .line 123
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "time":J
    .end local v9    # "start":F
    .end local v10    # "stop":F
    .end local v11    # "al":I
    .end local v12    # "cover":Z
    .end local v13    # "cover_falg":I
    .end local v14    # "appType":I
    .end local v15    # "gameState":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 138
    .end local v5    # "i":I
    .end local v16    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    .end local v17    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v18    # "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    .restart local v1    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    .restart local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v3    # "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v1    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v3    # "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    .restart local v16    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    .restart local v17    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v18    # "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    iget-object v1, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v2, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v2, v2, Lcom/huawei/displayengine/AlgoParam;->mDragInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Lcom/huawei/displayengine/AlgoParam;->mDragSize:I

    goto :goto_1

    .line 141
    .end local v16    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    .end local v17    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v18    # "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    .restart local v1    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    .restart local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v3    # "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    :cond_1
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v1    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v3    # "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    .restart local v16    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    .restart local v17    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v18    # "dataCleaner":Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    :goto_1
    iget-object v1, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v1, v1, Lcom/huawei/displayengine/AlgoParam;->mDragCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    .line 142
    const-string v1, "DE J BrightnessTrainingAlgoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DragInfo number is not enough ! count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v3, v3, Lcom/huawei/displayengine/AlgoParam;->mDragCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, -0x1

    return v1

    .line 145
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private writeBrightnessCurve([B)I
    .locals 10
    .param p1, "curve"    # [B

    .line 275
    iget-object v0, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getInstance(Landroid/content/Context;)Lcom/huawei/displayengine/DisplayEngineDBManager;

    move-result-object v0

    .line 276
    .local v0, "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 277
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "dbManager is null"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v1

    .line 280
    :cond_0
    const/4 v2, 0x0

    .line 281
    .local v2, "offset":I
    const/4 v3, 0x0

    .line 284
    .local v3, "buffer_offset":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 285
    .local v4, "data":Landroid/os/Bundle;
    const/16 v5, 0x9

    new-array v6, v5, [F

    .line 287
    .local v6, "escwValues":[F
    const/4 v7, 0x0

    move v8, v2

    move v2, v7

    .local v2, "i":I
    .local v8, "offset":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 288
    mul-int/lit8 v9, v2, 0x4

    add-int v8, v3, v9

    .line 289
    invoke-static {p1, v8}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->getFloat([BI)F

    move-result v9

    aput v9, v6, v2

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x24

    .line 293
    .end local v3    # "buffer_offset":I
    .local v2, "buffer_offset":I
    const-string v3, "ESCW"

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 294
    const-string v3, "AlgorithmESCW"

    invoke-virtual {v0, v3, v4}, Lcom/huawei/displayengine/DisplayEngineDBManager;->addorUpdateRecord(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 297
    const-string v3, "BrightnessCurveLow"

    invoke-direct {p0, v0, p1, v3, v2}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->writeCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;[BLjava/lang/String;I)I

    move-result v2

    .line 298
    if-gtz v2, :cond_2

    .line 299
    const-string v3, "DE J BrightnessTrainingAlgoImpl"

    const-string v5, "Write  low curvefailed! "

    invoke-static {v3, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v1

    .line 304
    :cond_2
    const-string v3, "BrightnessCurveMiddle"

    invoke-direct {p0, v0, p1, v3, v2}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->writeCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;[BLjava/lang/String;I)I

    move-result v2

    .line 305
    if-gtz v2, :cond_3

    .line 306
    const-string v3, "DE J BrightnessTrainingAlgoImpl"

    const-string v5, "Write  middle curve failed! "

    invoke-static {v3, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return v1

    .line 311
    :cond_3
    const-string v3, "BrightnessCurveHigh"

    invoke-direct {p0, v0, p1, v3, v2}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->writeCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;[BLjava/lang/String;I)I

    move-result v2

    .line 312
    if-gtz v2, :cond_4

    .line 313
    const-string v3, "DE J BrightnessTrainingAlgoImpl"

    const-string v5, "Write  middle high failed! "

    invoke-static {v3, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v1

    .line 318
    :cond_4
    const-string v3, "BrightnessCurveDefault"

    invoke-direct {p0, v0, p1, v3, v2}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->writeCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;[BLjava/lang/String;I)I

    move-result v2

    .line 319
    if-gtz v2, :cond_5

    .line 320
    const-string v3, "DE J BrightnessTrainingAlgoImpl"

    const-string v5, "Write  middle default failed! "

    invoke-static {v3, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v1

    .line 324
    :cond_5
    return v7
.end method

.method private writeCurveByTag(Lcom/huawei/displayengine/DisplayEngineDBManager;[BLjava/lang/String;I)I
    .locals 7
    .param p1, "dbManager"    # Lcom/huawei/displayengine/DisplayEngineDBManager;
    .param p2, "curve"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "buffer_offset"    # I

    .line 254
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 258
    .local v0, "data":Landroid/os/Bundle;
    const/16 v1, 0x23

    new-array v2, v1, [F

    .line 259
    .local v2, "alValues":[F
    new-array v3, v1, [F

    .line 260
    .local v3, "blValues":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 261
    mul-int/lit8 v5, v4, 0x8

    add-int/2addr v5, p4

    .line 262
    .local v5, "offset":I
    invoke-static {p2, v5}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->getFloat([BI)F

    move-result v6

    aput v6, v2, v4

    .line 263
    add-int/lit8 v6, v5, 0x4

    invoke-static {p2, v6}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->getFloat([BI)F

    move-result v6

    aput v6, v3, v4

    .line 260
    .end local v5    # "offset":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    .end local v4    # "i":I
    :cond_1
    add-int/lit16 p4, p4, 0x118

    .line 267
    const-string v1, "AmbientLight"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 268
    const-string v1, "BackLight"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 269
    invoke-virtual {p1, p3, v0}, Lcom/huawei/displayengine/DisplayEngineDBManager;->addorUpdateRecord(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 271
    return p4

    .line 255
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "alValues":[F
    .end local v3    # "blValues":[F
    :cond_2
    :goto_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public abortTraining()I
    .locals 7

    .line 521
    iget-object v0, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mLockJNI:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    iget v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mIsAlgoExist:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    const/4 v1, 0x1

    iget v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6, v6}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v1

    .line 528
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 529
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v4, " nativeDeinitAlgorithm failed! "

    invoke-static {v2, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    monitor-exit v0

    return v3

    .line 532
    :cond_1
    monitor-exit v0

    return v2

    .line 523
    .end local v1    # "ret":I
    :cond_2
    :goto_0
    const-string v1, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "abortTraining: PROCESS_TRAINING_ENGINE is not running."

    invoke-static {v1, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    monitor-exit v0

    return v2

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processTraining()I
    .locals 14

    .line 405
    const-string v0, "DE J BrightnessTrainingAlgoImpl"

    const-string v1, "processTraining  start !! "

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "ret":I
    new-instance v1, Lcom/huawei/displayengine/AlgoParam;

    invoke-direct {v1}, Lcom/huawei/displayengine/AlgoParam;-><init>()V

    iput-object v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    .line 409
    invoke-direct {p0}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->readDragInfo()I

    move-result v0

    .line 410
    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 411
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "no DragInfo ! "

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v1

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->readBrightnessCurve()I

    move-result v0

    .line 415
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 416
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    const-string v5, "no BrightnessCurve  in DataBase! "

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 420
    .local v4, "power":Landroid/os/IPowerManager;
    if-nez v4, :cond_1

    .line 421
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "power is null"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v1

    .line 424
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 425
    .local v5, "data":Landroid/os/Bundle;
    const-string v6, "PersonalizedBrightness"

    invoke-interface {v4, v6, v5}, Landroid/os/IPowerManager;->hwBrightnessGetData(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v6

    .line 426
    .local v6, "ret_value":I
    const-string v7, "DefaultCurve"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 427
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    if-nez v7, :cond_2

    .line 428
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "list is null!"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v1

    .line 431
    :cond_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 432
    .local v8, "text":Ljava/lang/StringBuffer;
    move v9, v2

    .local v9, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 433
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    .line 434
    .local v10, "al":F
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 435
    .local v11, "bl":F
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    .end local v10    # "al":F
    .end local v11    # "bl":F
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 437
    .end local v9    # "i":I
    :cond_3
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeLowLuma:Ljava/lang/String;

    .line 438
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v9, Lcom/huawei/displayengine/AlgoParam;->mLowLumaCount:I

    .line 440
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeMedialLuma:Ljava/lang/String;

    .line 441
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v9, Lcom/huawei/displayengine/AlgoParam;->mMedialLumaCount:I

    .line 443
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeHighLuma:Ljava/lang/String;

    .line 444
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v9, Lcom/huawei/displayengine/AlgoParam;->mHighLumaCount:I

    .line 446
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeDefaultLuma:Ljava/lang/String;

    .line 447
    iget-object v9, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v9, Lcom/huawei/displayengine/AlgoParam;->mDefaultLumaCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v4    # "power":Landroid/os/IPowerManager;
    .end local v5    # "data":Landroid/os/Bundle;
    .end local v6    # "ret_value":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    .end local v8    # "text":Ljava/lang/StringBuffer;
    nop

    .line 453
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    const-string v5, "[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]"

    iput-object v5, v4, Lcom/huawei/displayengine/AlgoParam;->mESCW:Ljava/lang/String;

    .line 454
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iput v3, v4, Lcom/huawei/displayengine/AlgoParam;->mESCWCount:I

    .line 456
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iput v3, v4, Lcom/huawei/displayengine/AlgoParam;->mFirstInital:I

    goto :goto_1

    .line 448
    :catch_0
    move-exception v2

    .line 449
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "DE J BrightnessTrainingAlgoImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call hwbrightness error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return v1

    .line 459
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mLowLumaCount:I

    const/16 v5, 0x23

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mMedialLumaCount:I

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mHighLumaCount:I

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mDefaultLumaCount:I

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mESCWCount:I

    if-eq v4, v3, :cond_5

    goto/16 :goto_2

    .line 470
    :cond_5
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, v5, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeLowLuma:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/huawei/displayengine/AlgoParam;->mLowLumaSize:I

    .line 471
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, v5, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeMedialLuma:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/huawei/displayengine/AlgoParam;->mMedialLumaSize:I

    .line 472
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, v5, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeHighLuma:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/huawei/displayengine/AlgoParam;->mHighLumaSize:I

    .line 473
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, v5, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeDefaultLuma:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/huawei/displayengine/AlgoParam;->mDefaultLumaSize:I

    .line 474
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v5, v5, Lcom/huawei/displayengine/AlgoParam;->mESCW:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/huawei/displayengine/AlgoParam;->mESCWSize:I

    .line 476
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mDragInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v6, v6, Lcom/huawei/displayengine/AlgoParam;->mDragInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mDragSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v6, v6, Lcom/huawei/displayengine/AlgoParam;->mDragSize:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mDragCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v6, v6, Lcom/huawei/displayengine/AlgoParam;->mDragCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mBLCurveTypeLowLuma: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v6, v6, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeLowLuma:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mLowLumaCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v6, v6, Lcom/huawei/displayengine/AlgoParam;->mLowLumaCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mBLCurveTypeMedialLuma: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v6, v6, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeMedialLuma:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mMedialLumaCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v6, v6, Lcom/huawei/displayengine/AlgoParam;->mMedialLumaCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mBLCurveTypeHighLuma: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v6, v6, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeHighLuma:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mHighLumaCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v6, v6, Lcom/huawei/displayengine/AlgoParam;->mHighLumaCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mBLCurveTypeDefaultLuma: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v6, v6, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeDefaultLuma:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mDefaultLumaCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v6, v6, Lcom/huawei/displayengine/AlgoParam;->mDefaultLumaCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mESCW: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget-object v6, v6, Lcom/huawei/displayengine/AlgoParam;->mESCW:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mESCWCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v6, v6, Lcom/huawei/displayengine/AlgoParam;->mESCWCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mLockJNI:Ljava/lang/Object;

    monitor-enter v4

    .line 491
    :try_start_1
    invoke-static {v3}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeInitAlgorithm(I)I

    move-result v5

    move v0, v5

    .line 492
    if-ltz v0, :cond_8

    .line 493
    iput v0, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    .line 499
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 502
    invoke-direct {p0}, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->processAlgo()I

    move-result v0

    .line 503
    if-eqz v0, :cond_6

    .line 504
    const-string v4, "DE J BrightnessTrainingAlgoImpl"

    const-string v5, " processAlgo failed! "

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_6
    iget-object v5, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mLockJNI:Ljava/lang/Object;

    monitor-enter v5

    .line 508
    :try_start_2
    iget v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeDeinitAlgorithm(II)I

    move-result v3

    move v0, v3

    .line 509
    iput v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    .line 510
    if-eqz v0, :cond_7

    .line 511
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, " nativeDeinitAlgorithm failed! "

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    monitor-exit v5

    return v1

    .line 514
    :cond_7
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 516
    const-string v1, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "processTraining  stop "

    invoke-static {v1, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v2

    .line 514
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 495
    :cond_8
    :try_start_4
    iput v1, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mHandle:I

    .line 496
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "nativeInitAlgorithm failed! "

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    monitor-exit v4

    return v1

    .line 499
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 461
    :cond_9
    :goto_2
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    const-string v3, "Count is not correct ! "

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LowLumaCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mLowLumaCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MedialLumaCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mMedialLumaCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HighLumaCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mHighLumaCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultLumaCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mDefaultLumaCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v2, "DE J BrightnessTrainingAlgoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ESCWCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/huawei/displayengine/BrightnessTrainingAlgoImpl;->mAlgoInfo:Lcom/huawei/displayengine/AlgoParam;

    iget v4, v4, Lcom/huawei/displayengine/AlgoParam;->mESCWCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v1
.end method
