.class public Landroid/rms/HwAppInnerBoostImpl;
.super Ljava/lang/Object;
.source "HwAppInnerBoostImpl.java"

# interfaces
.implements Landroid/rms/IHwAppInnerBoost;


# static fields
.field private static final BOOST_FLAG:Z

.field private static final DOWN_INTERVAL:I = 0x7d0

.field private static final LONG_SLIDE_BOOST_DURATION:I = 0x3a98

.field private static final LONG_SLIDE_THRESHOLD:I = 0x14

.field private static final MAX_MOVE_COUNT:I = 0x14

.field private static final MOVE_DISTANCE:F = 24.0f

.field private static final MSG_TYPE_JITTER:Ljava/lang/String; = "2"

.field private static final MSG_TYPE_TRAVERSAL:Ljava/lang/String; = "1"

.field private static final REPORT_DURATION_CLICK:I

.field private static final REPORT_DURATION_SLIDE:I

.field private static final REPORT_INTERVAL:I = 0xfa

.field private static final REPORT_TIMES_CLICK:I

.field private static final REPORT_TIMES_SLIDE:I

.field private static final SCENE_TYPE_CLICK:I = 0x2

.field private static final SCENE_TYPE_INVALID:I = 0x0

.field private static final SCENE_TYPE_SLIDE:I = 0x1

.field private static final SKIPPED_FRAMES:I = 0x3

.field private static final SLIGHT_MOVE_DISTANCE:F = 15.0f

.field private static final TAG:Ljava/lang/String; = "HwAppInnerBoostImpl"

.field private static volatile instance:Landroid/rms/HwAppInnerBoostImpl;


# instance fields
.field private canLongSlideBoost:Z

.field private downX:F

.field private downY:F

.field private initialized:Z

.field private jitterReportTimes:I

.field private lastDownTime:J

.field private lastJitterReportTime:J

.field private lastLongSlideBoostTime:J

.field private lastMoveY:F

.field private lastTraversalReportTime:J

.field private moveCount:I

.field private packageName:Ljava/lang/String;

.field private reportDuration:I

.field private reportTimes:I

.field private sceneType:I

.field private traversalReportTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-string v0, "persist.sys.enable_iaware"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.iaware.appboost.switch"

    .line 51
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    sput-boolean v1, Landroid/rms/HwAppInnerBoostImpl;->BOOST_FLAG:Z

    .line 52
    const-string v0, "persist.sys.iaware.appboost.click_duration"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_DURATION_CLICK:I

    .line 53
    const-string v0, "persist.sys.iaware.appboost.click_times"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_TIMES_CLICK:I

    .line 54
    const-string v0, "persist.sys.iaware.appboost.slide_duration"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_DURATION_SLIDE:I

    .line 55
    const-string v0, "persist.sys.iaware.appboost.slide_times"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_TIMES_SLIDE:I

    .line 57
    const/4 v0, 0x0

    sput-object v0, Landroid/rms/HwAppInnerBoostImpl;->instance:Landroid/rms/HwAppInnerBoostImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/rms/HwAppInnerBoostImpl;->initialized:Z

    .line 72
    iput-boolean v0, p0, Landroid/rms/HwAppInnerBoostImpl;->canLongSlideBoost:Z

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/rms/HwAppInnerBoostImpl;->packageName:Ljava/lang/String;

    .line 75
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    .line 76
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->moveCount:I

    .line 78
    const/4 v1, 0x0

    iput v1, p0, Landroid/rms/HwAppInnerBoostImpl;->downX:F

    .line 79
    iput v1, p0, Landroid/rms/HwAppInnerBoostImpl;->downY:F

    .line 80
    iput v1, p0, Landroid/rms/HwAppInnerBoostImpl;->lastMoveY:F

    .line 82
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/rms/HwAppInnerBoostImpl;->lastDownTime:J

    .line 83
    iput-wide v1, p0, Landroid/rms/HwAppInnerBoostImpl;->lastTraversalReportTime:J

    .line 84
    iput-wide v1, p0, Landroid/rms/HwAppInnerBoostImpl;->lastJitterReportTime:J

    .line 85
    iput-wide v1, p0, Landroid/rms/HwAppInnerBoostImpl;->lastLongSlideBoostTime:J

    .line 87
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->traversalReportTimes:I

    .line 88
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->jitterReportTimes:I

    .line 89
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportTimes:I

    .line 90
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportDuration:I

    return-void
.end method

.method private asyncReport(JLjava/lang/String;IJ)V
    .locals 5
    .param p1, "frameTime"    # J
    .param p3, "msgType"    # Ljava/lang/String;
    .param p4, "frameTimes"    # I
    .param p5, "skippedFrames"    # J

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "message":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/rms/HwAppInnerBoostImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbd9

    invoke-static {v2, v1, p1, p2}, Landroid/rms/iaware/IAwareSdk;->asyncReportData(ILjava/lang/String;J)V

    .line 266
    const-string v1, "HwAppInnerBoostImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncReportData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/rms/HwAppInnerBoostImpl;->lastDownTime:J

    sub-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public static getDefault()Landroid/rms/HwAppInnerBoostImpl;
    .locals 2

    .line 60
    sget-object v0, Landroid/rms/HwAppInnerBoostImpl;->instance:Landroid/rms/HwAppInnerBoostImpl;

    if-nez v0, :cond_1

    .line 61
    const-class v0, Landroid/rms/HwAppInnerBoostImpl;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Landroid/rms/HwAppInnerBoostImpl;->instance:Landroid/rms/HwAppInnerBoostImpl;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Landroid/rms/HwAppInnerBoostImpl;

    invoke-direct {v1}, Landroid/rms/HwAppInnerBoostImpl;-><init>()V

    sput-object v1, Landroid/rms/HwAppInnerBoostImpl;->instance:Landroid/rms/HwAppInnerBoostImpl;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Landroid/rms/HwAppInnerBoostImpl;->instance:Landroid/rms/HwAppInnerBoostImpl;

    return-object v0
.end method

.method private isMoved(FFFF)Z
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 270
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    sub-float v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isMovedSlight(FF)Z
    .locals 2
    .param p1, "y1"    # F
    .param p2, "y2"    # F

    .line 274
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onDown(JFF)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->moveCount:I

    .line 201
    iput-boolean v0, p0, Landroid/rms/HwAppInnerBoostImpl;->canLongSlideBoost:Z

    .line 203
    iget-wide v1, p0, Landroid/rms/HwAppInnerBoostImpl;->lastDownTime:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    iput p3, p0, Landroid/rms/HwAppInnerBoostImpl;->downX:F

    .line 208
    iput p4, p0, Landroid/rms/HwAppInnerBoostImpl;->downY:F

    .line 209
    iget v1, p0, Landroid/rms/HwAppInnerBoostImpl;->downY:F

    iput v1, p0, Landroid/rms/HwAppInnerBoostImpl;->lastMoveY:F

    .line 210
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->traversalReportTimes:I

    .line 211
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->jitterReportTimes:I

    .line 212
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportDuration:I

    .line 213
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportTimes:I

    .line 214
    iput-wide p1, p0, Landroid/rms/HwAppInnerBoostImpl;->lastDownTime:J

    .line 215
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/rms/HwAppInnerBoostImpl;->lastLongSlideBoostTime:J

    .line 216
    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    .line 217
    return-void
.end method

.method private onKeyEvent(Landroid/view/KeyEvent;J)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "now"    # J

    .line 183
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    invoke-direct {p0, p2, p3, p1}, Landroid/rms/HwAppInnerBoostImpl;->onKeyUp(JLandroid/view/KeyEvent;)V

    .line 189
    goto :goto_0

    .line 185
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, v0}, Landroid/rms/HwAppInnerBoostImpl;->onDown(JFF)V

    .line 186
    nop

    .line 193
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onKeyUp(JLandroid/view/KeyEvent;)V
    .locals 2
    .param p1, "now"    # J
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 249
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    .line 250
    const/4 v0, 0x2

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    .line 251
    sget v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_DURATION_CLICK:I

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportDuration:I

    .line 252
    sget v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_TIMES_CLICK:I

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportTimes:I

    goto :goto_0

    .line 254
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    .line 256
    :goto_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;J)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "now"    # J

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 172
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/rms/HwAppInnerBoostImpl;->onMove(JFF)V

    .line 173
    goto :goto_0

    .line 175
    :pswitch_1
    invoke-direct {p0, p2, p3, p1}, Landroid/rms/HwAppInnerBoostImpl;->onMotionUp(JLandroid/view/MotionEvent;)V

    .line 176
    goto :goto_0

    .line 169
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/rms/HwAppInnerBoostImpl;->onDown(JFF)V

    .line 170
    nop

    .line 180
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onMotionUp(JLandroid/view/MotionEvent;)V
    .locals 5
    .param p1, "now"    # J
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 234
    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 235
    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->downX:F

    iget v2, p0, Landroid/rms/HwAppInnerBoostImpl;->downY:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v0, v2, v3, v4}, Landroid/rms/HwAppInnerBoostImpl;->isMoved(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iput v1, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    .line 237
    sget v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_DURATION_SLIDE:I

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportDuration:I

    .line 238
    sget v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_TIMES_SLIDE:I

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportTimes:I

    goto :goto_0

    .line 240
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    .line 241
    sget v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_DURATION_CLICK:I

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportDuration:I

    .line 242
    sget v0, Landroid/rms/HwAppInnerBoostImpl;->REPORT_TIMES_CLICK:I

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportTimes:I

    .line 244
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/rms/HwAppInnerBoostImpl;->canLongSlideBoost:Z

    .line 246
    :cond_1
    return-void
.end method

.method private onMove(JFF)V
    .locals 6
    .param p1, "now"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 220
    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->lastMoveY:F

    invoke-direct {p0, v0, p4}, Landroid/rms/HwAppInnerBoostImpl;->isMovedSlight(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->moveCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->moveCount:I

    .line 222
    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->moveCount:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_1

    iget-wide v2, p0, Landroid/rms/HwAppInnerBoostImpl;->lastDownTime:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3a98

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 223
    iget-wide v2, p0, Landroid/rms/HwAppInnerBoostImpl;->lastLongSlideBoostTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroid/rms/HwAppInnerBoostImpl;->lastLongSlideBoostTime:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0xfa

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 224
    :cond_0
    iput-boolean v1, p0, Landroid/rms/HwAppInnerBoostImpl;->canLongSlideBoost:Z

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    .line 230
    :cond_1
    iput p4, p0, Landroid/rms/HwAppInnerBoostImpl;->lastMoveY:F

    .line 231
    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 93
    iget-boolean v0, p0, Landroid/rms/HwAppInnerBoostImpl;->initialized:Z

    if-eqz v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/rms/HwAppInnerBoostImpl;->initialized:Z

    .line 97
    iput-object p1, p0, Landroid/rms/HwAppInnerBoostImpl;->packageName:Ljava/lang/String;

    .line 98
    const-string v0, "HwAppInnerBoostImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set config for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " BOOST_FLAG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/rms/HwAppInnerBoostImpl;->BOOST_FLAG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " REPORT_DURATION_CLICK="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/rms/HwAppInnerBoostImpl;->REPORT_DURATION_CLICK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " REPORT_TIMES_CLICK="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/rms/HwAppInnerBoostImpl;->REPORT_TIMES_CLICK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " REPORT_DURATION_SLIDE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/rms/HwAppInnerBoostImpl;->REPORT_DURATION_SLIDE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " REPORT_TIMES_SLIDE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/rms/HwAppInnerBoostImpl;->REPORT_TIMES_SLIDE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/InputEvent;

    .line 103
    sget-boolean v0, Landroid/rms/HwAppInnerBoostImpl;->BOOST_FLAG:Z

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 108
    .local v0, "now":J
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    .line 109
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-direct {p0, v2, v0, v1}, Landroid/rms/HwAppInnerBoostImpl;->onMotionEvent(Landroid/view/MotionEvent;J)V

    goto :goto_0

    .line 110
    :cond_1
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_2

    .line 111
    move-object v2, p1

    check-cast v2, Landroid/view/KeyEvent;

    invoke-direct {p0, v2, v0, v1}, Landroid/rms/HwAppInnerBoostImpl;->onKeyEvent(Landroid/view/KeyEvent;J)V

    .line 113
    :cond_2
    :goto_0
    return-void
.end method

.method public onJitter(J)V
    .locals 11
    .param p1, "skippedFrames"    # J

    .line 147
    sget-boolean v0, Landroid/rms/HwAppInnerBoostImpl;->BOOST_FLAG:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    const-wide/16 v2, 0x3

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    goto :goto_1

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 152
    .local v9, "now":J
    iget-wide v2, p0, Landroid/rms/HwAppInnerBoostImpl;->lastDownTime:J

    sub-long v2, v9, v2

    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportDuration:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->jitterReportTimes:I

    iget v2, p0, Landroid/rms/HwAppInnerBoostImpl;->reportTimes:I

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    iget-wide v2, p0, Landroid/rms/HwAppInnerBoostImpl;->lastJitterReportTime:J

    sub-long v2, v9, v2

    const-wide/16 v4, 0xfa

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 158
    return-void

    .line 161
    :cond_2
    iput-wide v9, p0, Landroid/rms/HwAppInnerBoostImpl;->lastJitterReportTime:J

    .line 162
    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->jitterReportTimes:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->jitterReportTimes:I

    .line 163
    const-string v5, "2"

    iget v6, p0, Landroid/rms/HwAppInnerBoostImpl;->jitterReportTimes:I

    move-object v2, p0

    move-wide v3, v9

    move-wide v7, p1

    invoke-direct/range {v2 .. v8}, Landroid/rms/HwAppInnerBoostImpl;->asyncReport(JLjava/lang/String;IJ)V

    .line 164
    return-void

    .line 153
    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    .line 154
    return-void

    .line 148
    .end local v9    # "now":J
    :cond_4
    :goto_1
    return-void
.end method

.method public onTraversal()V
    .locals 11

    .line 116
    sget-boolean v0, Landroid/rms/HwAppInnerBoostImpl;->BOOST_FLAG:Z

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/rms/HwAppInnerBoostImpl;->canLongSlideBoost:Z

    if-nez v0, :cond_1

    .line 121
    return-void

    .line 124
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 125
    .local v9, "now":J
    iget-boolean v0, p0, Landroid/rms/HwAppInnerBoostImpl;->canLongSlideBoost:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 126
    iput-wide v9, p0, Landroid/rms/HwAppInnerBoostImpl;->lastLongSlideBoostTime:J

    .line 127
    invoke-static {}, Landroid/iawareperf/UniPerf;->getInstance()Landroid/iawareperf/UniPerf;

    move-result-object v0

    const/16 v3, 0x100b

    const-string v4, ""

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-virtual {v0, v3, v4, v1}, Landroid/iawareperf/UniPerf;->uniPerfEvent(ILjava/lang/String;[I)I

    .line 128
    iput-boolean v2, p0, Landroid/rms/HwAppInnerBoostImpl;->canLongSlideBoost:Z

    .line 129
    return-void

    .line 132
    :cond_2
    iget-wide v3, p0, Landroid/rms/HwAppInnerBoostImpl;->lastDownTime:J

    sub-long v3, v9, v3

    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->reportDuration:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5

    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->traversalReportTimes:I

    iget v3, p0, Landroid/rms/HwAppInnerBoostImpl;->reportTimes:I

    if-lt v0, v3, :cond_3

    goto :goto_0

    .line 137
    :cond_3
    iget-wide v2, p0, Landroid/rms/HwAppInnerBoostImpl;->lastTraversalReportTime:J

    sub-long v2, v9, v2

    const-wide/16 v4, 0xfa

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 138
    return-void

    .line 141
    :cond_4
    iput-wide v9, p0, Landroid/rms/HwAppInnerBoostImpl;->lastTraversalReportTime:J

    .line 142
    iget v0, p0, Landroid/rms/HwAppInnerBoostImpl;->traversalReportTimes:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/rms/HwAppInnerBoostImpl;->traversalReportTimes:I

    .line 143
    const-string v5, "1"

    iget v6, p0, Landroid/rms/HwAppInnerBoostImpl;->traversalReportTimes:I

    const-wide/16 v7, 0x0

    move-object v2, p0

    move-wide v3, v9

    invoke-direct/range {v2 .. v8}, Landroid/rms/HwAppInnerBoostImpl;->asyncReport(JLjava/lang/String;IJ)V

    .line 144
    return-void

    .line 133
    :cond_5
    :goto_0
    iput v2, p0, Landroid/rms/HwAppInnerBoostImpl;->sceneType:I

    .line 134
    return-void
.end method
