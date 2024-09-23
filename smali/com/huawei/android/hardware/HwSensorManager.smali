.class public Lcom/huawei/android/hardware/HwSensorManager;
.super Ljava/lang/Object;
.source "HwSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;
    }
.end annotation


# static fields
.field private static final ACCELERATE_SPEED_THRESHOLD:I = 0xe

.field private static final DEBUG:Z = false

.field private static final MESSAGE_SWING:I = 0x1

.field private static final NANON_TO_SECOND_UNITs:F = 1.0E-9f

.field public static final SENSOR_CHANGE_DIRECTION_TO_BOTTOM:I = 0x4

.field public static final SENSOR_CHANGE_DIRECTION_TO_LEFT:I = 0x1

.field public static final SENSOR_CHANGE_DIRECTION_TO_RIGHT:I = 0x2

.field public static final SENSOR_CHANGE_DIRECTION_TO_TOP:I = 0x3

.field private static final SENSOR_CORRENT_THRESHOLD:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "HwSensorManager"

.field public static final TYPE_DIRECTION_CHANGED_WITH_ROTATION:I = 0x1

.field public static final TYPE_DIRECTION_HORIZONTAL_WITH_ROTATION:I = 0x4

.field public static final TYPE_DIRECTION_VERTICAL_WITH_ROTATION:I = 0x2

.field public static final TYPE_MAX:I = 0x20

.field public static final TYPE_MAX_GYRO:I = 0x10

.field public static final TYPE_SWING:I = 0x10

.field public static final TYPE_TILT_TO_MOVE:I = 0x8

.field private static final VERSION:Ljava/lang/String; = "1.0.0"


# instance fields
.field private mAngleDeltaX:F

.field private mAngleDeltaY:F

.field private mAngleRevisedY:F

.field private mAngleX:F

.field private mAngleY:F

.field private mAngularSpeedThreshold:F

.field private mDelayUs:I

.field private mDirection:I

.field private mHandler:Landroid/os/Handler;

.field mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSwingDelay:I

.field private mSwingThreshold:F

.field private mTimeStamp:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 115
    const-string v0, "HwSensorManager"

    const-string v1, "HwSensorManager version: 1.0.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/16 v0, 0x7530

    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDelayUs:I

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDirection:I

    .line 219
    const/16 v0, 0x258

    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSwingDelay:I

    .line 221
    new-instance v0, Lcom/huawei/android/hardware/HwSensorManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/hardware/HwSensorManager$1;-><init>(Lcom/huawei/android/hardware/HwSensorManager;)V

    iput-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mHandler:Landroid/os/Handler;

    .line 249
    if-nez p1, :cond_0

    .line 250
    const-string v0, "HwSensorManager"

    const-string v1, "SensorDataManager() context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 254
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 255
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 256
    const-string v0, "HwSensorManager"

    const-string v1, "Cannot get system service : sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 261
    :cond_1
    const v0, 0x40490fdb    # (float)Math.PI

    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngularSpeedThreshold:F

    .line 262
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSwingThreshold:F

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hardware/HwSensorManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/huawei/android/hardware/HwSensorManager;

    .line 39
    invoke-direct {p0}, Lcom/huawei/android/hardware/HwSensorManager;->resetSensorData()V

    return-void
.end method

.method private getAngleLagerThanPI(F)F
    .locals 5
    .param p1, "angle"    # F

    .line 618
    move v0, p1

    .line 619
    .local v0, "temp":F
    float-to-double v1, p1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 620
    const/4 v0, 0x0

    goto :goto_0

    .line 621
    :cond_0
    float-to-double v1, v0

    const-wide v3, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    .line 622
    const/4 v0, 0x0

    .line 624
    :cond_1
    :goto_0
    return v0
.end method

.method private getDefaultDelay(I)I
    .locals 1
    .param p1, "rate"    # I

    .line 533
    const/4 v0, -0x1

    .line 534
    .local v0, "delay":I
    packed-switch p1, :pswitch_data_0

    .line 548
    move v0, p1

    goto :goto_0

    .line 545
    :pswitch_0
    const v0, 0x30d40

    .line 546
    goto :goto_0

    .line 542
    :pswitch_1
    const v0, 0x1046b

    .line 543
    goto :goto_0

    .line 539
    :pswitch_2
    const/16 v0, 0x4e20

    .line 540
    goto :goto_0

    .line 536
    :pswitch_3
    const/4 v0, 0x0

    .line 537
    nop

    .line 551
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDirectionChanged(FFFF)Z
    .locals 3
    .param p1, "wy"    # F
    .param p2, "wx"    # F
    .param p3, "angley"    # F
    .param p4, "anglex"    # F

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "direction":I
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 564
    iget v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngularSpeedThreshold:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 566
    const/4 v0, 0x2

    goto :goto_0

    .line 567
    :cond_0
    iget v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngularSpeedThreshold:F

    neg-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    .line 569
    const/4 v0, 0x1

    goto :goto_0

    .line 573
    :cond_1
    iget v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngularSpeedThreshold:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    .line 575
    const/4 v0, 0x4

    goto :goto_0

    .line 577
    :cond_2
    iget v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngularSpeedThreshold:F

    neg-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    .line 579
    const/4 v0, 0x3

    .line 583
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    iget v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDirection:I

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 586
    :cond_4
    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDirection:I

    .line 588
    const/4 v1, 0x1

    return v1

    .line 584
    :cond_5
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method private isValid(I)Z
    .locals 1
    .param p1, "sensorType"    # I

    .line 506
    if-lez p1, :cond_0

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerSystemSensor(II)Z
    .locals 5
    .param p1, "delayUs"    # I
    .param p2, "type"    # I

    .line 518
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 519
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 520
    const-string v1, "HwSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unspported system sensor type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v1, 0x0

    return v1

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 525
    .local v1, "rt":Z
    if-nez v1, :cond_1

    .line 526
    const-string v2, "HwSensorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_1
    return v1
.end method

.method private resetSensorData()V
    .locals 1

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleDeltaY:F

    .line 629
    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleDeltaX:F

    .line 630
    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleRevisedY:F

    .line 631
    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleX:F

    .line 632
    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleY:F

    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDirection:I

    .line 634
    return-void
.end method

.method private reviseAngleY(FF)F
    .locals 2
    .param p1, "angley"    # F
    .param p2, "anglex"    # F

    .line 606
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3fc90fdb

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e32b8c3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 607
    iput p1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleRevisedY:F

    .line 614
    :cond_0
    iget v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleRevisedY:F

    return v0
.end method


# virtual methods
.method public getSensorDelay()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDelayUs:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 420
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 331
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    goto/16 :goto_1

    .line 348
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    .line 349
    .local v0, "gyro_wx":F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    .line 350
    .local v5, "gyro_wy":F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v1

    .line 353
    .local v6, "gyro_wz":F
    iget-wide v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mTimeStamp:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 354
    iget-wide v7, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v9, p0, Lcom/huawei/android/hardware/HwSensorManager;->mTimeStamp:J

    sub-long/2addr v7, v9

    long-to-float v7, v7

    .line 355
    .local v7, "dT":F
    mul-float v8, v5, v7

    const v9, 0x3089705f    # 1.0E-9f

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleDeltaY:F

    .line 356
    mul-float v8, v0, v7

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleDeltaX:F

    .line 358
    .end local v7    # "dT":F
    :cond_1
    iget-wide v7, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mTimeStamp:J

    .line 361
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3dcccccd    # 0.1f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 362
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 363
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iget-object v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    if-eqz v7, :cond_2

    .line 366
    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    invoke-interface {v1}, Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;->onCorrect()V

    .line 370
    invoke-direct {p0}, Lcom/huawei/android/hardware/HwSensorManager;->resetSensorData()V

    goto/16 :goto_1

    .line 376
    :cond_2
    iget v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleY:F

    iget v8, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleDeltaY:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleY:F

    .line 377
    iget v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleX:F

    iget v8, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleDeltaX:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleX:F

    .line 380
    iget v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleY:F

    invoke-direct {p0, v7}, Lcom/huawei/android/hardware/HwSensorManager;->getAngleLagerThanPI(F)F

    move-result v7

    iput v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleY:F

    .line 381
    iget v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleX:F

    invoke-direct {p0, v7}, Lcom/huawei/android/hardware/HwSensorManager;->getAngleLagerThanPI(F)F

    move-result v7

    iput v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleX:F

    .line 384
    iget v7, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleY:F

    iget v8, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleX:F

    invoke-direct {p0, v7, v8}, Lcom/huawei/android/hardware/HwSensorManager;->reviseAngleY(FF)F

    move-result v7

    .line 386
    .local v7, "angle_y":F
    iget v8, p0, Lcom/huawei/android/hardware/HwSensorManager;->mType:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    if-eqz v8, :cond_3

    .line 387
    iget-object v8, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    iget v9, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleDeltaY:F

    iget v10, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleDeltaX:F

    invoke-interface {v8, v9, v10}, Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;->onTiltToMove(FF)V

    .line 390
    :cond_3
    iget v8, p0, Lcom/huawei/android/hardware/HwSensorManager;->mType:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_4

    .line 391
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_4
    iget v4, p0, Lcom/huawei/android/hardware/HwSensorManager;->mType:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    .line 393
    const/4 v5, 0x0

    .line 396
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mHandler:Landroid/os/Handler;

    .line 397
    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngleX:F

    .line 398
    invoke-direct {p0, v5, v0, v7, v1}, Lcom/huawei/android/hardware/HwSensorManager;->getDirectionChanged(FFFF)Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    nop

    :cond_6
    move v1, v2

    .line 404
    .local v1, "directionChanged":Z
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    if-eqz v2, :cond_7

    .line 405
    iget-object v2, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    iget v3, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDirection:I

    invoke-interface {v2, v3}, Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;->onDirectionChanged(I)V

    .line 406
    invoke-direct {p0}, Lcom/huawei/android/hardware/HwSensorManager;->resetSensorData()V

    .line 409
    .end local v1    # "directionChanged":Z
    .end local v7    # "angle_y":F
    :cond_7
    goto :goto_1

    .line 333
    .end local v0    # "gyro_wx":F
    .end local v5    # "gyro_wy":F
    .end local v6    # "gyro_wz":F
    :cond_8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 334
    .local v0, "values":[F
    const/4 v4, 0x0

    .line 335
    .local v4, "isSwing":Z
    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSwingThreshold:F

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_9

    aget v2, v0, v3

    .line 336
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSwingThreshold:F

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_9

    aget v1, v0, v1

    .line 337
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSwingThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 338
    :cond_9
    const/4 v4, 0x1

    .line 341
    :cond_a
    if-eqz v4, :cond_b

    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_b

    .line 342
    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSwingDelay:I

    int-to-long v5, v2

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 415
    .end local v0    # "values":[F
    .end local v4    # "isSwing":Z
    :cond_b
    :goto_1
    return-void
.end method

.method public registerSensorListener(I)Z
    .locals 1
    .param p1, "sensorType"    # I

    .line 275
    iget v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDelayUs:I

    invoke-virtual {p0, p1, v0}, Lcom/huawei/android/hardware/HwSensorManager;->registerSensorListener(II)Z

    move-result v0

    return v0
.end method

.method public registerSensorListener(II)Z
    .locals 6
    .param p1, "sensorType"    # I
    .param p2, "rateUs"    # I

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "isRegistered":Z
    const/4 v1, 0x0

    .line 308
    .local v1, "swingEventRegistered":Z
    invoke-direct {p0, p1}, Lcom/huawei/android/hardware/HwSensorManager;->isValid(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_0

    .line 309
    invoke-direct {p0, p2, v3}, Lcom/huawei/android/hardware/HwSensorManager;->registerSystemSensor(II)Z

    move-result v0

    .line 310
    const/4 v1, 0x1

    .line 314
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/android/hardware/HwSensorManager;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x10

    if-ge p1, v2, :cond_3

    .line 315
    invoke-direct {p0}, Lcom/huawei/android/hardware/HwSensorManager;->resetSensorData()V

    .line 316
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/huawei/android/hardware/HwSensorManager;->mTimeStamp:J

    .line 317
    const/4 v2, 0x4

    invoke-direct {p0, p2, v2}, Lcom/huawei/android/hardware/HwSensorManager;->registerSystemSensor(II)Z

    move-result v2

    .line 318
    .local v2, "registered":Z
    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    move v0, v3

    .line 321
    .end local v2    # "registered":Z
    :cond_3
    invoke-direct {p0, p2}, Lcom/huawei/android/hardware/HwSensorManager;->getDefaultDelay(I)I

    move-result v2

    iput v2, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDelayUs:I

    .line 322
    iget v2, p0, Lcom/huawei/android/hardware/HwSensorManager;->mType:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/huawei/android/hardware/HwSensorManager;->mType:I

    .line 323
    return v0
.end method

.method public setAngularSpeedThreshold(F)V
    .locals 0
    .param p1, "w"    # F

    .line 438
    iput p1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mAngularSpeedThreshold:F

    .line 439
    return-void
.end method

.method public setMoveDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 465
    iput p1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mDirection:I

    .line 466
    return-void
.end method

.method public setRotationAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .line 432
    return-void
.end method

.method public setSensorListener(Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;)V
    .locals 0
    .param p1, "detector"    # Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    .line 457
    iput-object p1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorEventDetector:Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;

    .line 458
    return-void
.end method

.method public setSwingDelay(I)V
    .locals 0
    .param p1, "mS"    # I

    .line 461
    iput p1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSwingDelay:I

    .line 462
    return-void
.end method

.method public setSwingThreshold(F)V
    .locals 0
    .param p1, "speed"    # F

    .line 446
    iput p1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSwingThreshold:F

    .line 447
    return-void
.end method

.method public unRegisterListener(I)V
    .locals 3
    .param p1, "sensorType"    # I

    .line 483
    invoke-direct {p0, p1}, Lcom/huawei/android/hardware/HwSensorManager;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    const-string v0, "HwSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterListener type invalid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void

    .line 487
    :cond_0
    iget v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mType:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mType:I

    .line 488
    invoke-direct {p0}, Lcom/huawei/android/hardware/HwSensorManager;->resetSensorData()V

    .line 489
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mTimeStamp:J

    .line 490
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 492
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 494
    .local v0, "sensor":Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 495
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    if-ge p1, v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 497
    .restart local v0    # "sensor":Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 499
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :cond_2
    :goto_0
    return-void
.end method

.method public unRegisterListeners()V
    .locals 2

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mType:I

    .line 473
    invoke-direct {p0}, Lcom/huawei/android/hardware/HwSensorManager;->resetSensorData()V

    .line 474
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mTimeStamp:J

    .line 475
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/huawei/android/hardware/HwSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 477
    return-void
.end method
