.class public Landroid/view/HwViewRootImpl;
.super Ljava/lang/Object;
.source "HwViewRootImpl.java"

# interfaces
.implements Landroid/view/IHwViewRootImpl;


# static fields
.field private static final FRONT_FINGERPRINT_NAVIGATION:Z

.field private static final FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

.field private static final IS_TABLET:Z

.field private static final MOTION_EVENT_INJECTION_DELAY_MILLIS:I = 0x14

.field private static final NAVIGATION_DISABLE:I = 0x0

.field private static final NAVIGATION_ENABLE:I = 0x1

.field private static final RUN_MODE:Ljava/lang/String;

.field static final isHwNaviBar:Z

.field private static mInstance:Landroid/view/HwViewRootImpl;


# instance fields
.field private isDecorPointerEvent:Z

.field mDisplayPoint:Landroid/graphics/Point;

.field private mDownEvent:Landroid/view/MotionEvent;

.field mHitRegionToMax:I

.field private mIsRedispatchDownAction:Z

.field private mIsStylusEffective:Z

.field private mStylusTouchListener:Landroid/view/StylusTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const-string v0, "ro.config.hw_navigationbar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/HwViewRootImpl;->isHwNaviBar:Z

    .line 59
    const-string v0, "ro.config.hw_front_fp_navi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/HwViewRootImpl;->FRONT_FINGERPRINT_NAVIGATION:Z

    .line 61
    const-string v0, "ro.config.hw_front_fp_trikey"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/HwViewRootImpl;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

    .line 77
    const/4 v0, 0x0

    sput-object v0, Landroid/view/HwViewRootImpl;->mInstance:Landroid/view/HwViewRootImpl;

    .line 78
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/HwViewRootImpl;->IS_TABLET:Z

    .line 82
    const-string v0, "ro.runmode"

    const-string v1, "normal"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/HwViewRootImpl;->RUN_MODE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x14

    iput v0, p0, Landroid/view/HwViewRootImpl;->mHitRegionToMax:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HwViewRootImpl;->mIsRedispatchDownAction:Z

    .line 73
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/HwViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    .line 76
    iput-boolean v0, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    .line 79
    iput-object v1, p0, Landroid/view/HwViewRootImpl;->mStylusTouchListener:Landroid/view/StylusTouchListener;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HwViewRootImpl;->mIsStylusEffective:Z

    .line 84
    return-void
.end method

.method private canNavBarFlingOut(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowattr"    # Landroid/view/WindowManager$LayoutParams;

    .line 174
    const/4 v0, 0x1

    .line 175
    .local v0, "GESTURE_NAVIGATION_IS_ON":I
    const/4 v1, 0x1

    .line 176
    .local v1, "NAVIGATION_BAR_IS_MIN":I
    const/4 v2, 0x0

    .line 177
    .local v2, "isGestureNavigationMode":Z
    invoke-direct {p0, p1}, Landroid/view/HwViewRootImpl;->isNaviEnable(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 178
    return v4

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "navigationbar_is_min"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 181
    .local v3, "navBarIsMin":Z
    :goto_0
    const/16 v6, 0x7d0

    iget v7, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v7, :cond_3

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_3

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "secure_gesture_navigation"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    move v2, v6

    goto :goto_3

    .line 184
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "secure_gesture_navigation"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    move v2, v6

    .line 186
    :goto_3
    if-nez v2, :cond_5

    move v4, v5

    nop

    :cond_5
    and-int/2addr v4, v3

    return v4
.end method

.method public static declared-synchronized getDefault()Landroid/view/HwViewRootImpl;
    .locals 2

    const-class v0, Landroid/view/HwViewRootImpl;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Landroid/view/HwViewRootImpl;->mInstance:Landroid/view/HwViewRootImpl;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Landroid/view/HwViewRootImpl;

    invoke-direct {v1}, Landroid/view/HwViewRootImpl;-><init>()V

    sput-object v1, Landroid/view/HwViewRootImpl;->mInstance:Landroid/view/HwViewRootImpl;

    .line 89
    :cond_0
    sget-object v1, Landroid/view/HwViewRootImpl;->mInstance:Landroid/view/HwViewRootImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDefaultNavConfig()I
    .locals 3

    .line 322
    sget-boolean v0, Landroid/view/HwViewRootImpl;->FRONT_FINGERPRINT_NAVIGATION:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 323
    return v1

    .line 325
    :cond_0
    sget v0, Landroid/view/HwViewRootImpl;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 326
    invoke-static {}, Landroid/view/HwViewRootImpl;->isChinaArea()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    return v2

    .line 329
    :cond_1
    return v1

    .line 331
    :cond_2
    sget v0, Landroid/view/HwViewRootImpl;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

    if-ne v0, v1, :cond_3

    .line 332
    return v2

    .line 334
    :cond_3
    return v1
.end method

.method private getDisplayPoint(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 1
    .param p1, "disp"    # Landroid/view/Display;

    .line 206
    iget-object v0, p0, Landroid/view/HwViewRootImpl;->mDisplayPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 208
    .local v0, "pt":Landroid/graphics/Point;
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 209
    iput-object v0, p0, Landroid/view/HwViewRootImpl;->mDisplayPoint:Landroid/graphics/Point;

    .line 211
    .end local v0    # "pt":Landroid/graphics/Point;
    :cond_0
    iget-object v0, p0, Landroid/view/HwViewRootImpl;->mDisplayPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method private getPointerAction(II)I
    .locals 1
    .param p1, "motionEnvent"    # I
    .param p2, "index"    # I

    .line 493
    shl-int/lit8 v0, p2, 0x8

    add-int/2addr v0, p1

    return v0
.end method

.method private getPonterCoords(FF)Landroid/view/MotionEvent$PointerCoords;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 403
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 404
    .local v0, "pc1":Landroid/view/MotionEvent$PointerCoords;
    iput p1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 405
    iput p2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 406
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 407
    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 408
    return-object v0
.end method

.method private injectEventSync(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 489
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private static isChinaArea()Z
    .locals 2

    .line 339
    const-string v0, "ro.config.hw_optb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFingerSenseEnabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 215
    const-string v0, "factory"

    sget-object v1, Landroid/view/HwViewRootImpl;->RUN_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "sys.super_power_save"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    const-string v0, "fingersense_enabled"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 216
    :cond_2
    :goto_0
    return v1
.end method

.method private isNaviEnable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_navbar"

    invoke-direct {p0}, Landroid/view/HwViewRootImpl;->getDefaultNavConfig()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 317
    .local v0, "isEnableNavBar":Z
    :goto_0
    return v0
.end method

.method private isStylusButtonPressed(Landroid/content/Context;ILandroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;

    .line 287
    invoke-static {p1}, Landroid/util/HwStylusUtils;->hasStylusFeature(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 288
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 289
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 290
    .local v0, "stylusPrimaryButtonPressed":Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 291
    iput-boolean v0, p0, Landroid/view/HwViewRootImpl;->mIsStylusEffective:Z

    .line 294
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/view/HwViewRootImpl;->mStylusTouchListener:Landroid/view/StylusTouchListener;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/view/HwViewRootImpl;->mIsStylusEffective:Z

    if-eqz v2, :cond_2

    .line 295
    invoke-direct {p0, p1}, Landroid/view/HwViewRootImpl;->isStylusEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    iget-object v1, p0, Landroid/view/HwViewRootImpl;->mStylusTouchListener:Landroid/view/StylusTouchListener;

    invoke-virtual {v1, p1, p2}, Landroid/view/StylusTouchListener;->updateViewContext(Landroid/content/Context;I)V

    .line 297
    iget-object v1, p0, Landroid/view/HwViewRootImpl;->mStylusTouchListener:Landroid/view/StylusTouchListener;

    invoke-virtual {v1, p3}, Landroid/view/StylusTouchListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 298
    return v3

    .line 302
    :cond_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 303
    :cond_3
    iput-boolean v3, p0, Landroid/view/HwViewRootImpl;->mIsStylusEffective:Z

    .line 306
    .end local v0    # "stylusPrimaryButtonPressed":Z
    :cond_4
    return v1
.end method

.method private isStylusEnable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "stylus_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 311
    .local v0, "stylusEnabled":Z
    return v0
.end method

.method private multiPointerGesture(Landroid/view/View;FFF)Z
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "value"    # F

    move-object/from16 v0, p0

    .line 373
    const/4 v3, 0x2

    .line 374
    .local v3, "ponterCount":I
    const/high16 v4, 0x43480000    # 200.0f

    .line 375
    .local v4, "space":F
    const/4 v5, 0x4

    .line 376
    .local v5, "steps":I
    const/high16 v6, 0x41f00000    # 30.0f

    .line 377
    .local v6, "rate":F
    const/4 v7, 0x0

    cmpl-float v7, p4, v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, -0x1

    .line 378
    .local v7, "guide":I
    :goto_0
    const/high16 v9, 0x43480000    # 200.0f

    sub-float v10, p2, v9

    .line 379
    .local v10, "pointerX1":F
    sub-float v11, p3, v9

    .line 380
    .local v11, "pointerY1":F
    add-float v12, p2, v9

    .line 381
    .local v12, "pointerX2":F
    add-float v9, p3, v9

    .line 383
    .local v9, "pointerY2":F
    const/4 v13, 0x2

    new-array v13, v13, [[Landroid/view/MotionEvent$PointerCoords;

    .line 385
    .local v13, "ppCoords":[[Landroid/view/MotionEvent$PointerCoords;
    const/4 v14, 0x4

    new-array v8, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 386
    .local v8, "pointerCoordsX":[Landroid/view/MotionEvent$PointerCoords;
    new-array v1, v14, [Landroid/view/MotionEvent$PointerCoords;

    .line 387
    .local v1, "pointerCoordsY":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v15, 0x1

    .local v15, "index":I
    :goto_1
    move/from16 v16, v15

    .end local v15    # "index":I
    .local v16, "index":I
    move/from16 v2, v16

    if-gt v2, v14, :cond_1

    .line 388
    .end local v16    # "index":I
    .local v2, "index":I
    const/high16 v15, 0x41f00000    # 30.0f

    int-to-float v14, v2

    mul-float/2addr v15, v14

    int-to-float v14, v7

    mul-float/2addr v15, v14

    .line 389
    .local v15, "dis":F
    sub-float v14, v10, v15

    move/from16 v17, v3

    sub-float v3, v11, v15

    .end local v3    # "ponterCount":I
    .local v17, "ponterCount":I
    invoke-direct {v0, v14, v3}, Landroid/view/HwViewRootImpl;->getPonterCoords(FF)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    .line 390
    .local v3, "pcx":Landroid/view/MotionEvent$PointerCoords;
    add-int/lit8 v16, v2, -0x1

    aput-object v3, v8, v16

    .line 392
    add-float v14, v12, v15

    move-object/from16 v18, v3

    add-float v3, v9, v15

    .end local v3    # "pcx":Landroid/view/MotionEvent$PointerCoords;
    .local v18, "pcx":Landroid/view/MotionEvent$PointerCoords;
    invoke-direct {v0, v14, v3}, Landroid/view/HwViewRootImpl;->getPonterCoords(FF)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v3

    .line 393
    .local v3, "pcy":Landroid/view/MotionEvent$PointerCoords;
    add-int/lit8 v16, v2, -0x1

    aput-object v3, v1, v16

    .line 387
    .end local v3    # "pcy":Landroid/view/MotionEvent$PointerCoords;
    .end local v15    # "dis":F
    .end local v18    # "pcx":Landroid/view/MotionEvent$PointerCoords;
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "index":I
    .local v15, "index":I
    move/from16 v3, v17

    const/4 v14, 0x4

    goto :goto_1

    .line 396
    .end local v15    # "index":I
    .end local v17    # "ponterCount":I
    .local v3, "ponterCount":I
    :cond_1
    move/from16 v17, v3

    .end local v3    # "ponterCount":I
    .restart local v17    # "ponterCount":I
    const/4 v2, 0x0

    aput-object v8, v13, v2

    .line 397
    const/4 v2, 0x1

    aput-object v1, v13, v2

    .line 399
    move-object/from16 v2, p1

    invoke-direct {v0, v2, v13}, Landroid/view/HwViewRootImpl;->performMultiPointerGesture(Landroid/view/View;[[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v3

    return v3
.end method

.method private varargs performMultiPointerGesture(Landroid/view/View;[[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 32
    .param p1, "view"    # Landroid/view/View;
    .param p2, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 412
    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 415
    .local v3, "ret":Z
    const/4 v4, 0x0

    .line 416
    .local v4, "maxSteps":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "x":I
    .local v6, "maxSteps":I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_1

    .line 417
    aget-object v7, v2, v4

    array-length v7, v7

    if-ge v6, v7, :cond_0

    aget-object v7, v2, v4

    array-length v7, v7

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    move v6, v7

    .line 416
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 420
    .end local v4    # "x":I
    :cond_1
    array-length v4, v2

    new-array v4, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 421
    .local v4, "properties":[Landroid/view/MotionEvent$PointerProperties;
    array-length v7, v2

    new-array v15, v7, [Landroid/view/MotionEvent$PointerCoords;

    .line 422
    .local v15, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move v7, v5

    .local v7, "x":I
    :goto_2
    array-length v8, v2

    const/4 v14, 0x1

    if-ge v7, v8, :cond_2

    .line 423
    new-instance v8, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v8}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 424
    .local v8, "prop":Landroid/view/MotionEvent$PointerProperties;
    iput v7, v8, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 425
    iput v14, v8, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 426
    aput-object v8, v4, v7

    .line 429
    aget-object v9, v2, v7

    aget-object v9, v9, v5

    aput-object v9, v15, v7

    .line 422
    .end local v8    # "prop":Landroid/view/MotionEvent$PointerProperties;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 433
    .end local v7    # "x":I
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 435
    .local v23, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1002

    const/16 v25, 0x0

    move-wide/from16 v7, v23

    move-object v13, v4

    move/from16 v26, v14

    move-object v14, v15

    move-object/from16 v27, v15

    move/from16 v15, v16

    .end local v15    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .local v27, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v25

    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v7

    .line 437
    .local v7, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v1, v7}, Landroid/view/HwViewRootImpl;->injectEventSync(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    and-int/2addr v3, v8

    .line 439
    move/from16 v28, v3

    move-object/from16 v25, v7

    move/from16 v3, v26

    .end local v7    # "event":Landroid/view/MotionEvent;
    .local v3, "x":I
    .local v25, "event":Landroid/view/MotionEvent;
    .local v28, "ret":Z
    :goto_3
    array-length v7, v2

    const-wide/16 v14, 0x14

    if-ge v3, v7, :cond_3

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v7, 0x5

    .line 441
    invoke-direct {v0, v7, v3}, Landroid/view/HwViewRootImpl;->getPointerAction(II)I

    move-result v11

    add-int/lit8 v12, v3, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1002

    const/16 v29, 0x0

    .line 440
    move-wide/from16 v7, v23

    move-object v13, v4

    move/from16 v31, v6

    move-wide v5, v14

    move-object/from16 v14, v27

    .end local v6    # "maxSteps":I
    .local v31, "maxSteps":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v29

    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v7

    .line 443
    .end local v25    # "event":Landroid/view/MotionEvent;
    .restart local v7    # "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v1, v7}, Landroid/view/HwViewRootImpl;->injectEventSync(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    and-int v28, v28, v8

    .line 445
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 439
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v25, v7

    move/from16 v6, v31

    const/4 v5, 0x0

    goto :goto_3

    .line 449
    .end local v3    # "x":I
    .end local v7    # "event":Landroid/view/MotionEvent;
    .end local v31    # "maxSteps":I
    .restart local v6    # "maxSteps":I
    .restart local v25    # "event":Landroid/view/MotionEvent;
    :cond_3
    move/from16 v31, v6

    move-wide v5, v14

    .end local v6    # "maxSteps":I
    .restart local v31    # "maxSteps":I
    move/from16 v3, v26

    .local v3, "i":I
    :goto_4
    add-int/lit8 v7, v31, -0x1

    if-ge v3, v7, :cond_6

    .line 451
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_5
    array-length v8, v2

    if-ge v7, v8, :cond_5

    .line 453
    aget-object v8, v2, v7

    array-length v8, v8

    if-le v8, v3, :cond_4

    .line 454
    aget-object v8, v2, v7

    aget-object v8, v8, v3

    aput-object v8, v27, v7

    goto :goto_6

    .line 456
    :cond_4
    aget-object v8, v2, v7

    aget-object v9, v2, v7

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    aput-object v8, v27, v7

    .line 451
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 459
    .end local v7    # "x":I
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x2

    array-length v12, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1002

    const/16 v22, 0x0

    move-wide/from16 v7, v23

    move-object v13, v4

    move-object/from16 v14, v27

    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v7

    .line 463
    .end local v25    # "event":Landroid/view/MotionEvent;
    .local v7, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v1, v7}, Landroid/view/HwViewRootImpl;->injectEventSync(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    and-int v28, v28, v8

    .line 465
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 449
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v25, v7

    goto :goto_4

    .line 469
    .end local v3    # "i":I
    .end local v7    # "event":Landroid/view/MotionEvent;
    .restart local v25    # "event":Landroid/view/MotionEvent;
    :cond_6
    const/16 v30, 0x0

    .local v30, "x":I
    :goto_7
    move/from16 v3, v30

    .end local v30    # "x":I
    .local v3, "x":I
    array-length v5, v2

    if-ge v3, v5, :cond_7

    .line 470
    aget-object v5, v2, v3

    aget-object v6, v2, v3

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    aput-object v5, v27, v3

    .line 469
    add-int/lit8 v30, v3, 0x1

    .end local v3    # "x":I
    .restart local v30    # "x":I
    goto :goto_7

    .line 473
    .end local v30    # "x":I
    :cond_7
    nop

    .local v26, "x":I
    :goto_8
    move/from16 v3, v26

    .end local v26    # "x":I
    .restart local v3    # "x":I
    array-length v5, v2

    if-ge v3, v5, :cond_8

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v5, 0x6

    .line 475
    invoke-direct {v0, v5, v3}, Landroid/view/HwViewRootImpl;->getPointerAction(II)I

    move-result v11

    add-int/lit8 v12, v3, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1002

    const/16 v22, 0x0

    .line 474
    move-wide/from16 v7, v23

    move-object v13, v4

    move-object/from16 v14, v27

    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 477
    .end local v25    # "event":Landroid/view/MotionEvent;
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v1, v5}, Landroid/view/HwViewRootImpl;->injectEventSync(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v6

    and-int v28, v28, v6

    .line 473
    add-int/lit8 v26, v3, 0x1

    .end local v3    # "x":I
    .restart local v26    # "x":I
    move-object/from16 v25, v5

    goto :goto_8

    .line 481
    .end local v5    # "event":Landroid/view/MotionEvent;
    .end local v26    # "x":I
    .restart local v25    # "event":Landroid/view/MotionEvent;
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1002

    const/16 v22, 0x0

    move-wide/from16 v7, v23

    move-object v13, v4

    move-object/from16 v14, v27

    invoke-static/range {v7 .. v22}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 483
    .end local v25    # "event":Landroid/view/MotionEvent;
    .local v3, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v1, v3}, Landroid/view/HwViewRootImpl;->injectEventSync(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    and-int v5, v28, v5

    .line 485
    .end local v28    # "ret":Z
    .local v5, "ret":Z
    return v5
.end method


# virtual methods
.method public clearDisplayPoint()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HwViewRootImpl;->mDisplayPoint:Landroid/graphics/Point;

    .line 100
    return-void
.end method

.method public filterDecorPointerEvent(Landroid/content/Context;Landroid/view/MotionEvent;ILandroid/view/WindowManager$LayoutParams;Landroid/view/Display;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "action"    # I
    .param p4, "windowattr"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "disp"    # Landroid/view/Display;

    .line 104
    invoke-static {p1}, Landroid/util/HwPCUtils;->isValidExtDisplayId(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Landroid/util/HwPCUtils;->isValidExtDisplayId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 108
    :cond_0
    if-eqz p1, :cond_13

    sget-boolean v0, Landroid/view/HwViewRootImpl;->isHwNaviBar:Z

    if-eqz v0, :cond_13

    if-eqz p5, :cond_13

    if-nez p4, :cond_1

    goto/16 :goto_a

    .line 112
    :cond_1
    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 113
    return v1

    .line 122
    :cond_2
    iget v0, p4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    .line 123
    return v1

    .line 126
    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_a

    .line 127
    iput-boolean v1, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    .line 128
    iget-object v3, p0, Landroid/view/HwViewRootImpl;->mDisplayPoint:Landroid/graphics/Point;

    if-nez v3, :cond_4

    invoke-direct {p0, p5}, Landroid/view/HwViewRootImpl;->getDisplayPoint(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/view/HwViewRootImpl;->mDisplayPoint:Landroid/graphics/Point;

    .line 130
    .local v3, "pt":Landroid/graphics/Point;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050122

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x400c000000000000L    # 3.5

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/view/HwViewRootImpl;->mHitRegionToMax:I

    .line 133
    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_6

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, p0, Landroid/view/HwViewRootImpl;->mHitRegionToMax:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    goto :goto_3

    .line 136
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, p0, Landroid/view/HwViewRootImpl;->mHitRegionToMax:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    .line 138
    :goto_3
    iget-boolean v4, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    if-eqz v4, :cond_8

    .line 139
    invoke-direct {p0, p1, p4}, Landroid/view/HwViewRootImpl;->canNavBarFlingOut(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_4

    :cond_8
    move v4, v1

    :goto_4
    iput-boolean v4, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    .line 140
    iget-boolean v4, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    if-eqz v4, :cond_9

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/view/HwViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    .line 142
    return v2

    .line 144
    :cond_9
    iput-object v0, p0, Landroid/view/HwViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    .line 145
    iput-boolean v1, p0, Landroid/view/HwViewRootImpl;->mIsRedispatchDownAction:Z

    .line 147
    .end local v3    # "pt":Landroid/graphics/Point;
    goto :goto_9

    :cond_a
    const/4 v3, 0x3

    if-ne p3, v3, :cond_b

    .line 148
    iput-object v0, p0, Landroid/view/HwViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    .line 149
    iput-boolean v1, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    goto :goto_9

    .line 150
    :cond_b
    if-ne p3, v2, :cond_12

    .line 151
    iget-object v3, p0, Landroid/view/HwViewRootImpl;->mDisplayPoint:Landroid/graphics/Point;

    if-nez v3, :cond_c

    invoke-direct {p0, p5}, Landroid/view/HwViewRootImpl;->getDisplayPoint(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v3

    goto :goto_5

    :cond_c
    iget-object v3, p0, Landroid/view/HwViewRootImpl;->mDisplayPoint:Landroid/graphics/Point;

    .line 152
    .restart local v3    # "pt":Landroid/graphics/Point;
    :goto_5
    iget-boolean v4, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    if-eqz v4, :cond_10

    .line 153
    iget v4, v3, Landroid/graphics/Point;->y:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_e

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, p0, Landroid/view/HwViewRootImpl;->mHitRegionToMax:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    goto :goto_6

    :cond_d
    move v2, v1

    :goto_6
    iput-boolean v2, p0, Landroid/view/HwViewRootImpl;->mIsRedispatchDownAction:Z

    goto :goto_8

    .line 156
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, p0, Landroid/view/HwViewRootImpl;->mHitRegionToMax:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    goto :goto_7

    :cond_f
    move v2, v1

    :goto_7
    iput-boolean v2, p0, Landroid/view/HwViewRootImpl;->mIsRedispatchDownAction:Z

    goto :goto_8

    .line 159
    :cond_10
    iput-boolean v1, p0, Landroid/view/HwViewRootImpl;->mIsRedispatchDownAction:Z

    .line 161
    :goto_8
    iget-boolean v2, p0, Landroid/view/HwViewRootImpl;->mIsRedispatchDownAction:Z

    if-nez v2, :cond_11

    .line 162
    iput-object v0, p0, Landroid/view/HwViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    .line 164
    :cond_11
    iput-boolean v1, p0, Landroid/view/HwViewRootImpl;->isDecorPointerEvent:Z

    .line 167
    .end local v3    # "pt":Landroid/graphics/Point;
    :cond_12
    :goto_9
    return v1

    .line 109
    :cond_13
    :goto_a
    return v1

    .line 105
    :cond_14
    :goto_b
    return v1
.end method

.method public getRedispatchEvent()Landroid/view/MotionEvent;
    .locals 2

    .line 195
    iget-boolean v0, p0, Landroid/view/HwViewRootImpl;->mIsRedispatchDownAction:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HwViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/view/HwViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    .line 197
    .local v0, "mv":Landroid/view/MotionEvent;
    iput-object v1, p0, Landroid/view/HwViewRootImpl;->mDownEvent:Landroid/view/MotionEvent;

    .line 198
    return-object v0

    .line 200
    .end local v0    # "mv":Landroid/view/MotionEvent;
    :cond_0
    return-object v1
.end method

.method public interceptMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 345
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 346
    return v1

    .line 349
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 350
    return v1

    .line 353
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 354
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 355
    .local v0, "value":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 356
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 358
    .local v2, "y":F
    invoke-direct {p0, p1, v1, v2, v0}, Landroid/view/HwViewRootImpl;->multiPointerGesture(Landroid/view/View;FFF)Z

    move-result v3

    return v3

    .line 360
    .end local v0    # "value":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_2
    return v1
.end method

.method public setRealSize(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "point"    # Landroid/graphics/Point;

    .line 93
    iput-object p1, p0, Landroid/view/HwViewRootImpl;->mDisplayPoint:Landroid/graphics/Point;

    .line 94
    return-void
.end method

.method public shouldQueueInputEvent(Landroid/view/InputEvent;Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "attr"    # Landroid/view/WindowManager$LayoutParams;

    .line 224
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 225
    return v1

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/view/HwViewRootImpl;->mStylusTouchListener:Landroid/view/StylusTouchListener;

    if-nez v0, :cond_1

    .line 229
    invoke-static {p2}, Landroid/util/HwStylusUtils;->hasStylusFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "stylus"

    const-string v2, "init stylus touchlistener."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Landroid/view/StylusTouchListener;

    invoke-direct {v0, p2}, Landroid/view/StylusTouchListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/HwViewRootImpl;->mStylusTouchListener:Landroid/view/StylusTouchListener;

    .line 235
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 236
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    iget v2, p4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, p2, v2, v0}, Landroid/view/HwViewRootImpl;->isStylusButtonPressed(Landroid/content/Context;ILandroid/view/MotionEvent;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 237
    return v3

    .line 240
    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 241
    .local v2, "pointerCount":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 242
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_3

    .line 246
    return v1

    .line 241
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v4    # "i":I
    :cond_4
    iget v4, p4, Landroid/view/WindowManager$LayoutParams;->hwFlags:I

    const/high16 v5, 0x200000

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 252
    return v1

    .line 257
    :cond_5
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/HwViewRootImpl;->isFingerSenseEnabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 258
    return v1

    .line 262
    :cond_6
    iget v4, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_7

    .line 263
    return v1

    .line 267
    :cond_7
    if-nez p3, :cond_8

    .line 268
    return v3

    .line 272
    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 273
    .local v1, "viewContext":Landroid/content/Context;
    if-eqz v1, :cond_9

    instance-of v4, v1, Landroid/view/ContextThemeWrapper;

    if-eqz v4, :cond_9

    .line 274
    move-object v3, v1

    check-cast v3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 275
    .local v3, "baseContext":Landroid/content/Context;
    instance-of v4, v3, Landroid/inputmethodservice/InputMethodService;

    return v4

    .line 277
    .end local v3    # "baseContext":Landroid/content/Context;
    :cond_9
    return v3
.end method
