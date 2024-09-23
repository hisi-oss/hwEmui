.class public Lhuawei/com/android/internal/widget/HwEditor;
.super Landroid/widget/Editor;
.source "HwEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwEditor"

.field private static final VIBRATOR_SWITCH_OFF:I = 0x0

.field private static final WORD_END_SCALE:F = 0.55f

.field private static mCursorMoveVibrateType:Ljava/lang/String;

.field private static mIsSupportCursorMoveVibrator:Z

.field private static mIsSupportLongClickVibrator:Z

.field private static mLongClickVibrateType:Ljava/lang/String;

.field private static mVibratorEx:Ljava/lang/Object;


# instance fields
.field private mChangeWatcher:Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;

.field private mCursorBottom:I

.field private mCursorShouldMoveEnd:Z

.field private mCursorTop:I

.field private mCursorX:F

.field private mHasSelectionLastTime:Z

.field private mInsertHanlePosX:F

.field private mPosIsLineEnd:Z

.field private mPreOffset:I

.field private mShouldVibrate:Z

.field private mTextView:Landroid/widget/TextView;

.field private mTouchPosX:F


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorShouldMoveEnd:Z

    .line 45
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    .line 46
    const/4 v1, -0x1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPreOffset:I

    .line 47
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTouchPosX:F

    .line 48
    iput v2, p0, Lhuawei/com/android/internal/widget/HwEditor;->mInsertHanlePosX:F

    .line 49
    iput v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorTop:I

    .line 50
    iput v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorBottom:I

    .line 51
    iput v2, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorX:F

    .line 67
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mHasSelectionLastTime:Z

    .line 76
    invoke-virtual {p0, p1}, Lhuawei/com/android/internal/widget/HwEditor;->onInit(Landroid/widget/TextView;)V

    .line 77
    return-void
.end method

.method private adjustOffsetAtLineEnd(IZ)I
    .locals 10
    .param p1, "offset"    # I
    .param p2, "isTouchPos"    # Z

    .line 101
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 102
    .local v0, "layout":Landroid/text/Layout;
    invoke-direct {p0, p2}, Lhuawei/com/android/internal/widget/HwEditor;->getPos(Z)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 103
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 104
    .local v1, "currLine":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p1, v5, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-eq v1, v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 105
    .local v5, "offsetNearEnd":Z
    :goto_0
    const/high16 v6, -0x40800000    # -1.0f

    .line 106
    .local v6, "start":F
    const/high16 v7, -0x40800000    # -1.0f

    .line 107
    .local v7, "end":F
    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    iget-object v9, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float v6, v8, v9

    .line 110
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v8

    iget-object v9, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float v7, v8, v9

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    if-ne p1, v8, :cond_2

    if-lez v1, :cond_2

    .line 113
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v8

    iget-object v9, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float v6, v8, v9

    .line 115
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineMax(I)F

    move-result v8

    iget-object v9, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    add-float v7, v8, v9

    .line 118
    :cond_2
    :goto_1
    sub-float v8, v7, v6

    const v9, 0x3f0ccccd    # 0.55f

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    .line 119
    .local v8, "XThresholdToSnap":F
    if-nez v5, :cond_3

    iget-boolean v9, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    if-eqz v9, :cond_4

    :cond_3
    cmpl-float v9, v7, v6

    if-lez v9, :cond_4

    invoke-direct {p0, p2}, Lhuawei/com/android/internal/widget/HwEditor;->getPos(Z)F

    move-result v9

    cmpl-float v9, v9, v8

    if-ltz v9, :cond_4

    .line 121
    if-eqz v5, :cond_5

    .line 122
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p1

    .line 123
    iput-boolean v4, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    goto :goto_2

    .line 127
    :cond_4
    iput-boolean v3, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    .line 129
    :cond_5
    :goto_2
    invoke-direct {p0, v2, p2}, Lhuawei/com/android/internal/widget/HwEditor;->setPos(FZ)V

    .line 131
    .end local v1    # "currLine":I
    .end local v5    # "offsetNearEnd":Z
    .end local v6    # "start":F
    .end local v7    # "end":F
    .end local v8    # "XThresholdToSnap":F
    :cond_6
    if-eqz p2, :cond_8

    .line 132
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    if-eqz v1, :cond_7

    .line 133
    iput-boolean v4, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorShouldMoveEnd:Z

    goto :goto_3

    .line 135
    :cond_7
    iput-boolean v3, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorShouldMoveEnd:Z

    .line 137
    :goto_3
    iget v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPreOffset:I

    if-ne p1, v1, :cond_8

    .line 138
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwEditor;->updateCursorPosition()V

    .line 141
    :cond_8
    return p1
.end method

.method private getPos(Z)F
    .locals 1
    .param p1, "isTouchPos"    # Z

    .line 145
    if-eqz p1, :cond_0

    .line 146
    iget v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTouchPosX:F

    return v0

    .line 148
    :cond_0
    iget v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mInsertHanlePosX:F

    return v0
.end method

.method private hasSelection()Z
    .locals 3

    .line 394
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 395
    .local v0, "start":I
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 396
    .local v1, "end":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isCursorHandleVisible()Z
    .locals 8

    .line 358
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/widget/Editor;

    const-string v2, "mInsertionPointCursorController"

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 360
    .local v1, "insertionPointCursorController":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 361
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 363
    .local v3, "insertionCursorController":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 364
    return v0

    .line 367
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 368
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "isActive"

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 370
    .local v5, "isActive":Ljava/lang/reflect/Method;
    const-string v6, "isCursorBeingModified"

    new-array v7, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 372
    .local v6, "isCursorBeingModified":Ljava/lang/reflect/Method;
    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    new-array v7, v0, [Ljava/lang/Object;

    .line 373
    invoke-virtual {v6, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    .line 372
    move v0, v2

    goto :goto_0

    .line 373
    :cond_1
    nop

    .line 372
    :goto_0
    return v0

    .line 380
    .end local v1    # "insertionPointCursorController":Ljava/lang/reflect/Field;
    .end local v3    # "insertionCursorController":Ljava/lang/Object;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "isActive":Ljava/lang/reflect/Method;
    .end local v6    # "isCursorBeingModified":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "HwEditor"

    const-string v3, "Not found field mInsertionPointCursorController"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_2

    .line 378
    :catch_1
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "HwEditor"

    const-string v3, "Invoke method isCursorBeingModified error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 376
    :catch_2
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "HwEditor"

    const-string v3, "Illegal access isCursorBeingModified"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 374
    :catch_3
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "HwEditor"

    const-string v3, "Not found method isCursorBeingModified"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    nop

    .line 383
    :goto_2
    return v0
.end method

.method private isVibratorSwitchOn()Z
    .locals 3

    .line 347
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private setPos(FZ)V
    .locals 0
    .param p1, "pos"    # F
    .param p2, "isTouchPos"    # Z

    .line 153
    if-eqz p2, :cond_0

    .line 154
    iput p1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTouchPosX:F

    goto :goto_0

    .line 156
    :cond_0
    iput p1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mInsertHanlePosX:F

    .line 158
    :goto_0
    return-void
.end method

.method private vibrate(Z)V
    .locals 7
    .param p1, "isMoveType"    # Z

    .line 317
    if-eqz p1, :cond_0

    sget-object v0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorMoveVibrateType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lhuawei/com/android/internal/widget/HwEditor;->mLongClickVibrateType:Ljava/lang/String;

    .line 318
    .local v0, "type":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwEditor;->isVibratorSwitchOn()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 319
    sget-boolean v1, Lhuawei/com/android/internal/widget/HwEditor;->mIsSupportCursorMoveVibrator:Z

    const/4 v3, 0x1

    if-nez v1, :cond_2

    sget-boolean v1, Lhuawei/com/android/internal/widget/HwEditor;->mIsSupportLongClickVibrator:Z

    if-eqz v1, :cond_1

    goto :goto_1

    .line 322
    :cond_1
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHapticFeedbackEnabled(Z)V

    .line 323
    return-void

    .line 320
    :cond_2
    :goto_1
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHapticFeedbackEnabled(Z)V

    .line 326
    :try_start_0
    sget-object v1, Lhuawei/com/android/internal/widget/HwEditor;->mVibratorEx:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 327
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "setHwVibrator"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 328
    .local v4, "setHwVibrator":Ljava/lang/reflect/Method;
    sget-object v5, Lhuawei/com/android/internal/widget/HwEditor;->mVibratorEx:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "setHwVibrator":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "HwEditor"

    const-string v3, "Invoke method setHwVibrator error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_2

    .line 331
    :catch_1
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "HwEditor"

    const-string v3, "Illegal access setHwVibrator"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 329
    :catch_2
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "HwEditor"

    const-string v3, "Not found method setHwVibrator"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    goto :goto_3

    .line 337
    :cond_3
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHapticFeedbackEnabled(Z)V

    .line 339
    :goto_3
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 5
    .param p1, "text"    # Landroid/text/Spannable;

    .line 435
    invoke-super {p0, p1}, Landroid/widget/Editor;->addSpanWatchers(Landroid/text/Spannable;)V

    .line 437
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 438
    return-void

    .line 442
    :cond_0
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;

    .line 443
    .local v0, "watchers":[Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 444
    .local v4, "watcher":Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;
    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 443
    .end local v4    # "watcher":Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    :cond_1
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mChangeWatcher:Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;

    if-nez v1, :cond_2

    .line 447
    new-instance v1, Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;-><init>(Lhuawei/com/android/internal/widget/HwEditor;Lhuawei/com/android/internal/widget/HwEditor$1;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mChangeWatcher:Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;

    .line 449
    :cond_2
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mChangeWatcher:Lhuawei/com/android/internal/widget/HwEditor$ChangeWatcher;

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 450
    return-void
.end method

.method protected adjustCursorPos(ILandroid/text/Layout;)Z
    .locals 2
    .param p1, "line"    # I
    .param p2, "layout"    # Landroid/text/Layout;

    .line 198
    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorShouldMoveEnd:Z

    if-eqz v1, :cond_0

    .line 200
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorTop:I

    .line 201
    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorBottom:I

    .line 203
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p2, v1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorX:F

    .line 205
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorShouldMoveEnd:Z

    .line 206
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPreOffset:I

    .line 207
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_0
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPreOffset:I

    .line 210
    return v0
.end method

.method protected adjustHandlePos([ILandroid/widget/Editor$HandleView;Landroid/text/Layout;II)Z
    .locals 8
    .param p1, "coordinate"    # [I
    .param p2, "handleView"    # Landroid/widget/Editor$HandleView;
    .param p3, "layout"    # Landroid/text/Layout;
    .param p4, "offset"    # I
    .param p5, "line"    # I

    .line 161
    instance-of v0, p2, Landroid/widget/Editor$InsertionHandleView;

    .line 162
    .local v0, "insertionFlag":Z
    instance-of v1, p2, Landroid/widget/Editor$SelectionHandleView;

    .line 163
    .local v1, "selectionEndFlag":Z
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 164
    move-object v3, p2

    check-cast v3, Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v3}, Landroid/widget/Editor$SelectionHandleView;->isStartHandle()Z

    move-result v3

    xor-int/2addr v3, v2

    move v1, v3

    .line 165
    :cond_0
    invoke-virtual {p3, p4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v3, v3

    .line 166
    .local v3, "prePosX":I
    invoke-virtual {p3, p5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 167
    .local v4, "prePosY":I
    const/4 v5, 0x0

    if-lez p5, :cond_2

    iget-boolean v6, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 169
    aget v6, p1, v5

    sub-int/2addr v6, v3

    add-int/lit8 v7, p5, -0x1

    invoke-virtual {p3, v7}, Landroid/text/Layout;->getLineMax(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, p1, v5

    .line 171
    aget v5, p1, v2

    sub-int/2addr v5, v4

    add-int/lit8 v6, p5, -0x1

    invoke-virtual {p3, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v2

    .line 172
    iput-boolean v2, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorShouldMoveEnd:Z

    .line 174
    iget v5, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPreOffset:I

    if-ne p4, v5, :cond_1

    .line 175
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwEditor;->updateCursorPosition()V

    .line 178
    :cond_1
    return v2

    .line 179
    :cond_2
    if-lez p5, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p3, p5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    if-ne p4, v6, :cond_3

    .line 181
    const/4 v6, -0x1

    iput v6, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPreOffset:I

    .line 183
    aget v6, p1, v5

    sub-int/2addr v6, v3

    iget-object v7, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, p1, v5

    .line 184
    aget v5, p1, v2

    sub-int/2addr v5, v4

    add-int/lit8 v6, p5, -0x1

    invoke-virtual {p3, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v2

    .line 185
    return v2

    .line 187
    :cond_3
    return v5
.end method

.method protected adjustOffsetAtLineEndForInsertHanlePos(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhuawei/com/android/internal/widget/HwEditor;->adjustOffsetAtLineEnd(IZ)I

    move-result v0

    return v0
.end method

.method protected adjustOffsetAtLineEndForTouchPos(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lhuawei/com/android/internal/widget/HwEditor;->adjustOffsetAtLineEnd(IZ)I

    move-result v0

    return v0
.end method

.method protected adjustSelectionBounds(Landroid/graphics/RectF;ILandroid/text/Layout;I)V
    .locals 3
    .param p1, "selectionBounds"    # Landroid/graphics/RectF;
    .param p2, "line"    # I
    .param p3, "layout"    # Landroid/text/Layout;
    .param p4, "handleHeight"    # I

    .line 231
    if-lez p2, :cond_0

    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    if-eqz v0, :cond_0

    .line 233
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p3, v0}, Landroid/text/Layout;->getLineMax(I)F

    move-result v0

    .line 235
    .local v0, "primaryHorizontal":F
    add-int/lit8 v1, p2, -0x1

    .line 237
    invoke-virtual {p3, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    int-to-float v1, v1

    .line 239
    invoke-virtual {p3, p2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/2addr v2, p4

    int-to-float v2, v2

    .line 235
    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 241
    .end local v0    # "primaryHorizontal":F
    :cond_0
    return-void
.end method

.method public beginBatchEdit()V
    .locals 1

    .line 454
    invoke-super {p0}, Landroid/widget/Editor;->beginBatchEdit()V

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mShouldVibrate:Z

    .line 456
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .line 460
    invoke-super {p0}, Landroid/widget/Editor;->endBatchEdit()V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mShouldVibrate:Z

    .line 462
    return-void
.end method

.method protected getCursorBottom()I
    .locals 1

    .line 219
    iget v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorBottom:I

    return v0
.end method

.method protected getCursorTop()I
    .locals 1

    .line 215
    iget v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorTop:I

    return v0
.end method

.method protected getCursorX()F
    .locals 1

    .line 223
    iget v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mCursorX:F

    return v0
.end method

.method protected onInit(Landroid/widget/TextView;)V
    .locals 9
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 274
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    .line 275
    instance-of v0, p1, Landroid/widget/EditText;

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mShouldVibrate:Z

    .line 277
    sget-object v0, Lhuawei/com/android/internal/widget/HwEditor;->mVibratorEx:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 278
    return-void

    .line 281
    :cond_0
    :try_start_0
    const-string v0, "com.huawei.android.os.VibratorEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 282
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lhuawei/com/android/internal/widget/HwEditor;->mVibratorEx:Ljava/lang/Object;

    .line 284
    const-string v1, "HW_VIBRATOR_TYPE_CONTROL_TEXT_EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 285
    .local v1, "editType":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lhuawei/com/android/internal/widget/HwEditor;->mLongClickVibrateType:Ljava/lang/String;

    .line 287
    const-string v3, "HW_VIBRATOR_TYPE_CONTROL_TEXT_CHOOSE_CURSOR_MOVE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 288
    .local v3, "moveType":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lhuawei/com/android/internal/widget/HwEditor;->mCursorMoveVibrateType:Ljava/lang/String;

    .line 290
    const-string v2, "isSupportHwVibrator"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 292
    .local v2, "isSupportHwVibrator":Ljava/lang/reflect/Method;
    sget-object v5, Lhuawei/com/android/internal/widget/HwEditor;->mVibratorEx:Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    sget-object v8, Lhuawei/com/android/internal/widget/HwEditor;->mLongClickVibrateType:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lhuawei/com/android/internal/widget/HwEditor;->mIsSupportLongClickVibrator:Z

    .line 294
    sget-object v5, Lhuawei/com/android/internal/widget/HwEditor;->mVibratorEx:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v6, Lhuawei/com/android/internal/widget/HwEditor;->mCursorMoveVibrateType:Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lhuawei/com/android/internal/widget/HwEditor;->mIsSupportCursorMoveVibrator:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "editType":Ljava/lang/reflect/Field;
    .end local v2    # "isSupportHwVibrator":Ljava/lang/reflect/Method;
    .end local v3    # "moveType":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "HwEditor"

    const-string v2, "Not found field HW_VIBRATOR_TYPE_CONTROL_TEXT_EDIT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1

    .line 304
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "HwEditor"

    const-string v2, "Invoke method isSupportHwVibrator error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 302
    :catch_2
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "HwEditor"

    const-string v2, "Not found method isSupportHwVibrator"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 300
    :catch_3
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v1, "HwEditor"

    const-string v2, "VibratorEx instantiation error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 298
    :catch_4
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "HwEditor"

    const-string v2, "Illegal access isSupportHwVibrator"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 296
    :catch_5
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "HwEditor"

    const-string v2, "Not found VibratorEx"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 309
    :goto_1
    return-void
.end method

.method protected onSelectionChanged()V
    .locals 2

    .line 404
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwEditor;->hasSelection()Z

    move-result v0

    .line 409
    .local v0, "hasSelection":Z
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mHasSelectionLastTime:Z

    if-eq v0, v1, :cond_1

    .line 410
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mHasSelectionLastTime:Z

    .line 411
    return-void

    .line 414
    :cond_1
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mShouldVibrate:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwEditor;->isCursorHandleVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lhuawei/com/android/internal/widget/HwEditor;->vibrate(Z)V

    .line 418
    :cond_3
    return-void
.end method

.method public performLongClick(Z)Z
    .locals 2
    .param p1, "handled"    # Z

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/widget/HwEditor;->vibrate(Z)V

    .line 425
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mShouldVibrate:Z

    .line 426
    invoke-super {p0, p1}, Landroid/widget/Editor;->performLongClick(Z)Z

    move-result v0

    .line 428
    .local v0, "result":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mShouldVibrate:Z

    .line 429
    return v0
.end method

.method protected recogniseLineEnd()V
    .locals 8

    .line 244
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 245
    .local v0, "offset":I
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 246
    .local v1, "layout":Landroid/text/Layout;
    iget v2, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTouchPosX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 248
    .local v2, "currLine":I
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    if-ne v0, v4, :cond_1

    if-lez v2, :cond_1

    .line 249
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 251
    .local v4, "start":F
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 253
    .local v5, "end":F
    sub-float v6, v5, v4

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    .line 254
    .local v6, "XThresholdToSnap":F
    iget v7, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTouchPosX:F

    cmpl-float v7, v7, v6

    if-ltz v7, :cond_0

    .line 255
    const/4 v7, 0x1

    iput-boolean v7, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    goto :goto_0

    .line 257
    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    .line 260
    .end local v4    # "start":F
    .end local v5    # "end":F
    .end local v6    # "XThresholdToSnap":F
    :cond_1
    :goto_0
    iput v3, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTouchPosX:F

    .line 262
    .end local v2    # "currLine":I
    :cond_2
    return-void
.end method

.method public selectAllAndShowEditor()V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwEditor;->stopTextActionMode()V

    .line 83
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwEditor;->selectAllText()V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwEditor;->startSelectionActionModeAsync(Z)V

    .line 87
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwEditor;->showFloatingToolbar()V

    .line 88
    return-void
.end method

.method protected setPosIsLineEnd(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 227
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mPosIsLineEnd:Z

    .line 228
    return-void
.end method

.method protected setPosWithMotionEvent(Landroid/view/MotionEvent;Z)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isTouchPos"    # Z

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 193
    .local v0, "location":[I
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwEditor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v1, p2}, Lhuawei/com/android/internal/widget/HwEditor;->setPos(FZ)V

    .line 195
    return-void
.end method
