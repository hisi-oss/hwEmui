.class public Landroid/view/StylusTouchListener;
.super Ljava/lang/Object;
.source "StylusTouchListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAG:Ljava/lang/String; = "StylusTouchListener"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mIsDoubleTapOccur:Z

.field private mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-string v0, "ro.config.stylus_longpress_timeout"

    const/16 v1, 0x5dc

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/StylusTouchListener;->LONGPRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/StylusTouchListener;->mIsDoubleTapOccur:Z

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/StylusTouchListener;->mContext:Landroid/content/Context;

    .line 44
    iput v0, p0, Landroid/view/StylusTouchListener;->mWindowType:I

    .line 49
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/view/StylusTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 50
    iget-object v0, p0, Landroid/view/StylusTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 51
    iget-object v0, p0, Landroid/view/StylusTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 53
    iget-object v0, p0, Landroid/view/StylusTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    sget v1, Landroid/view/StylusTouchListener;->LONGPRESS_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setCustomLongpressTimeout(I)V

    .line 55
    return-void
.end method

.method private inSingleHandWindow()Z
    .locals 4

    .line 144
    iget-object v0, p0, Landroid/view/StylusTouchListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_hand_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "value":Ljava/lang/String;
    const-string v1, "StylusTouchListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inSingleHandWindow value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v1, "left"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "right"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 148
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private startHitouchSensor(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 115
    const-string v0, "StylusTouchListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StylusTouchListener and mWindowType is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/StylusTouchListener;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :try_start_0
    new-instance v0, Lhuawei/com/android/internal/policy/HiTouchSensor;

    iget-object v1, p0, Landroid/view/StylusTouchListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhuawei/com/android/internal/policy/HiTouchSensor;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "touchSensor":Lhuawei/com/android/internal/policy/HiTouchSensor;
    iget-object v1, p0, Landroid/view/StylusTouchListener;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/view/StylusTouchListener;->mWindowType:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lhuawei/com/android/internal/policy/HiTouchSensor;->processStylusGessture(Landroid/content/Context;IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "touchSensor":Lhuawei/com/android/internal/policy/HiTouchSensor;
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "StylusTouchListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHitouchSensor error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 59
    const-string v0, "StylusTouchListener"

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/StylusTouchListener;->mIsDoubleTapOccur:Z

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 66
    const-string v0, "StylusTouchListener"

    const-string v1, "onDoubleTapEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 78
    const-string v0, "StylusTouchListener"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 126
    const-string v0, "StylusTouchListener"

    const-string v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 101
    const-string v0, "StylusTouchListener"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v0, p0, Landroid/view/StylusTouchListener;->mIsDoubleTapOccur:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/StylusTouchListener;->mIsDoubleTapOccur:Z

    .line 104
    iget-object v0, p0, Landroid/view/StylusTouchListener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/StylusTouchListener;->inSingleHandWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0, p1}, Landroid/view/StylusTouchListener;->startHitouchSensor(Landroid/view/MotionEvent;)V

    .line 108
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 95
    const-string v0, "StylusTouchListener"

    const-string v1, "onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 84
    const-string v0, "StylusTouchListener"

    const-string v1, "onShowPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 72
    const-string v0, "StylusTouchListener"

    const-string v1, "onSingleTapConfirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 89
    const-string v0, "StylusTouchListener"

    const-string v1, "onSingleTapUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 132
    :cond_0
    const-string v0, "StylusTouchListener"

    const-string v1, "StylusTouchListener <- onTouchEvent.ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/StylusTouchListener;->mIsDoubleTapOccur:Z

    .line 135
    :cond_1
    iget-object v0, p0, Landroid/view/StylusTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    return-void
.end method

.method public updateViewContext(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I

    .line 139
    iput-object p1, p0, Landroid/view/StylusTouchListener;->mContext:Landroid/content/Context;

    .line 140
    iput p2, p0, Landroid/view/StylusTouchListener;->mWindowType:I

    .line 141
    return-void
.end method
