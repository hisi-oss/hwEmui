.class public final Landroid/util/HwNormalizedSpline;
.super Landroid/util/Spline;
.source "HwNormalizedSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HwNormalizedSpline$BrightnessModeState;,
        Landroid/util/HwNormalizedSpline$DarkAdaptState;,
        Landroid/util/HwNormalizedSpline$Point;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_WITHDELTA_MAX:F = 230.0f

.field private static DEBUG:Z = false

.field private static final DEFAULT_MIN_DELTA:F = 1.0f

.field private static final DEFAULT_RATIO:F = 1.0f

.field private static final HWDEBUG:Z

.field private static final HW_LABC_CONFIG_FILE:Ljava/lang/String; = "LABCConfig.xml"

.field private static final LCD_PANEL_TYPE_PATH:Ljava/lang/String; = "/sys/class/graphics/fb0/lcd_model"

.field private static final TAG:Ljava/lang/String; = "HwNormalizedSpline"

.field private static final TOUCH_OEM_INFO_PATH:Ljava/lang/String; = "/sys/touchscreen/touch_oem_info"

.field private static final XML_EXT:Ljava/lang/String; = ".xml"

.field private static final XML_NAME_NOEXT:Ljava/lang/String; = "LABCConfig"

.field private static final mLock:Ljava/lang/Object;

.field private static final maxBrightness:F = 255.0f

.field private static final minBrightness:F = 4.0f


# instance fields
.field private mAmLux:F

.field private mAmLuxOffset:F

.field private mAmLuxOffsetSaved:F

.field private mAmLuxSaved:F

.field private mBrightenOffsetEffectMinLuxEnable:Z

.field private mBrightenOffsetLuxTh1:F

.field private mBrightenOffsetLuxTh2:F

.field private mBrightenOffsetLuxTh3:F

.field private mBrightenOffsetNoValidBrightenLuxTh1:F

.field private mBrightenOffsetNoValidBrightenLuxTh2:F

.field private mBrightenOffsetNoValidBrightenLuxTh3:F

.field private mBrightenOffsetNoValidBrightenLuxTh4:F

.field private mBrightenOffsetNoValidDarkenLuxTh1:F

.field private mBrightenOffsetNoValidDarkenLuxTh2:F

.field private mBrightenOffsetNoValidDarkenLuxTh3:F

.field private mBrightenOffsetNoValidDarkenLuxTh4:F

.field private mBrightenOffsetNoValidSavedLuxTh1:F

.field private mBrightenOffsetNoValidSavedLuxTh2:F

.field private mBrightnessCalibrationEnabled:Z

.field mBrightnessCurveDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field mBrightnessCurveDefaultTmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field mBrightnessCurveHigh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field mBrightnessCurveHighTmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field mBrightnessCurveLow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field mBrightnessCurveLowTmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field mBrightnessCurveMiddle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field mBrightnessCurveMiddleTmp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessForLog:F

.field private mBrightnessOffsetLuxModeEnable:Z

.field private mBrightnessOffsetTmpValidEnable:Z

.field private mCalibrationRatio:F

.field private mCalibrtionModeBeforeEnable:Z

.field private mCalibrtionTest:I

.field mCameraBrighnessLinePointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraModeEnable:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCoverModeNoOffsetEnable:Z

.field private mCurrentCurveLevel:I

.field private mCurrentUserId:I

.field private mCurveLevel:I

.field private mDarkAdaptEnable:Z

.field private mDarkAdaptLineLocked:Z

.field private mDarkAdaptState:Landroid/util/HwNormalizedSpline$DarkAdaptState;

.field private mDarkAdaptStateDetected:Landroid/util/HwNormalizedSpline$DarkAdaptState;

.field private mDarkAdaptedBrightness0LuxLevel:I

.field private mDarkAdaptedBrightnessPointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mDarkAdaptingBrightness0LuxLevel:I

.field private mDarkAdaptingBrightnessPointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mDarkenOffsetLuxTh1:F

.field private mDarkenOffsetLuxTh2:F

.field private mDarkenOffsetLuxTh3:F

.field private mDarkenOffsetNoValidBrightenLuxTh1:F

.field private mDarkenOffsetNoValidBrightenLuxTh2:F

.field private mDarkenOffsetNoValidBrightenLuxTh3:F

.field private mDarkenOffsetNoValidBrightenLuxTh4:F

.field mDayBrighnessLinePointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mDayModeAlgoEnable:Z

.field private mDayModeEnable:Z

.field private mDayModeMinimumBrightness:F

.field private mDayModeModifyMinBrightness:I

.field private mDayModeModifyNumPoint:I

.field mDefaultBrighnessLinePointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultBrighnessLinePointsListCaliBefore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultBrightness:F

.field private mDefaultBrightnessFromLux:F

.field private mDelta:F

.field private mDeltaNew:F

.field private mDeltaSaved:F

.field private mDeltaTmp:F

.field private final mDeviceActualBrightnessLevel:I

.field private mDeviceActualBrightnessNit:I

.field private mDeviceStandardBrightnessNit:I

.field private mErrorCorrectionOffsetNeedClear:Z

.field private mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

.field private mEyeProtectionSplineEnable:Z

.field private mGameModeBrightnessEnable:Z

.field private mGameModeBrightnessFloor:F

.field private mGameModeBrightnessLimitationEnable:Z

.field mGameModeBrightnessLinePointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mGameModeEnable:Z

.field private mGameModeOffsetLux:F

.field private mGameModePosBrightness:F

.field private mGameModeStartLuxDefaultBrightness:F

.field private mIsReboot:Z

.field private volatile mIsReset:Z

.field private mIsUserChange:Z

.field private mIsUserChangeSaved:Z

.field private mLastBrightnessEndOrig:F

.field private mLastBrightnessEndOrigIn:F

.field private mLastGameModeBrightness:F

.field private mLastLuxDefaultBrightness:F

.field private mLastLuxDefaultBrightnessSaved:F

.field private mLuxPonits:[F

.field private mManager:Lcom/huawei/displayengine/DisplayEngineManager;

.field private mManualBrightnessMaxLimit:I

.field private mManualMode:Z

.field private mNewCurveEnable:Z

.field private mNewCurveEnableTmp:Z

.field private mOffsetBrightenAlphaLeft:F

.field private mOffsetBrightenAlphaRight:F

.field private mOffsetBrightenRatioLeft:F

.field private mOffsetBrightness_last:F

.field private mOffsetBrightness_lastSaved:F

.field private mOffsetDarkenAlphaLeft:F

.field private mOminLevel:F

.field mOminLevelBrighnessLinePointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mOminLevelCount:I

.field private mOminLevelCountEnable:Z

.field mOminLevelCountLevelPointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mOminLevelCountResetLongSetTime:I

.field private mOminLevelCountResetLongSetTimeSaved:I

.field private mOminLevelCountResetLongTimeTh:I

.field private mOminLevelCountSaved:I

.field private mOminLevelCountSetTime:J

.field private mOminLevelCountValidLuxTh:I

.field private mOminLevelCountValidTimeTh:I

.field private mOminLevelDayModeEnable:Z

.field private mOminLevelModeEnable:Z

.field private mOminLevelOffsetCountEnable:Z

.field private mOminLevelValidCount:I

.field private mPersonalizedBrightnessCurveLoadEnable:Z

.field private mPersonalizedBrightnessEnable:Z

.field private mPosBrightness:F

.field private mPosBrightnessSaved:F

.field private mPowerOnEanble:Z

.field private mPowerSavingAmluxThreshold:F

.field private mPowerSavingBrighnessLineEnable:Z

.field mPowerSavingBrighnessLinePointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSavingModeEnable:Z

.field mReadingBrighnessLinePointsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mReadingModeEnable:Z

.field private mRebootNewCurveEnable:Z

.field private mSceneLevel:I

.field private mStartLuxDefaultBrightness:F

.field private mStartLuxDefaultBrightnessSaved:F

.field private mUsePowerSavingModeCurveEnable:Z

.field private mVehicleModeBrighntess:F

.field private mVehicleModeBrightnessEnable:Z

.field private mVehicleModeClearOffsetEnable:Z

.field private mVehicleModeEnable:Z

.field private mVehicleModeLuxThreshold:F

.field public mVehicleModeQuitForPowerOnEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const-string v0, "HwNormalizedSpline"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/util/HwNormalizedSpline;->HWDEBUG:Z

    .line 75
    const/4 v0, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz v0, :cond_2

    const-string v0, "HwNormalizedSpline"

    const/4 v3, 0x4

    .line 76
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    nop

    :cond_3
    :goto_2
    sput-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/HwNormalizedSpline;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceActualBrightnessLevel"    # I
    .param p3, "deviceActualBrightnessNit"    # I
    .param p4, "deviceStandardBrightnessNit"    # I

    .line 252
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 85
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    .line 86
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenRatioLeft:F

    .line 87
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaLeft:F

    .line 88
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaRight:F

    .line 89
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mOffsetDarkenAlphaLeft:F

    .line 90
    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    .line 91
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mIsReboot:Z

    .line 92
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    .line 93
    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    .line 96
    iput v2, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    .line 97
    iput v2, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 107
    iput v3, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    .line 113
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Landroid/util/HwNormalizedSpline;->mAmLux:F

    .line 117
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mCoverModeNoOffsetEnable:Z

    .line 118
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mReadingModeEnable:Z

    .line 119
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mCameraModeEnable:Z

    .line 120
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mManualMode:Z

    .line 121
    const/16 v5, 0xff

    iput v5, p0, Landroid/util/HwNormalizedSpline;->mManualBrightnessMaxLimit:I

    .line 124
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mDayModeEnable:Z

    .line 125
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    .line 126
    const/4 v5, 0x3

    iput v5, p0, Landroid/util/HwNormalizedSpline;->mDayModeModifyNumPoint:I

    .line 127
    const/4 v5, 0x6

    iput v5, p0, Landroid/util/HwNormalizedSpline;->mDayModeModifyMinBrightness:I

    .line 128
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLineEnable:Z

    .line 129
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingModeEnable:Z

    .line 130
    const/high16 v5, 0x41c80000    # 25.0f

    iput v5, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingAmluxThreshold:F

    .line 131
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    .line 132
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffsetSaved:F

    .line 133
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    .line 135
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    .line 136
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelOffsetCountEnable:Z

    .line 137
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountEnable:Z

    .line 138
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelDayModeEnable:Z

    .line 139
    iput v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 140
    iput v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSaved:I

    .line 141
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevel:F

    .line 142
    const/4 v1, 0x5

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidLuxTh:I

    .line 143
    const/16 v1, 0x3c

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidTimeTh:I

    .line 144
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSetTime:J

    .line 145
    const/16 v1, 0x4ec0

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongTimeTh:I

    .line 146
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    .line 148
    iput v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    .line 149
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSplineEnable:Z

    .line 150
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    .line 151
    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    .line 152
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mIsReset:Z

    .line 153
    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    .line 165
    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    .line 166
    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsListCaliBefore:Ljava/util/List;

    .line 168
    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    .line 170
    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    .line 171
    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    .line 172
    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    .line 173
    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    .line 174
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    .line 175
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    .line 176
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    .line 177
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    .line 178
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefaultTmp:Ljava/util/List;

    .line 179
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLowTmp:Ljava/util/List;

    .line 180
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddleTmp:Ljava/util/List;

    .line 181
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHighTmp:Ljava/util/List;

    .line 182
    iput-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mRebootNewCurveEnable:Z

    .line 183
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    .line 184
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    .line 185
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mCurveLevel:I

    .line 186
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mPowerOnEanble:Z

    .line 188
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessEnable:Z

    .line 189
    iput-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    .line 191
    const/16 v6, 0x23

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    iput-object v6, p0, Landroid/util/HwNormalizedSpline;->mLuxPonits:[F

    .line 192
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    .line 193
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeClearOffsetEnable:Z

    .line 194
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeEnable:Z

    .line 195
    iput v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrighntess:F

    .line 196
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeLuxThreshold:F

    .line 197
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mSceneLevel:I

    .line 198
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeEnable:Z

    .line 199
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessEnable:Z

    .line 200
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLimitationEnable:Z

    .line 201
    iput v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessFloor:F

    .line 202
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mLastGameModeBrightness:F

    .line 203
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    .line 204
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    .line 206
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mGameModeStartLuxDefaultBrightness:F

    .line 207
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mGameModePosBrightness:F

    .line 214
    sget-object v2, Landroid/util/HwNormalizedSpline$DarkAdaptState;->UNADAPTED:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptState:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    .line 215
    sget-object v2, Landroid/util/HwNormalizedSpline$DarkAdaptState;->UNADAPTED:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptStateDetected:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    .line 217
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetLuxModeEnable:Z

    .line 218
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh1:F

    .line 219
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh2:F

    .line 220
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh3:F

    .line 221
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh1:F

    .line 222
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh2:F

    .line 223
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh3:F

    .line 224
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh4:F

    .line 225
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh1:F

    .line 226
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh2:F

    .line 227
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh3:F

    .line 228
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh4:F

    .line 229
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetLuxTh1:F

    .line 230
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetLuxTh2:F

    .line 231
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetLuxTh3:F

    .line 232
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh1:F

    .line 233
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh2:F

    .line 234
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh3:F

    .line 235
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh4:F

    .line 236
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetEffectMinLuxEnable:Z

    .line 237
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetTmpValidEnable:Z

    .line 238
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidSavedLuxTh1:F

    .line 239
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidSavedLuxTh2:F

    .line 240
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mErrorCorrectionOffsetNeedClear:Z

    .line 241
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrigIn:F

    .line 242
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrig:F

    .line 1752
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mUsePowerSavingModeCurveEnable:Z

    .line 2023
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeQuitForPowerOnEnable:Z

    .line 2138
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mBrightnessForLog:F

    .line 2196
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mCurrentCurveLevel:I

    .line 253
    new-instance v1, Lcom/huawei/displayengine/DisplayEngineManager;

    invoke-direct {v1}, Lcom/huawei/displayengine/DisplayEngineManager;-><init>()V

    iput-object v1, p0, Landroid/util/HwNormalizedSpline;->mManager:Lcom/huawei/displayengine/DisplayEngineManager;

    .line 254
    iput-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mIsReboot:Z

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    .line 256
    iput p2, p0, Landroid/util/HwNormalizedSpline;->mDeviceActualBrightnessLevel:I

    .line 257
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mDeviceActualBrightnessNit:I

    .line 258
    iput p4, p0, Landroid/util/HwNormalizedSpline;->mDeviceStandardBrightnessNit:I

    .line 260
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadCameraDefaultBrightnessLine()V

    .line 261
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadReadingDefaultBrightnessLine()V

    .line 262
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadPowerSavingDefaultBrightnessLine()V

    .line 263
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadOminLevelCountLevelPointsList()V

    .line 264
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadGameModeDefaultBrightnessLine()V

    .line 266
    :try_start_0
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getConfig()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    const-string v1, "HwNormalizedSpline"

    const-string v2, "getConfig failed! loadDefaultConfig"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "HwNormalizedSpline"

    const-string v4, "IOException : loadDefaultConfig"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const-string v1, "ro.config.hw_eyes_protection"

    const/4 v2, 0x7

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 277
    .local v1, "EyeProtectionConfig":I
    if-eqz v1, :cond_1

    .line 278
    new-instance v2, Lhuawei/android/utils/HwEyeProtectionSplineImpl;

    invoke-direct {v2, p1}, Lhuawei/android/utils/HwEyeProtectionSplineImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    .line 282
    :cond_1
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 284
    .local v2, "screenBrightnessMode":I
    if-nez v2, :cond_2

    .line 285
    iget-object v3, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "hw_screen_auto_brightness_adj"

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    .line 286
    .local v3, "mPosBrightnessSaved":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x33d6bf95    # 1.0E-7f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 287
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "hw_screen_auto_brightness_adj"

    iget v6, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v4, v5, v0, v6}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 288
    const-string v0, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear autobrightness offset,orig mPosBrightnessSaved="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v3    # "mPosBrightnessSaved":F
    :cond_2
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->updateLinePointsListForCalibration()V

    .line 292
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->loadOffsetParas()V

    .line 293
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    if-eqz v0, :cond_3

    .line 294
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getOminLevelBrighnessLinePoints()V

    .line 296
    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
        0x428c0000    # 70.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43af0000    # 350.0f
        0x43c80000    # 400.0f
        0x43fa0000    # 500.0f
        0x44160000    # 600.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x44610000    # 900.0f
        0x447a0000    # 1000.0f
        0x44960000    # 1200.0f
        0x44af0000    # 1400.0f
        0x44e10000    # 1800.0f
        0x45160000    # 2400.0f
        0x453b8000    # 3000.0f
        0x457a0000    # 4000.0f
        0x459c4000    # 5000.0f
        0x45bb8000    # 6000.0f
        0x45fa0000    # 8000.0f
        0x461c4000    # 10000.0f
        0x469c4000    # 20000.0f
        0x46ea6000    # 30000.0f
        0x471c4000    # 40000.0f
    .end array-data
.end method

.method private brightnessCalibration(Ljava/util/List;II)V
    .locals 12
    .param p2, "actulBrightnessNit"    # I
    .param p3, "standardBrightnessNit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;II)V"
        }
    .end annotation

    .line 655
    .local p1, "LinePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 656
    .local v0, "mLinePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move v1, p2

    .line 657
    .local v1, "mActulBrightnessNit":I
    move v2, p3

    .line 658
    .local v2, "mStandardBrightnessNit":I
    const/16 v3, 0x3e8

    .line 659
    .local v3, "validBrightnessNitMax":I
    const/16 v4, 0x190

    .line 661
    .local v4, "validBrightnessNitMin":I
    if-lt v1, v4, :cond_1

    if-gt v1, v3, :cond_1

    if-gt v2, v3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    int-to-float v5, v2

    int-to-float v6, v1

    div-float/2addr v5, v6

    iput v5, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    .line 666
    sget-boolean v5, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 667
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCalibrationRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",mStandardBrightnessNit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mActulBrightnessNit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 662
    :cond_1
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    .line 663
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error input brightnessNit:mStandardBrightnessNit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mActulBrightnessNit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 671
    .local v5, "pointTemp":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 672
    .local v6, "listSize":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_5

    .line 673
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/util/HwNormalizedSpline$Point;

    .line 674
    iget v8, v5, Landroid/util/HwNormalizedSpline$Point;->y:F

    const/high16 v9, 0x40800000    # 4.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    iget v8, v5, Landroid/util/HwNormalizedSpline$Point;->y:F

    const/high16 v10, 0x437f0000    # 255.0f

    cmpg-float v8, v8, v10

    if-gez v8, :cond_4

    .line 675
    iget v8, v5, Landroid/util/HwNormalizedSpline$Point;->y:F

    iget v11, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v8, v11

    iput v8, v5, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 676
    iget v8, v5, Landroid/util/HwNormalizedSpline$Point;->y:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 677
    iput v9, v5, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 679
    :cond_3
    iget v8, v5, Landroid/util/HwNormalizedSpline$Point;->y:F

    cmpl-float v8, v8, v10

    if-ltz v8, :cond_4

    .line 680
    iput v10, v5, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 672
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 685
    .end local v7    # "i":I
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "iter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 686
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/HwNormalizedSpline$Point;

    .line 687
    .local v8, "temp":Landroid/util/HwNormalizedSpline$Point;
    sget-boolean v9, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 688
    const-string v9, "HwNormalizedSpline"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LoadXMLConfig_NewCalibrationBrighnessLinePoints x = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", y = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .end local v8    # "temp":Landroid/util/HwNormalizedSpline$Point;
    :cond_6
    goto :goto_3

    .line 691
    .end local v7    # "iter":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method private checkBrightnessListIsOK(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;)Z"
        }
    .end annotation

    .line 1853
    .local p1, "linePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 1854
    .local v0, "linePointsListin":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1855
    const-string v2, "HwNormalizedSpline"

    const-string v3, "linePointsListin == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    return v1

    .line 1858
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    goto/16 :goto_2

    .line 1863
    :cond_1
    const/4 v2, 0x0

    .line 1864
    .local v2, "lastPoint":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1865
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/HwNormalizedSpline$Point;

    .line 1866
    .local v4, "tmpPoint":Landroid/util/HwNormalizedSpline$Point;
    if-nez v2, :cond_2

    .line 1867
    move-object v2, v4

    goto :goto_1

    .line 1869
    :cond_2
    iget v5, v2, Landroid/util/HwNormalizedSpline$Point;->x:F

    iget v6, v4, Landroid/util/HwNormalizedSpline$Point;->x:F

    sub-float/2addr v5, v6

    const v6, -0x4a79c843    # -1.0E-6f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 1870
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "linePointsListin list.y is false, lastPoint.x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", tmpPoint.x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return v1

    .line 1873
    :cond_3
    iget v5, v2, Landroid/util/HwNormalizedSpline$Point;->y:F

    float-to-int v5, v5

    iget v6, v4, Landroid/util/HwNormalizedSpline$Point;->y:F

    float-to-int v6, v6

    if-le v5, v6, :cond_4

    .line 1874
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "linePointsListin check list.y false, lastPoint.y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", tmpPoint.y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    return v1

    .line 1877
    :cond_4
    move-object v2, v4

    .line 1879
    .end local v4    # "tmpPoint":Landroid/util/HwNormalizedSpline$Point;
    :goto_1
    goto :goto_0

    .line 1880
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_5
    const/4 v1, 0x1

    return v1

    .line 1859
    .end local v2    # "lastPoint":Landroid/util/HwNormalizedSpline$Point;
    :cond_6
    :goto_2
    const-string v2, "HwNormalizedSpline"

    const-string v3, "linePointsListin number is wrong"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    return v1
.end method

.method private checkConfigLoadedFromXML()Z
    .locals 7

    .line 559
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightness:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 560
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 561
    const-string v0, "HwNormalizedSpline"

    const-string v1, "LoadXML false for mDefaultBrightness <= 0, LoadDefaultConfig!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return v2

    .line 565
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->checkPointsListIsOK(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 567
    const-string v0, "HwNormalizedSpline"

    const-string v1, "checkPointsList mDefaultBrighnessLinePointsList is wrong, LoadDefaultConfig!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return v2

    .line 571
    :cond_1
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenRatioLeft:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_10

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaLeft:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaLeft:F

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    goto/16 :goto_3

    .line 577
    :cond_2
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaRight:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_f

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaRight:F

    float-to-double v3, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    goto/16 :goto_2

    .line 583
    :cond_3
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetDarkenAlphaLeft:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetDarkenAlphaLeft:F

    float-to-double v3, v0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_4

    goto/16 :goto_1

    .line 589
    :cond_4
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    if-eqz v0, :cond_7

    .line 590
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidLuxTh:I

    if-gez v0, :cond_5

    .line 591
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 592
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadXML false, mOminLevelCountValidLuxTh="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidLuxTh:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return v2

    .line 595
    :cond_5
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidTimeTh:I

    if-gez v0, :cond_6

    .line 596
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 597
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadXML false, mOminLevelCountValidTimeTh="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidTimeTh:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return v2

    .line 600
    :cond_6
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->checkPointsListIsOK(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 601
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 602
    const-string v0, "HwNormalizedSpline"

    const-string v1, "checkPointsList mOminLevelPointsList is wrong, LoadDefaultConfig!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return v2

    .line 607
    :cond_7
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightnessPointsList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 608
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightnessPointsList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->checkPointsListIsOK(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 609
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 610
    const-string v0, "HwNormalizedSpline"

    const-string v1, "checkPointsList mDarkAdaptingBrightnessPointsList is wrong, LoadDefaultConfig!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return v2

    .line 614
    :cond_8
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightnessPointsList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 615
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightnessPointsList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->checkPointsListIsOK(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 616
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 617
    const-string v0, "HwNormalizedSpline"

    const-string v1, "checkPointsList mDarkAdaptedBrightnessPointsList is wrong, LoadDefaultConfig!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return v2

    .line 622
    :cond_9
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrighntess:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrighntess:F

    const/high16 v3, 0x437f0000    # 255.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_d

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeLuxThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    goto :goto_0

    .line 627
    :cond_a
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b

    .line 628
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 629
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DayModeMinimumBrightness LoadDefaultConfig!,mDayModeMinimumBrightness="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return v2

    .line 632
    :cond_b
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 633
    const-string v0, "HwNormalizedSpline"

    const-string v1, "checkConfigLoadedFromXML success!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_c
    const/4 v0, 0x1

    return v0

    .line 623
    :cond_d
    :goto_0
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 624
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VehicleBrightMode LoadDefaultConfig!,mVehicleModeBrighntess="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrighntess:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mVehicleModeLuxThreshold="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeLuxThreshold:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v2

    .line 584
    :cond_e
    :goto_1
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 585
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadXML false, mOffsetDarkenAlphaLeft="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mOffsetDarkenAlphaLeft:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return v2

    .line 578
    :cond_f
    :goto_2
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 579
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadXML false, mOffsetBrightenAlphaRight="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaRight:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return v2

    .line 572
    :cond_10
    :goto_3
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 573
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadXML false, mOffsetBrightenRatioLeft="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenRatioLeft:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mOffsetBrightenAlphaLeft="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaLeft:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return v2
.end method

.method private checkDayBrightness()Z
    .locals 4

    .line 772
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mDayModeModifyNumPoint:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 773
    const-string v0, "HwNormalizedSpline"

    const-string v1, "mDefaultBrighnessLinePointsList.size < mDayModeModifyNumPoint"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return v2

    .line 776
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mDayModeModifyNumPoint:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/HwNormalizedSpline$Point;

    .line 777
    .local v0, "temp":Landroid/util/HwNormalizedSpline$Point;
    iget v1, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDayModeModifyMinBrightness:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 778
    const-string v1, "HwNormalizedSpline"

    const-string v3, "temp.y < mDayModeModifyMinBrightness"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return v2

    .line 781
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private checkErrorCorrectionOffset()V
    .locals 4

    .line 3072
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mErrorCorrectionOffsetNeedClear:Z

    .line 3073
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetTmpValidEnable:Z

    if-eqz v0, :cond_0

    .line 3074
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    float-to-int v0, v0

    int-to-float v0, v0

    .line 3075
    .local v0, "ambientLuxOffset":F
    iget v1, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x33d6bf95    # 1.0E-7f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidSavedLuxTh1:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidSavedLuxTh2:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 3078
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mErrorCorrectionOffsetNeedClear:Z

    .line 3079
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3080
    const-string v1, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLevel ErrorCorrectOffset, OffsetNeedClear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mErrorCorrectionOffsetNeedClear:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    .end local v0    # "ambientLuxOffset":F
    :cond_0
    return-void
.end method

.method private checkPointsListIsOK(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;)Z"
        }
    .end annotation

    .line 744
    .local p1, "LinePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 745
    .local v0, "mLinePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 746
    const-string v2, "HwNormalizedSpline"

    const-string v3, "LoadXML false for mLinePointsList == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return v1

    .line 749
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    goto :goto_2

    .line 754
    :cond_1
    const/4 v2, 0x0

    .line 755
    .local v2, "lastPoint":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 756
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/HwNormalizedSpline$Point;

    .line 757
    .local v4, "tmpPoint":Landroid/util/HwNormalizedSpline$Point;
    if-nez v2, :cond_2

    .line 758
    move-object v2, v4

    goto :goto_1

    .line 760
    :cond_2
    iget v5, v2, Landroid/util/HwNormalizedSpline$Point;->x:F

    iget v6, v4, Landroid/util/HwNormalizedSpline$Point;->x:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 761
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadDefaultConfig()V

    .line 762
    const-string v5, "HwNormalizedSpline"

    const-string v6, "LoadXML false for mLinePointsList is wrong"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return v1

    .line 765
    :cond_3
    move-object v2, v4

    .line 767
    .end local v4    # "tmpPoint":Landroid/util/HwNormalizedSpline$Point;
    :goto_1
    goto :goto_0

    .line 768
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 750
    .end local v2    # "lastPoint":Landroid/util/HwNormalizedSpline$Point;
    :cond_5
    :goto_2
    const-string v2, "HwNormalizedSpline"

    const-string v3, "LoadXML false for mLinePointsList number is wrong"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return v1
.end method

.method private cloneList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation

    .line 1918
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    if-nez p1, :cond_0

    .line 1919
    const/4 v0, 0x0

    return-object v0

    .line 1921
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1922
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/HwNormalizedSpline$Point;

    .line 1923
    .local v2, "point":Landroid/util/HwNormalizedSpline$Point;
    new-instance v3, Landroid/util/HwNormalizedSpline$Point;

    iget v4, v2, Landroid/util/HwNormalizedSpline$Point;->x:F

    iget v5, v2, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-direct {v3, v4, v5}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1924
    .end local v2    # "point":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_0

    .line 1925
    :cond_1
    return-object v0
.end method

.method private cloneListAndReplaceFirstElement(Ljava/util/List;Landroid/util/HwNormalizedSpline$Point;)Ljava/util/List;
    .locals 6
    .param p2, "element"    # Landroid/util/HwNormalizedSpline$Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;",
            "Landroid/util/HwNormalizedSpline$Point;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation

    .line 2759
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/4 v0, 0x0

    .line 2760
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 2763
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/HwNormalizedSpline$Point;

    .line 2764
    .local v2, "point":Landroid/util/HwNormalizedSpline$Point;
    if-nez v0, :cond_1

    .line 2765
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 2766
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2768
    :cond_1
    new-instance v3, Landroid/util/HwNormalizedSpline$Point;

    iget v4, v2, Landroid/util/HwNormalizedSpline$Point;->x:F

    iget v5, v2, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-direct {v3, v4, v5}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2770
    .end local v2    # "point":Landroid/util/HwNormalizedSpline$Point;
    :goto_1
    goto :goto_0

    .line 2771
    :cond_2
    return-object v0

    .line 2761
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static createHwNormalizedSpline(Landroid/content/Context;III)Landroid/util/HwNormalizedSpline;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceActualBrightnessLevel"    # I
    .param p2, "deviceActualBrightnessNit"    # I
    .param p3, "deviceStandardBrightnessNit"    # I

    .line 1448
    new-instance v0, Landroid/util/HwNormalizedSpline;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/util/HwNormalizedSpline;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method private fillDarkAdaptPointsList()V
    .locals 6

    .line 2733
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightness0LuxLevel:I

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightness0LuxLevel:I

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2736
    :cond_0
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightness0LuxLevel:I

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightness0LuxLevel:I

    if-le v0, v1, :cond_1

    .line 2737
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillDarkAdaptPointsList() error adapted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightness0LuxLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is larger than adapting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightness0LuxLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    return-void

    .line 2741
    :cond_1
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 2742
    return-void

    .line 2744
    :cond_2
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/HwNormalizedSpline$Point;

    .line 2745
    .local v0, "point0Lux":Landroid/util/HwNormalizedSpline$Point;
    iget v1, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 2746
    .local v1, "defaultBrighness0LuxLevel":F
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightness0LuxLevel:I

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_3

    .line 2747
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillDarkAdaptPointsList() error adapting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightness0LuxLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is larger than default="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    return-void

    .line 2751
    :cond_3
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    new-instance v3, Landroid/util/HwNormalizedSpline$Point;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightness0LuxLevel:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-direct {p0, v2, v3}, Landroid/util/HwNormalizedSpline;->cloneListAndReplaceFirstElement(Ljava/util/List;Landroid/util/HwNormalizedSpline$Point;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightnessPointsList:Ljava/util/List;

    .line 2753
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    new-instance v3, Landroid/util/HwNormalizedSpline$Point;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightness0LuxLevel:I

    int-to-float v4, v4

    invoke-direct {v3, v5, v4}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-direct {p0, v2, v3}, Landroid/util/HwNormalizedSpline;->cloneListAndReplaceFirstElement(Ljava/util/List;Landroid/util/HwNormalizedSpline$Point;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightnessPointsList:Ljava/util/List;

    .line 2755
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptEnable:Z

    .line 2756
    return-void

    .line 2734
    .end local v0    # "point0Lux":Landroid/util/HwNormalizedSpline$Point;
    .end local v1    # "defaultBrighness0LuxLevel":F
    :cond_4
    :goto_0
    return-void
.end method

.method private getBrightenOffsetBrightenRaio(FFFFF)F
    .locals 10
    .param p1, "ratio"    # F
    .param p2, "brightnessStartOrig"    # F
    .param p3, "brightnessEndOrig"    # F
    .param p4, "brightnessStartNew"    # F
    .param p5, "delta"    # F

    .line 2924
    move v0, p1

    .line 2925
    .local v0, "brightenRatio":F
    iget v1, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    float-to-int v1, v1

    int-to-float v1, v1

    .line 2926
    .local v1, "ambientLuxOffset":F
    sget-object v2, Landroid/util/HwNormalizedSpline$BrightnessModeState;->GameMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2927
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    float-to-int v2, v2

    int-to-float v1, v2

    .line 2929
    :cond_0
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetLuxModeEnable:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_8

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x33d6bf95    # 1.0E-7f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 2930
    invoke-direct {p0, v1}, Landroid/util/HwNormalizedSpline;->getBrightenOffsetNoValidBrightenLux(F)F

    move-result v3

    .line 2931
    .local v3, "noValidBrightenLuxTh":F
    const/4 v4, 0x0

    .line 2932
    .local v4, "brightenOffsetDelta":F
    const v5, 0x33d6bf95    # 1.0E-7f

    .line 2933
    .local v5, "smallValue":F
    cmpl-float v6, v3, v2

    const/high16 v7, 0x437f0000    # 255.0f

    if-ltz v6, :cond_1

    .line 2934
    invoke-direct {p0, v3}, Landroid/util/HwNormalizedSpline;->getCurrentBrightness(F)F

    move-result v6

    sub-float v4, v6, v7

    .line 2936
    :cond_1
    iget v6, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v4

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v6, :cond_4

    .line 2937
    cmpg-float v6, p5, v8

    if-gez v6, :cond_2

    .line 2938
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 2940
    :cond_2
    cmpl-float v6, p3, p4

    if-lez v6, :cond_3

    .line 2941
    move v6, p3

    goto :goto_0

    :cond_3
    move v6, p4

    :goto_0
    sub-float/2addr v6, p3

    add-float v9, p5, v5

    div-float v0, v6, v9

    goto :goto_1

    .line 2944
    :cond_4
    sub-float v6, v7, p2

    add-float/2addr v6, v4

    cmpg-float v6, v6, v8

    if-gez v6, :cond_5

    .line 2945
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 2947
    :cond_5
    sub-float v6, v7, p3

    add-float/2addr v6, v4

    sub-float v9, v7, p2

    add-float/2addr v9, v5

    add-float/2addr v9, v4

    div-float v0, v6, v9

    .line 2951
    :goto_1
    cmpg-float v2, v0, v2

    if-ltz v2, :cond_6

    cmpl-float v2, v0, v8

    if-lez v2, :cond_7

    .line 2952
    :cond_6
    const/4 v0, 0x0

    .line 2954
    :cond_7
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrigIn:F

    float-to-int v2, v2

    float-to-int v6, p3

    if-eq v2, v6, :cond_8

    .line 2955
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrigIn:F

    .line 2956
    sget-boolean v2, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 2957
    const-string v2, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BrightenOffset origRatio="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "-->brightenRatio="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",mode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",noValidBrightenLuxTh="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",mPosBrightness="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",BrightenOffsetBrightnessMax="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-float/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",ambientLuxOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2957
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    .end local v3    # "noValidBrightenLuxTh":F
    .end local v4    # "brightenOffsetDelta":F
    .end local v5    # "smallValue":F
    :cond_8
    return v0
.end method

.method private getBrightenOffsetDarkenRatio(FFFF)F
    .locals 8
    .param p1, "ratio"    # F
    .param p2, "brightnessStartOrig"    # F
    .param p3, "brightnessEndOrig"    # F
    .param p4, "brightnessStartNew"    # F

    .line 3031
    move v0, p1

    .line 3032
    .local v0, "darkenRatio":F
    iget v1, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    float-to-int v1, v1

    int-to-float v1, v1

    .line 3033
    .local v1, "ambientLuxOffset":F
    sget-object v2, Landroid/util/HwNormalizedSpline$BrightnessModeState;->GameMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 3034
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    float-to-int v2, v2

    int-to-float v1, v2

    .line 3036
    :cond_0
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetLuxModeEnable:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_8

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x33d6bf95    # 1.0E-7f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 3038
    const/4 v3, 0x0

    .line 3039
    .local v3, "brightenOffsetBrightnessMin":F
    const v4, 0x33d6bf95    # 1.0E-7f

    .line 3040
    .local v4, "smallValue":F
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh1:F

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    .line 3041
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh1:F

    .local v5, "noValidBrightenLuxTh":F
    :goto_0
    goto :goto_1

    .line 3042
    .end local v5    # "noValidBrightenLuxTh":F
    :cond_1
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh2:F

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 3043
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh2:F

    goto :goto_0

    .line 3044
    :cond_2
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh3:F

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    .line 3045
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh3:F

    goto :goto_0

    .line 3047
    :cond_3
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh4:F

    .line 3049
    .restart local v5    # "noValidBrightenLuxTh":F
    :goto_1
    cmpl-float v6, v5, v2

    if-gtz v6, :cond_4

    cmpl-float v6, v5, v2

    if-nez v6, :cond_5

    iget-boolean v6, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetEffectMinLuxEnable:Z

    if-nez v6, :cond_5

    .line 3050
    :cond_4
    invoke-direct {p0, v5}, Landroid/util/HwNormalizedSpline;->getCurrentBrightness(F)F

    move-result v3

    .line 3052
    :cond_5
    sub-float v6, p3, v3

    add-float v7, p2, v4

    div-float/2addr v6, v7

    .line 3053
    .end local v0    # "darkenRatio":F
    .local v6, "darkenRatio":F
    cmpg-float v0, v6, v2

    if-ltz v0, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_6

    goto :goto_2

    .line 3056
    :cond_6
    move v0, v6

    goto :goto_3

    .line 3054
    :cond_7
    :goto_2
    const/4 v0, 0x0

    .line 3056
    .end local v6    # "darkenRatio":F
    .restart local v0    # "darkenRatio":F
    :goto_3
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrigIn:F

    float-to-int v2, v2

    float-to-int v6, p3

    if-eq v2, v6, :cond_8

    .line 3057
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrigIn:F

    .line 3058
    sget-boolean v2, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 3059
    const-string v2, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BrightenOffset OrigRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "-->darkenRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3060
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",noValidBrightenLuxTh="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",BrightenOffsetBrightnessMin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",mEffectMinLuxEnable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetEffectMinLuxEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",ambientLuxOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3059
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    .end local v3    # "brightenOffsetBrightnessMin":F
    .end local v4    # "smallValue":F
    .end local v5    # "noValidBrightenLuxTh":F
    :cond_8
    return v0
.end method

.method private getBrightenOffsetNoValidBrightenLux(F)F
    .locals 1
    .param p1, "lux"    # F

    .line 2971
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh1:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 2972
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh1:F

    .local v0, "noValidBrightenLuxTh":F
    :goto_0
    goto :goto_1

    .line 2973
    .end local v0    # "noValidBrightenLuxTh":F
    :cond_0
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh2:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 2974
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh2:F

    goto :goto_0

    .line 2975
    :cond_1
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh3:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 2976
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh3:F

    goto :goto_0

    .line 2978
    :cond_2
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh4:F

    .line 2980
    .restart local v0    # "noValidBrightenLuxTh":F
    :goto_1
    return v0
.end method

.method private getConfig()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    const-string v0, "ro.runmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "currentMode":Ljava/lang/String;
    const-string v1, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "xmlFile":Ljava/io/File;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 499
    const-string v3, "factory"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getFactoryXmlFile()Ljava/io/File;

    move-result-object v1

    .line 501
    if-nez v1, :cond_3

    .line 502
    return v2

    .line 504
    :cond_0
    const-string v3, "normal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 505
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getNormalXmlFile()Ljava/io/File;

    move-result-object v1

    .line 506
    if-nez v1, :cond_3

    .line 507
    return v2

    .line 510
    :cond_1
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getNormalXmlFile()Ljava/io/File;

    move-result-object v1

    .line 511
    if-nez v1, :cond_3

    .line 512
    return v2

    .line 516
    :cond_2
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getNormalXmlFile()Ljava/io/File;

    move-result-object v1

    .line 517
    if-nez v1, :cond_3

    .line 518
    return v2

    .line 523
    :cond_3
    const/4 v3, 0x0

    .line 525
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 526
    invoke-direct {p0, v3}, Landroid/util/HwNormalizedSpline;->getConfigFromXML(Ljava/io/InputStream;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 527
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->fillDarkAdaptPointsList()V

    .line 528
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->checkConfigLoadedFromXML()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v5, v4, :cond_6

    .line 529
    sget-boolean v4, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 530
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->printConfigFromXML()V

    .line 532
    :cond_4
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->initLinePointsList()V

    .line 533
    sget-boolean v4, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 534
    const-string v4, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBrightnessCalibrationEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCalibrationEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",mDeviceActualBrightnessNit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/util/HwNormalizedSpline;->mDeviceActualBrightnessNit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mDeviceStandardBrightnessNit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/util/HwNormalizedSpline;->mDeviceStandardBrightnessNit:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_5
    iget-boolean v4, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCalibrationEnabled:Z

    if-eqz v4, :cond_6

    .line 537
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    iget v6, p0, Landroid/util/HwNormalizedSpline;->mDeviceActualBrightnessNit:I

    iget v7, p0, Landroid/util/HwNormalizedSpline;->mDeviceStandardBrightnessNit:I

    invoke-direct {p0, v4, v6, v7}, Landroid/util/HwNormalizedSpline;->brightnessCalibration(Ljava/util/List;II)V

    .line 540
    :cond_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 541
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getDayBrightnessLinePoints()V

    .line 542
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->updateNewBrightnessCurve()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    nop

    .line 550
    nop

    .line 551
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 543
    return v5

    .line 550
    :cond_7
    nop

    .line 551
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 550
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 547
    :catch_0
    move-exception v4

    .line 548
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "HwNormalizedSpline"

    const-string v6, "getConfig : IOException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_8

    goto :goto_0

    .line 545
    :catch_1
    move-exception v4

    .line 546
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v5, "HwNormalizedSpline"

    const-string v6, "getConfig : FileNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_8

    goto :goto_0

    .line 555
    :cond_8
    :goto_1
    return v2

    .line 550
    :goto_2
    if-eqz v3, :cond_9

    .line 551
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_9
    throw v2
.end method

.method private getConfigFromXML(Ljava/io/InputStream;)Z
    .locals 34
    .param p1, "inStream"    # Ljava/io/InputStream;

    move-object/from16 v1, p0

    .line 1059
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1060
    const-string v0, "HwNormalizedSpline"

    const-string v2, "getConfigFromeXML"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_0
    const/4 v2, 0x0

    .line 1064
    .local v2, "DefaultBrightnessLoaded":Z
    const/4 v3, 0x0

    .line 1065
    .local v3, "DefaultBrighnessLinePointsListsLoadStarted":Z
    const/4 v4, 0x0

    .line 1066
    .local v4, "DefaultBrighnessLinePointsListLoaded":Z
    const/4 v5, 0x0

    .line 1067
    .local v5, "CameraBrightnessLinePointsListsLoadStarted":Z
    const/4 v6, 0x0

    .line 1068
    .local v6, "CameraBrightnessLinePointsListLoaded":Z
    const/4 v7, 0x0

    .line 1069
    .local v7, "ReadingBrightnessLinePointsListsLoadStarted":Z
    const/4 v8, 0x0

    .line 1070
    .local v8, "ReadingBrightnessLinePointsListLoaded":Z
    const/4 v9, 0x0

    .line 1071
    .local v9, "GameModeBrightnessLinePointsListsLoadStarted":Z
    const/4 v10, 0x0

    .line 1072
    .local v10, "GameModeBrightnessLinePointsListLoaded":Z
    const/4 v11, 0x0

    .line 1073
    .local v11, "PowerSavingBrightnessLinePointsListsLoadStarted":Z
    const/4 v12, 0x0

    .line 1074
    .local v12, "PowerSavingBrightnessLinePointsListLoaded":Z
    const/4 v13, 0x0

    .line 1075
    .local v13, "OminLevelCountLevelLinePointsListsLoadStarted":Z
    const/4 v14, 0x0

    .line 1077
    .local v14, "OminLevelCountLevelLinePointsListLoaded":Z
    const/4 v15, 0x0

    .line 1078
    .local v15, "configGroupLoadStarted":Z
    const/16 v16, 0x0

    .line 1079
    .local v16, "loadFinished":Z
    const/16 v17, 0x0

    .line 1081
    .local v17, "name":Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1083
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    :try_start_0
    const-string v0, "UTF-8"
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2d

    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v3, v18

    move-object/from16 v2, p1

    :try_start_1
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1084
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v20, "DefaultBrightnessLoaded":Z
    .local v21, "DefaultBrighnessLinePointsListsLoadStarted":Z
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2a

    .line 1085
    .local v0, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_49

    .line 1086
    packed-switch v0, :pswitch_data_0

    .line 1330
    move/from16 v24, v0

    move/from16 v23, v4

    move/from16 v28, v6

    .end local v0    # "eventType":I
    .end local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .local v23, "DefaultBrighnessLinePointsListLoaded":Z
    .local v24, "eventType":I
    .local v28, "CameraBrightnessLinePointsListLoaded":Z
    goto/16 :goto_e

    .line 1267
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .end local v24    # "eventType":I
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v0    # "eventType":I
    .restart local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    :pswitch_0
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_c

    move-object/from16 v22, v18

    .line 1268
    .end local v17    # "name":Ljava/lang/String;
    .local v22, "name":Ljava/lang/String;
    :try_start_3
    const-string v2, "LABCConfig"
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9

    move/from16 v23, v4

    move-object/from16 v4, v22

    :try_start_4
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .end local v22    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    if-eqz v2, :cond_1

    .line 1269
    if-eqz v15, :cond_1

    .line 1270
    const/4 v2, 0x1

    .line 1271
    .end local v16    # "loadFinished":Z
    .local v2, "loadFinished":Z
    nop

    .line 1330
    move/from16 v24, v0

    move/from16 v16, v2

    .end local v0    # "eventType":I
    .end local v2    # "loadFinished":Z
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .local v4, "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v16    # "loadFinished":Z
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v24    # "eventType":I
    :goto_1
    move-object/from16 v17, v4

    :goto_2
    move/from16 v4, v23

    goto/16 :goto_e

    .line 1274
    .end local v17    # "name":Ljava/lang/String;
    .end local v24    # "eventType":I
    .restart local v0    # "eventType":I
    .local v4, "name":Ljava/lang/String;
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    :cond_1
    if-nez v15, :cond_2

    .line 1275
    nop

    .line 1330
    move/from16 v24, v0

    goto/16 :goto_3

    .line 1277
    :cond_2
    const-string v2, "DefaultBrightnessPoints"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v2, :cond_4

    .line 1278
    const/4 v2, 0x0

    .line 1279
    .end local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .local v2, "DefaultBrighnessLinePointsListsLoadStarted":Z
    move/from16 v24, v0

    :try_start_5
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    .end local v0    # "eventType":I
    .restart local v24    # "eventType":I
    if-eqz v0, :cond_3

    .line 1280
    const/4 v0, 0x1

    .line 1330
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .local v0, "DefaultBrighnessLinePointsListLoaded":Z
    move/from16 v21, v2

    move-object/from16 v17, v4

    move v4, v0

    goto/16 :goto_e

    .line 1282
    .end local v0    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    :cond_3
    const-string v0, "HwNormalizedSpline"
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move/from16 v25, v2

    :try_start_6
    const-string v2, "no DefaultBrightnessPoints loaded!"

    .end local v2    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .local v25, "DefaultBrighnessLinePointsListsLoadStarted":Z
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1283
    return v19

    .line 1350
    .end local v24    # "eventType":I
    :catch_0
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    move/from16 v2, v20

    move/from16 v4, v23

    move/from16 v21, v25

    goto/16 :goto_17

    .line 1348
    :catch_1
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    move/from16 v2, v20

    move/from16 v4, v23

    move/from16 v21, v25

    goto/16 :goto_18

    .line 1346
    :catch_2
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    move/from16 v2, v20

    move/from16 v4, v23

    move/from16 v21, v25

    goto/16 :goto_19

    .line 1350
    .end local v25    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v2    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    :catch_3
    move-exception v0

    move/from16 v25, v2

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    move/from16 v2, v20

    move/from16 v4, v23

    move/from16 v21, v25

    .end local v2    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v25    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    goto/16 :goto_17

    .line 1348
    .end local v25    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v2    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    :catch_4
    move-exception v0

    move/from16 v25, v2

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    move/from16 v2, v20

    move/from16 v4, v23

    move/from16 v21, v25

    .end local v2    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v25    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    goto/16 :goto_18

    .line 1346
    .end local v25    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v2    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    :catch_5
    move-exception v0

    move/from16 v25, v2

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    move/from16 v2, v20

    move/from16 v4, v23

    move/from16 v21, v25

    .end local v2    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v25    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    goto/16 :goto_19

    .line 1285
    .end local v25    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .local v0, "eventType":I
    .restart local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    :cond_4
    move/from16 v24, v0

    .end local v0    # "eventType":I
    .restart local v24    # "eventType":I
    :try_start_7
    const-string v0, "CameraBrightnessPoints"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1286
    const/4 v5, 0x0

    .line 1287
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1288
    const/4 v0, 0x1

    .line 1330
    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .local v0, "CameraBrightnessLinePointsListLoaded":Z
    move v6, v0

    goto/16 :goto_1

    .line 1290
    .end local v0    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    :cond_5
    const-string v0, "HwNormalizedSpline"

    const-string v2, "no CameraBrightnessPoints loaded!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    return v19

    .line 1293
    :cond_6
    const-string v0, "ReadingBrightnessPoints"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1294
    const/4 v7, 0x0

    .line 1295
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1296
    const/4 v0, 0x1

    .line 1330
    .end local v8    # "ReadingBrightnessLinePointsListLoaded":Z
    .local v0, "ReadingBrightnessLinePointsListLoaded":Z
    move v8, v0

    goto/16 :goto_1

    .line 1298
    .end local v0    # "ReadingBrightnessLinePointsListLoaded":Z
    .restart local v8    # "ReadingBrightnessLinePointsListLoaded":Z
    :cond_7
    const-string v0, "HwNormalizedSpline"

    const-string v2, "no ReadingBrightnessPoints loaded!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return v19

    .line 1301
    :cond_8
    const-string v0, "GameModeBrightnessPoints"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1302
    const/4 v9, 0x0

    .line 1303
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1304
    const/4 v0, 0x1

    .line 1330
    .end local v10    # "GameModeBrightnessLinePointsListLoaded":Z
    .local v0, "GameModeBrightnessLinePointsListLoaded":Z
    move v10, v0

    goto/16 :goto_1

    .line 1306
    .end local v0    # "GameModeBrightnessLinePointsListLoaded":Z
    .restart local v10    # "GameModeBrightnessLinePointsListLoaded":Z
    :cond_9
    const-string v0, "HwNormalizedSpline"

    const-string v2, "no GameModeBrightnessPoints loaded!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    return v19

    .line 1309
    :cond_a
    const-string v0, "PowerSavingBrightnessPoints"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1310
    const/4 v11, 0x0

    .line 1311
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 1312
    const/4 v0, 0x1

    .line 1330
    .end local v12    # "PowerSavingBrightnessLinePointsListLoaded":Z
    .local v0, "PowerSavingBrightnessLinePointsListLoaded":Z
    move v12, v0

    goto/16 :goto_1

    .line 1314
    .end local v0    # "PowerSavingBrightnessLinePointsListLoaded":Z
    .restart local v12    # "PowerSavingBrightnessLinePointsListLoaded":Z
    :cond_b
    const-string v0, "HwNormalizedSpline"

    const-string v2, "no PowerSavingBrightnessPoints loaded!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    return v19

    .line 1317
    :cond_c
    const-string v0, "OminLevelCountLevelLinePoints"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1318
    const/4 v13, 0x0

    .line 1319
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 1320
    const/4 v0, 0x1

    .line 1330
    .end local v14    # "OminLevelCountLevelLinePointsListLoaded":Z
    .local v0, "OminLevelCountLevelLinePointsListLoaded":Z
    move v14, v0

    goto/16 :goto_1

    .line 1322
    .end local v0    # "OminLevelCountLevelLinePointsListLoaded":Z
    .restart local v14    # "OminLevelCountLevelLinePointsListLoaded":Z
    :cond_d
    const-string v0, "HwNormalizedSpline"

    const-string v2, "no OminLevelCountLevelPointsList loaded!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1323
    return v19

    .line 1330
    .end local v24    # "eventType":I
    .local v0, "eventType":I
    :cond_e
    :goto_3
    move-object/from16 v17, v4

    move/from16 v4, v23

    .end local v0    # "eventType":I
    .restart local v24    # "eventType":I
    goto/16 :goto_e

    .line 1350
    .end local v24    # "eventType":I
    :catch_6
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "DefaultBrightnessLoaded":Z
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .local v2, "DefaultBrightnessLoaded":Z
    .local v4, "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v17    # "name":Ljava/lang/String;
    .local v30, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_4
    move/from16 v2, v20

    move/from16 v4, v23

    goto/16 :goto_17

    .line 1348
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v17    # "name":Ljava/lang/String;
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v4, "name":Ljava/lang/String;
    .restart local v20    # "DefaultBrightnessLoaded":Z
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    :catch_7
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "DefaultBrightnessLoaded":Z
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .local v4, "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_5
    move/from16 v2, v20

    move/from16 v4, v23

    goto/16 :goto_18

    .line 1346
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v17    # "name":Ljava/lang/String;
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v4, "name":Ljava/lang/String;
    .restart local v20    # "DefaultBrightnessLoaded":Z
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    :catch_8
    move-exception v0

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "DefaultBrightnessLoaded":Z
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .local v4, "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_6
    move/from16 v2, v20

    move/from16 v4, v23

    goto/16 :goto_19

    .line 1350
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v17    # "name":Ljava/lang/String;
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "DefaultBrightnessLoaded":Z
    .restart local v22    # "name":Ljava/lang/String;
    :catch_9
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v4, v22

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    move/from16 v2, v20

    move/from16 v4, v23

    .end local v22    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    goto/16 :goto_17

    .line 1348
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .local v4, "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v22    # "name":Ljava/lang/String;
    :catch_a
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v4, v22

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    move/from16 v2, v20

    move/from16 v4, v23

    .end local v22    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    goto/16 :goto_18

    .line 1346
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .local v4, "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v22    # "name":Ljava/lang/String;
    :catch_b
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v4, v22

    move-object/from16 v30, v3

    move-object/from16 v17, v4

    move/from16 v2, v20

    move/from16 v4, v23

    .end local v22    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    goto/16 :goto_19

    .line 1350
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .local v4, "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v17    # "name":Ljava/lang/String;
    :catch_c
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v30, v3

    move/from16 v2, v20

    .end local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    goto/16 :goto_17

    .line 1348
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    :catch_d
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v30, v3

    move/from16 v2, v20

    .end local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    goto/16 :goto_18

    .line 1346
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    :catch_e
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v30, v3

    move/from16 v2, v20

    .end local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    goto/16 :goto_19

    .line 1088
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v0    # "eventType":I
    .restart local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    :pswitch_1
    move/from16 v24, v0

    move/from16 v23, v4

    .end local v0    # "eventType":I
    .end local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v24    # "eventType":I
    :try_start_8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_18

    move-object v2, v0

    .line 1089
    .end local v17    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    :try_start_9
    const-string v0, "LABCConfig"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1090
    iget v0, v1, Landroid/util/HwNormalizedSpline;->mDeviceActualBrightnessLevel:I
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_17
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_15

    if-nez v0, :cond_10

    .line 1091
    :try_start_a
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 1092
    const-string v0, "HwNormalizedSpline"

    const-string v4, "actualDeviceLevel = 0, load started"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_f

    .line 1094
    :cond_f
    const/4 v0, 0x1

    .line 1095
    .end local v15    # "configGroupLoadStarted":Z
    .local v0, "configGroupLoadStarted":Z
    nop

    .line 1330
    move v15, v0

    move-object/from16 v17, v2

    goto/16 :goto_2

    .line 1350
    .end local v0    # "configGroupLoadStarted":Z
    .end local v24    # "eventType":I
    .restart local v15    # "configGroupLoadStarted":Z
    :catch_f
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v30, v3

    goto/16 :goto_4

    .line 1348
    :catch_10
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v30, v3

    goto/16 :goto_5

    .line 1346
    :catch_11
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v30, v3

    goto/16 :goto_6

    .line 1097
    .restart local v24    # "eventType":I
    :cond_10
    const/4 v0, 0x0

    :try_start_b
    const-string v4, "level"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "deviceLevelString":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_11

    .line 1099
    move-object/from16 v26, v0

    move/from16 v28, v6

    goto :goto_9

    .line 1104
    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1105
    .local v4, "deviceLevel":I
    move-object/from16 v26, v0

    iget v0, v1, Landroid/util/HwNormalizedSpline;->mDeviceActualBrightnessLevel:I

    .end local v0    # "deviceLevelString":Ljava/lang/String;
    .local v26, "deviceLevelString":Ljava/lang/String;
    if-ne v4, v0, :cond_13

    .line 1106
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 1107
    const-string v0, "HwNormalizedSpline"

    move/from16 v27, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "deviceLevel":I
    .local v27, "deviceLevel":I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_15

    move/from16 v28, v6

    :try_start_c
    const-string v6, "actualDeviceLevel = "

    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v28    # "CameraBrightnessLinePointsListLoaded":Z
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/util/HwNormalizedSpline;->mDeviceActualBrightnessLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", find matched level in XML, load start"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1109
    .end local v27    # "deviceLevel":I
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v4    # "deviceLevel":I
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    :cond_12
    move/from16 v27, v4

    move/from16 v28, v6

    .end local v4    # "deviceLevel":I
    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v27    # "deviceLevel":I
    .restart local v28    # "CameraBrightnessLinePointsListLoaded":Z
    :goto_7
    const/4 v15, 0x1

    .end local v27    # "deviceLevel":I
    goto :goto_8

    .line 1112
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    :cond_13
    move/from16 v28, v6

    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v28    # "CameraBrightnessLinePointsListLoaded":Z
    :goto_8
    goto/16 :goto_a

    .line 1099
    .end local v26    # "deviceLevelString":Ljava/lang/String;
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v0    # "deviceLevelString":Ljava/lang/String;
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    :cond_14
    move-object/from16 v26, v0

    move/from16 v28, v6

    .end local v0    # "deviceLevelString":Ljava/lang/String;
    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v26    # "deviceLevelString":Ljava/lang/String;
    .restart local v28    # "CameraBrightnessLinePointsListLoaded":Z
    :goto_9
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 1100
    const-string v0, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "actualDeviceLevel = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/util/HwNormalizedSpline;->mDeviceActualBrightnessLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", but can\'t find level in XML, load start"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_15
    const/4 v0, 0x1

    .line 1330
    .end local v15    # "configGroupLoadStarted":Z
    .local v0, "configGroupLoadStarted":Z
    move v15, v0

    goto/16 :goto_a

    .line 1114
    .end local v0    # "configGroupLoadStarted":Z
    .end local v26    # "deviceLevelString":Ljava/lang/String;
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v15    # "configGroupLoadStarted":Z
    :cond_16
    move/from16 v28, v6

    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v28    # "CameraBrightnessLinePointsListLoaded":Z
    if-nez v15, :cond_17

    .line 1115
    goto/16 :goto_a

    .line 1118
    :cond_17
    const-string v0, "DefaultBrightness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1119
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mDefaultBrightness:F

    .line 1120
    const/4 v0, 0x1

    .line 1330
    .end local v20    # "DefaultBrightnessLoaded":Z
    .local v0, "DefaultBrightnessLoaded":Z
    move/from16 v20, v0

    goto/16 :goto_a

    .line 1121
    .end local v0    # "DefaultBrightnessLoaded":Z
    .restart local v20    # "DefaultBrightnessLoaded":Z
    :cond_18
    const-string v0, "BrightnessCalibrationEnabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1122
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mBrightnessCalibrationEnabled:Z

    goto/16 :goto_a

    .line 1123
    :cond_19
    const-string v0, "OffsetBrightenRatioLeft"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1124
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mOffsetBrightenRatioLeft:F

    goto/16 :goto_a

    .line 1125
    :cond_1a
    const-string v0, "OffsetBrightenAlphaLeft"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1126
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaLeft:F

    goto/16 :goto_a

    .line 1127
    :cond_1b
    const-string v0, "OffsetBrightenAlphaRight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1128
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaRight:F

    goto/16 :goto_a

    .line 1129
    :cond_1c
    const-string v0, "OffsetDarkenAlphaLeft"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1130
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mOffsetDarkenAlphaLeft:F

    goto/16 :goto_a

    .line 1131
    :cond_1d
    const-string v0, "PersonalizedBrightnessCurveEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1132
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessEnable:Z

    goto/16 :goto_a

    .line 1133
    :cond_1e
    const-string v0, "PersonalizedBrightnessCurveLoadEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1134
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    goto/16 :goto_a

    .line 1135
    :cond_1f
    const-string v0, "DayModeMinimumBrightness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1136
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    goto/16 :goto_a

    .line 1137
    :cond_20
    const-string v0, "VehicleModeEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1138
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mVehicleModeEnable:Z

    goto/16 :goto_a

    .line 1139
    :cond_21
    const-string v0, "VehicleModeBrighntess"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1140
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mVehicleModeBrighntess:F

    goto/16 :goto_a

    .line 1141
    :cond_22
    const-string v0, "VehicleModeLuxThreshold"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1142
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mVehicleModeLuxThreshold:F

    goto/16 :goto_a

    .line 1143
    :cond_23
    const-string v0, "GameModeEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1144
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mGameModeEnable:Z

    goto/16 :goto_a

    .line 1145
    :cond_24
    const-string v0, "GameModeBrightnessLimitationEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1146
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLimitationEnable:Z

    goto/16 :goto_a

    .line 1147
    :cond_25
    const-string v0, "GameModeBrightnessFloor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1148
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessFloor:F

    goto/16 :goto_a

    .line 1149
    :cond_26
    const-string v0, "DefaultBrightnessPoints"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1150
    const/4 v0, 0x1

    .line 1330
    .end local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .local v0, "DefaultBrighnessLinePointsListsLoadStarted":Z
    move/from16 v21, v0

    goto/16 :goto_a

    .line 1151
    .end local v0    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    :cond_27
    const-string v0, "Point"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz v21, :cond_29

    .line 1152
    new-instance v0, Landroid/util/HwNormalizedSpline$Point;

    invoke-direct {v0}, Landroid/util/HwNormalizedSpline$Point;-><init>()V

    .line 1153
    .local v0, "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 1154
    .local v4, "s":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v19

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    .line 1155
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    aget-object v6, v6, v17

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 1156
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    if-nez v6, :cond_28

    .line 1157
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    .line 1159
    :cond_28
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    .end local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    .end local v4    # "s":Ljava/lang/String;
    goto/16 :goto_a

    :cond_29
    const-string v0, "CameraBrightnessPoints"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1161
    const/4 v5, 0x1

    .line 1162
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 1163
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_a

    .line 1165
    :cond_2a
    const-string v0, "Point"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz v5, :cond_2c

    .line 1166
    new-instance v0, Landroid/util/HwNormalizedSpline$Point;

    invoke-direct {v0}, Landroid/util/HwNormalizedSpline$Point;-><init>()V

    .line 1167
    .restart local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 1168
    .restart local v4    # "s":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v19

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    .line 1169
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    aget-object v6, v6, v17

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 1170
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    if-nez v6, :cond_2b

    .line 1171
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    .line 1173
    :cond_2b
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    .end local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    .end local v4    # "s":Ljava/lang/String;
    goto/16 :goto_a

    :cond_2c
    const-string v0, "ReadingBrightnessPoints"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1175
    const/4 v7, 0x1

    .line 1176
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 1177
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_a

    .line 1179
    :cond_2d
    const-string v0, "Point"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz v7, :cond_2f

    .line 1180
    new-instance v0, Landroid/util/HwNormalizedSpline$Point;

    invoke-direct {v0}, Landroid/util/HwNormalizedSpline$Point;-><init>()V

    .line 1181
    .restart local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 1182
    .restart local v4    # "s":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v19

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    .line 1183
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    aget-object v6, v6, v17

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 1184
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    if-nez v6, :cond_2e

    .line 1185
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    .line 1187
    :cond_2e
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    .end local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    .end local v4    # "s":Ljava/lang/String;
    goto/16 :goto_a

    :cond_2f
    const-string v0, "GameModeBrightnessPoints"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1189
    const/4 v9, 0x1

    .line 1190
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 1191
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_a

    .line 1193
    :cond_30
    const-string v0, "Point"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz v9, :cond_32

    .line 1194
    new-instance v0, Landroid/util/HwNormalizedSpline$Point;

    invoke-direct {v0}, Landroid/util/HwNormalizedSpline$Point;-><init>()V

    .line 1195
    .restart local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 1196
    .restart local v4    # "s":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v19

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    .line 1197
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    aget-object v6, v6, v17

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 1198
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    if-nez v6, :cond_31

    .line 1199
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    .line 1201
    :cond_31
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    .end local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    .end local v4    # "s":Ljava/lang/String;
    goto/16 :goto_a

    :cond_32
    const-string v0, "PowerSavingBrightnessPoints"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1203
    const/4 v11, 0x1

    .line 1204
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 1205
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_a

    .line 1207
    :cond_33
    const-string v0, "Point"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz v11, :cond_35

    .line 1208
    new-instance v0, Landroid/util/HwNormalizedSpline$Point;

    invoke-direct {v0}, Landroid/util/HwNormalizedSpline$Point;-><init>()V

    .line 1209
    .restart local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 1210
    .restart local v4    # "s":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v19

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    .line 1211
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    aget-object v6, v6, v17

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 1212
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    if-nez v6, :cond_34

    .line 1213
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    .line 1215
    :cond_34
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    .end local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    .end local v4    # "s":Ljava/lang/String;
    goto/16 :goto_a

    :cond_35
    const-string v0, "PowerSavingBrighnessLineEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1217
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLineEnable:Z

    goto/16 :goto_a

    .line 1218
    :cond_36
    const-string v0, "ManualMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1219
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_47

    .line 1220
    iput-boolean v4, v1, Landroid/util/HwNormalizedSpline;->mManualMode:Z

    goto/16 :goto_a

    .line 1222
    :cond_37
    const-string v0, "ManualBrightnessMaxLimit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1223
    iget-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mManualMode:Z

    if-eqz v0, :cond_47

    .line 1224
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mManualBrightnessMaxLimit:I

    goto/16 :goto_a

    .line 1226
    :cond_38
    const-string v0, "DayModeAlgoEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1227
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    goto/16 :goto_a

    .line 1228
    :cond_39
    const-string v0, "DayModeModifyNumPoint"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1229
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mDayModeModifyNumPoint:I

    goto/16 :goto_a

    .line 1230
    :cond_3a
    const-string v0, "DayModeModifyMinBrightness"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1231
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mDayModeModifyMinBrightness:I

    goto/16 :goto_a

    .line 1232
    :cond_3b
    const-string v0, "OminLevelModeEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1233
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    goto/16 :goto_a

    .line 1234
    :cond_3c
    const-string v0, "OminLevelOffsetCountEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1235
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mOminLevelOffsetCountEnable:Z

    goto/16 :goto_a

    .line 1236
    :cond_3d
    const-string v0, "OminLevelDayModeEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1237
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mOminLevelDayModeEnable:Z

    goto/16 :goto_a

    .line 1238
    :cond_3e
    const-string v0, "OminLevelCountValidLuxTh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1239
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidLuxTh:I

    goto/16 :goto_a

    .line 1240
    :cond_3f
    const-string v0, "OminLevelCountValidTimeTh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1241
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidTimeTh:I

    goto/16 :goto_a

    .line 1242
    :cond_40
    const-string v0, "OminLevelCountResetLongTimeTh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1243
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongTimeTh:I

    goto/16 :goto_a

    .line 1244
    :cond_41
    const-string v0, "EyeProtectionSplineEnable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1245
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroid/util/HwNormalizedSpline;->mEyeProtectionSplineEnable:Z

    goto/16 :goto_a

    .line 1246
    :cond_42
    const-string v0, "OminLevelCountLevelLinePoints"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1247
    const/4 v13, 0x1

    .line 1248
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    if-eqz v0, :cond_47

    .line 1249
    iget-object v0, v1, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_a

    .line 1251
    :cond_43
    const-string v0, "Point"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    if-eqz v13, :cond_45

    .line 1252
    new-instance v0, Landroid/util/HwNormalizedSpline$Point;

    invoke-direct {v0}, Landroid/util/HwNormalizedSpline$Point;-><init>()V

    .line 1253
    .restart local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 1254
    .restart local v4    # "s":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v19

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    .line 1255
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x1

    aget-object v6, v6, v17

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 1256
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    if-nez v6, :cond_44

    .line 1257
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    .line 1259
    :cond_44
    iget-object v6, v1, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    .end local v0    # "currentPoint":Landroid/util/HwNormalizedSpline$Point;
    .end local v4    # "s":Ljava/lang/String;
    goto :goto_a

    :cond_45
    const-string v0, "AdaptingBrightness0LuxLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1261
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightness0LuxLevel:I

    goto :goto_a

    .line 1262
    :cond_46
    const-string v0, "AdaptedBrightness0LuxLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1263
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightness0LuxLevel:I
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_12

    .line 1330
    .end local v2    # "name":Ljava/lang/String;
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .local v4, "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v17    # "name":Ljava/lang/String;
    :cond_47
    :goto_a
    move-object/from16 v17, v2

    move/from16 v4, v23

    move/from16 v6, v28

    goto/16 :goto_e

    .line 1350
    .end local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .end local v17    # "name":Ljava/lang/String;
    .end local v24    # "eventType":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v28    # "CameraBrightnessLinePointsListLoaded":Z
    :catch_12
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v30, v3

    move/from16 v2, v20

    move/from16 v4, v23

    move/from16 v6, v28

    goto/16 :goto_17

    .line 1348
    :catch_13
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v30, v3

    move/from16 v2, v20

    move/from16 v4, v23

    move/from16 v6, v28

    goto/16 :goto_18

    .line 1346
    :catch_14
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v30, v3

    move/from16 v2, v20

    move/from16 v4, v23

    move/from16 v6, v28

    goto/16 :goto_19

    .line 1350
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    :catch_15
    move-exception v0

    move/from16 v28, v6

    move-object/from16 v17, v2

    goto :goto_b

    .line 1348
    :catch_16
    move-exception v0

    move/from16 v28, v6

    move-object/from16 v17, v2

    goto :goto_c

    .line 1346
    :catch_17
    move-exception v0

    move/from16 v28, v6

    move-object/from16 v17, v2

    goto :goto_d

    .line 1350
    .end local v2    # "name":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    :catch_18
    move-exception v0

    move/from16 v28, v6

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "DefaultBrightnessLoaded":Z
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .local v2, "DefaultBrightnessLoaded":Z
    .restart local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_b
    move-object/from16 v30, v3

    move/from16 v2, v20

    move/from16 v4, v23

    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v28    # "CameraBrightnessLinePointsListLoaded":Z
    goto/16 :goto_17

    .line 1348
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v20    # "DefaultBrightnessLoaded":Z
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    :catch_19
    move-exception v0

    move/from16 v28, v6

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "DefaultBrightnessLoaded":Z
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_c
    move-object/from16 v30, v3

    move/from16 v2, v20

    move/from16 v4, v23

    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v28    # "CameraBrightnessLinePointsListLoaded":Z
    goto/16 :goto_18

    .line 1346
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v20    # "DefaultBrightnessLoaded":Z
    .restart local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    :catch_1a
    move-exception v0

    move/from16 v28, v6

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "DefaultBrightnessLoaded":Z
    .end local v23    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v4    # "DefaultBrighnessLinePointsListLoaded":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_d
    move-object/from16 v30, v3

    move/from16 v2, v20

    move/from16 v4, v23

    .end local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v28    # "CameraBrightnessLinePointsListLoaded":Z
    goto/16 :goto_19

    .line 1330
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v28    # "CameraBrightnessLinePointsListLoaded":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "CameraBrightnessLinePointsListLoaded":Z
    .restart local v20    # "DefaultBrightnessLoaded":Z
    .restart local v24    # "eventType":I
    :goto_e
    if-eqz v16, :cond_48

    .line 1331
    nop

    .line 1336
    move/from16 v2, v20

    goto :goto_f

    .line 1333
    :cond_48
    :try_start_d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_1b

    .line 1084
    .end local v24    # "eventType":I
    .local v0, "eventType":I
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 1350
    .end local v0    # "eventType":I
    :catch_1b
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v2, v20

    goto/16 :goto_17

    .line 1348
    :catch_1c
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v2, v20

    goto/16 :goto_18

    .line 1346
    :catch_1d
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v2, v20

    goto/16 :goto_19

    .line 1336
    .restart local v0    # "eventType":I
    :cond_49
    move/from16 v24, v0

    move/from16 v23, v4

    move/from16 v28, v6

    move/from16 v2, v20

    .end local v0    # "eventType":I
    .end local v20    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v24    # "eventType":I
    :goto_f
    if-eqz v2, :cond_4b

    if-eqz v4, :cond_4b

    .line 1337
    :try_start_e
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_4a

    .line 1338
    const-string v0, "HwNormalizedSpline"
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_22
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_21

    move/from16 v29, v2

    :try_start_f
    const-string v2, "getConfigFromeXML success!"

    .end local v2    # "DefaultBrightnessLoaded":Z
    .local v29, "DefaultBrightnessLoaded":Z
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_20
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_1e

    goto :goto_13

    .line 1350
    .end local v24    # "eventType":I
    :catch_1e
    move-exception v0

    move-object/from16 v30, v3

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_10
    move/from16 v2, v29

    goto/16 :goto_17

    .line 1348
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v29    # "DefaultBrightnessLoaded":Z
    :catch_1f
    move-exception v0

    move-object/from16 v30, v3

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_11
    move/from16 v2, v29

    goto/16 :goto_18

    .line 1346
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v29    # "DefaultBrightnessLoaded":Z
    :catch_20
    move-exception v0

    move-object/from16 v30, v3

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_12
    move/from16 v2, v29

    goto/16 :goto_19

    .line 1341
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "eventType":I
    :cond_4a
    move/from16 v29, v2

    .end local v2    # "DefaultBrightnessLoaded":Z
    .restart local v29    # "DefaultBrightnessLoaded":Z
    :goto_13
    const/4 v0, 0x1

    return v0

    .line 1350
    .end local v24    # "eventType":I
    .end local v29    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    :catch_21
    move-exception v0

    move/from16 v29, v2

    move-object/from16 v30, v3

    .end local v2    # "DefaultBrightnessLoaded":Z
    .restart local v29    # "DefaultBrightnessLoaded":Z
    goto/16 :goto_17

    .line 1348
    .end local v29    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    :catch_22
    move-exception v0

    move/from16 v29, v2

    move-object/from16 v30, v3

    .end local v2    # "DefaultBrightnessLoaded":Z
    .restart local v29    # "DefaultBrightnessLoaded":Z
    goto/16 :goto_18

    .line 1346
    .end local v29    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    :catch_23
    move-exception v0

    move/from16 v29, v2

    move-object/from16 v30, v3

    .end local v2    # "DefaultBrightnessLoaded":Z
    .restart local v29    # "DefaultBrightnessLoaded":Z
    goto/16 :goto_19

    .line 1342
    .end local v29    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v24    # "eventType":I
    :cond_4b
    move/from16 v29, v2

    .end local v2    # "DefaultBrightnessLoaded":Z
    .restart local v29    # "DefaultBrightnessLoaded":Z
    if-nez v15, :cond_4c

    .line 1343
    :try_start_10
    const-string v0, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_29
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_28
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_27

    move-object/from16 v30, v3

    :try_start_11
    const-string v3, "actualDeviceLevel = "

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/util/HwNormalizedSpline;->mDeviceActualBrightnessLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", can\'t find matched level in XML, load failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_26
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_25
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_24

    .line 1344
    return v19

    .line 1350
    .end local v24    # "eventType":I
    :catch_24
    move-exception v0

    goto :goto_10

    .line 1348
    :catch_25
    move-exception v0

    goto :goto_11

    .line 1346
    :catch_26
    move-exception v0

    goto :goto_12

    .line 1350
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_27
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v2, v29

    goto :goto_14

    .line 1348
    :catch_28
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v2, v29

    goto :goto_15

    .line 1346
    :catch_29
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v2, v29

    goto :goto_16

    .line 1352
    :cond_4c
    move-object/from16 v30, v3

    .line 1353
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    move/from16 v2, v29

    goto :goto_1b

    .line 1350
    .end local v29    # "DefaultBrightnessLoaded":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "DefaultBrightnessLoaded":Z
    :catch_2a
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v2, v20

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_14
    goto :goto_17

    .line 1348
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "DefaultBrightnessLoaded":Z
    :catch_2b
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v2, v20

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_15
    goto :goto_18

    .line 1346
    .end local v2    # "DefaultBrightnessLoaded":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "DefaultBrightnessLoaded":Z
    :catch_2c
    move-exception v0

    move-object/from16 v30, v3

    move/from16 v2, v20

    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "DefaultBrightnessLoaded":Z
    .restart local v2    # "DefaultBrightnessLoaded":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_16
    goto :goto_19

    .line 1350
    .end local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v3, "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2d
    move-exception v0

    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v30, v18

    .line 1351
    .end local v3    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_17
    const-string v3, "HwNormalizedSpline"

    move-object/from16 v31, v0

    const-string v0, "getConfigFromXML : NumberFormatException"

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v31, "e":Ljava/lang/NumberFormatException;
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v31    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1b

    .line 1348
    .end local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2e
    move-exception v0

    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v30, v18

    .line 1349
    .end local v3    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Ljava/io/IOException;
    .restart local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_18
    const-string v3, "HwNormalizedSpline"

    move-object/from16 v32, v0

    const-string v0, "getConfigFromXML : IOException"

    .end local v0    # "e":Ljava/io/IOException;
    .local v32, "e":Ljava/io/IOException;
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v32    # "e":Ljava/io/IOException;
    goto :goto_1a

    .line 1346
    .end local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .end local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2f
    move-exception v0

    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v30, v18

    .line 1347
    .end local v3    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v21    # "DefaultBrighnessLinePointsListsLoadStarted":Z
    .restart local v30    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_19
    const-string v3, "HwNormalizedSpline"

    move-object/from16 v33, v0

    const-string v0, "getConfigFromXML : XmlPullParserException"

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .local v33, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    .end local v33    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1a
    nop

    .line 1353
    :goto_1b
    const-string v0, "HwNormalizedSpline"

    const-string v3, "getConfigFromeXML false!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return v19

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentBrightness(F)F
    .locals 5
    .param p1, "lux"    # F

    .line 2140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2141
    .local v0, "brightnessList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    sget-object v1, Landroid/util/HwNormalizedSpline$1;->$SwitchMap$android$util$HwNormalizedSpline$BrightnessModeState:[I

    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/HwNormalizedSpline$BrightnessModeState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2172
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    goto :goto_0

    .line 2169
    :pswitch_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    .line 2170
    goto :goto_0

    .line 2166
    :pswitch_1
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    .line 2167
    goto :goto_0

    .line 2163
    :pswitch_2
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getCurrentDarkAdaptLine()Ljava/util/List;

    move-result-object v0

    .line 2164
    goto :goto_0

    .line 2160
    :pswitch_3
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsListCaliBefore:Ljava/util/List;

    .line 2161
    goto :goto_0

    .line 2158
    :pswitch_4
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    invoke-virtual {v1, p1}, Lhuawei/android/utils/HwEyeProtectionSpline;->getEyeProtectionBrightnessLevel(F)F

    move-result v1

    return v1

    .line 2155
    :pswitch_5
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    .line 2156
    goto :goto_0

    .line 2152
    :pswitch_6
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getCurrentNewCureLine()Ljava/util/List;

    move-result-object v0

    .line 2153
    goto :goto_0

    .line 2149
    :pswitch_7
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    .line 2150
    goto :goto_0

    .line 2146
    :pswitch_8
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    .line 2147
    goto :goto_0

    .line 2143
    :pswitch_9
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    .line 2144
    nop

    .line 2174
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2175
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    .line 2176
    const-string v1, "HwNormalizedSpline"

    const-string v2, "NewCurveMode brightnessList null,set mDefaultBrighnessLinePointsList"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :cond_1
    invoke-virtual {p0, v0, p1}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    .line 2179
    .local v1, "brightness":F
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeEnable:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeLuxThreshold:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    .line 2180
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrighntess:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrighntess:F

    :goto_1
    move v1, v2

    .line 2182
    :cond_3
    invoke-direct {p0, v1}, Landroid/util/HwNormalizedSpline;->getLimitedGameModeBrightness(F)F

    move-result v1

    .line 2183
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessForLog:F

    float-to-int v2, v2

    float-to-int v3, v1

    if-eq v2, v3, :cond_5

    .line 2184
    sget-boolean v2, Landroid/util/HwNormalizedSpline;->HWDEBUG:Z

    if-eqz v2, :cond_5

    .line 2185
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NewCurveMode mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",mPis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",eyeanble="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2187
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    if-nez v4, :cond_4

    const-string v4, "false"

    goto :goto_2

    .line 2188
    :cond_4
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    invoke-virtual {v4}, Lhuawei/android/utils/HwEyeProtectionSpline;->isEyeProtectionMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",mVehicleModeBrightnessEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2185
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_5
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessForLog:F

    .line 2193
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentCurveLevel()I
    .locals 1

    .line 2228
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mCurveLevel:I

    return v0
.end method

.method private getCurrentDarkAdaptLine()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation

    .line 2787
    sget-object v0, Landroid/util/HwNormalizedSpline$1;->$SwitchMap$android$util$HwNormalizedSpline$DarkAdaptState:[I

    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptState:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    invoke-virtual {v1}, Landroid/util/HwNormalizedSpline$DarkAdaptState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2795
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    return-object v0

    .line 2793
    :pswitch_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightnessPointsList:Ljava/util/List;

    return-object v0

    .line 2791
    :pswitch_1
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightnessPointsList:Ljava/util/List;

    return-object v0

    .line 2789
    :pswitch_2
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentNewCureLine()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation

    .line 2198
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    if-eqz v0, :cond_7

    .line 2199
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getCurrentCurveLevel()I

    move-result v0

    .line 2200
    .local v0, "currentCurveLevel":I
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mCurrentCurveLevel:I

    if-eq v0, v1, :cond_3

    .line 2201
    if-nez v0, :cond_0

    .line 2202
    const-string v1, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NewCurveMode mBrightnessCurveLow NewCurveMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mCurveLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2203
    :cond_0
    if-ne v0, v3, :cond_1

    .line 2204
    const-string v1, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NewCurveMode mBrightnessCurveMiddle NewCurveMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mCurveLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2205
    :cond_1
    if-ne v0, v2, :cond_2

    .line 2206
    const-string v1, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NewCurveMode mBrightnessCurveHigh NewCurveMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mCurveLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2208
    :cond_2
    const-string v1, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NewCurveMode defualt NewCurveMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mCurveLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :goto_0
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mCurrentCurveLevel:I

    .line 2212
    :cond_3
    if-nez v0, :cond_4

    .line 2213
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    return-object v1

    .line 2214
    :cond_4
    if-ne v0, v3, :cond_5

    .line 2215
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    return-object v1

    .line 2216
    :cond_5
    if-ne v0, v2, :cond_6

    .line 2217
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    return-object v1

    .line 2219
    :cond_6
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    return-object v1

    .line 2222
    .end local v0    # "currentCurveLevel":I
    :cond_7
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode NewCurveMode=false,return mDefaultBrighnessLinePointsList"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    return-object v0
.end method

.method private getDarkAdaptOffset(FF)F
    .locals 9
    .param p1, "positionBrightness"    # F
    .param p2, "lux"    # F

    .line 2800
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/HwNormalizedSpline;->getOffsetBrightnessLevel_new(FFF)F

    move-result v0

    .line 2801
    .local v0, "currentOffset":F
    iget v1, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_1

    .line 2802
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->HWDEBUG:Z

    if-eqz v1, :cond_0

    .line 2803
    const-string v1, "HwNormalizedSpline"

    const-string v5, "getDarkAdaptOffset() mDelta = %.1f, current = %.1f"

    new-array v2, v2, [Ljava/lang/Object;

    iget v6, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 2804
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2803
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    :cond_0
    return v0

    .line 2808
    :cond_1
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptLineLocked:Z

    if-eqz v1, :cond_3

    .line 2809
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->HWDEBUG:Z

    if-eqz v1, :cond_2

    .line 2810
    const-string v1, "HwNormalizedSpline"

    const-string v2, "getDarkAdaptOffset() locked, current = %.1f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_2
    return v0

    .line 2814
    :cond_3
    const/4 v1, 0x0

    .line 2815
    .local v1, "offsetMinLimit":F
    sget-object v5, Landroid/util/HwNormalizedSpline$1;->$SwitchMap$android$util$HwNormalizedSpline$DarkAdaptState:[I

    iget-object v6, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptState:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    invoke-virtual {v6}, Landroid/util/HwNormalizedSpline$DarkAdaptState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2827
    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_0

    .line 2824
    :pswitch_0
    iget-object v5, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightnessPointsList:Ljava/util/List;

    invoke-virtual {p0, v5, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    .line 2825
    goto :goto_0

    .line 2820
    :pswitch_1
    iget-object v5, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightnessPointsList:Ljava/util/List;

    invoke-virtual {p0, v5, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v5

    iget-object v6, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightnessPointsList:Ljava/util/List;

    .line 2821
    invoke-virtual {p0, v6, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 2822
    .end local v1    # "offsetMinLimit":F
    .local v5, "offsetMinLimit":F
    nop

    .line 2830
    move v1, v5

    goto :goto_0

    .line 2817
    .end local v5    # "offsetMinLimit":F
    .restart local v1    # "offsetMinLimit":F
    :pswitch_2
    iget-object v5, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightnessPointsList:Ljava/util/List;

    invoke-virtual {p0, v5, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    .line 2818
    nop

    .line 2830
    :goto_0
    sget-boolean v5, Landroid/util/HwNormalizedSpline;->HWDEBUG:Z

    if-eqz v5, :cond_4

    .line 2831
    const-string v5, "HwNormalizedSpline"

    const-string v6, "getDarkAdaptOffset() %s, current = %.1f, minLimit = %.1f"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptState:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    aput-object v8, v7, v4

    .line 2832
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v7, v2

    .line 2831
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_4
    cmpl-float v2, v0, v1

    if-lez v2, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDarkenOffsetBrightenRatio(FFFF)F
    .locals 10
    .param p1, "ratio"    # F
    .param p2, "brightnessStartOrig"    # F
    .param p3, "brightnessEndOrig"    # F
    .param p4, "brightnessStartNew"    # F

    .line 2985
    move v0, p1

    .line 2986
    .local v0, "brightenRatio":F
    iget v1, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    float-to-int v1, v1

    int-to-float v1, v1

    .line 2987
    .local v1, "ambientLuxOffset":F
    sget-object v2, Landroid/util/HwNormalizedSpline$BrightnessModeState;->GameMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2988
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    float-to-int v2, v2

    int-to-float v1, v2

    .line 2990
    :cond_0
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetLuxModeEnable:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_8

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x33d6bf95    # 1.0E-7f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 2992
    const/4 v3, 0x0

    .line 2993
    .local v3, "darkenOffsetDelta":F
    const v4, 0x33d6bf95    # 1.0E-7f

    .line 2994
    .local v4, "smallValue":F
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetLuxTh1:F

    cmpg-float v5, v1, v5

    if-gez v5, :cond_1

    .line 2995
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh1:F

    .local v5, "noValidBrightenLuxTh":F
    :goto_0
    goto :goto_1

    .line 2996
    .end local v5    # "noValidBrightenLuxTh":F
    :cond_1
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetLuxTh2:F

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 2997
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh2:F

    goto :goto_0

    .line 2998
    :cond_2
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetLuxTh3:F

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    .line 2999
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh3:F

    goto :goto_0

    .line 3001
    :cond_3
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh4:F

    .line 3003
    .restart local v5    # "noValidBrightenLuxTh":F
    :goto_1
    cmpl-float v6, v5, v2

    const/high16 v7, 0x437f0000    # 255.0f

    if-ltz v6, :cond_4

    .line 3004
    invoke-direct {p0, v5}, Landroid/util/HwNormalizedSpline;->getCurrentBrightness(F)F

    move-result v6

    sub-float v3, v6, v7

    .line 3006
    :cond_4
    sub-float v6, v7, p2

    add-float/2addr v6, v3

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_5

    .line 3007
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    .line 3009
    :cond_5
    sub-float v6, v7, p3

    add-float/2addr v6, v3

    sub-float v9, v7, p2

    add-float/2addr v9, v3

    add-float/2addr v9, v4

    div-float v0, v6, v9

    .line 3012
    :goto_2
    cmpg-float v2, v0, v2

    if-ltz v2, :cond_6

    cmpl-float v2, v0, v8

    if-lez v2, :cond_7

    .line 3013
    :cond_6
    const/4 v0, 0x0

    .line 3015
    :cond_7
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrigIn:F

    float-to-int v2, v2

    float-to-int v6, p3

    if-eq v2, v6, :cond_8

    .line 3016
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrigIn:F

    .line 3017
    sget-boolean v2, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 3018
    const-string v2, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DarkenOffset origRatio="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "-->brightenRatio="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",mode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",noValidBrightenLuxTh="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",DarkenOffsetBrightnessMin="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-float/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",ambientLuxOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3018
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    .end local v3    # "darkenOffsetDelta":F
    .end local v4    # "smallValue":F
    .end local v5    # "noValidBrightenLuxTh":F
    :cond_8
    return v0
.end method

.method private getDayBrightnessLinePoints()V
    .locals 9

    .line 785
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 786
    return-void

    .line 790
    :cond_0
    const/4 v0, 0x0

    .line 791
    .local v0, "temp":Landroid/util/HwNormalizedSpline$Point;
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->checkDayBrightness()Z

    move-result v1

    if-nez v1, :cond_1

    .line 792
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDayModeModifyNumPoint:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/util/HwNormalizedSpline$Point;

    .line 793
    iget v1, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDayModeModifyMinBrightness:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget v3, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    mul-float/2addr v3, v2

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    .line 794
    .local v1, "u":F
    iget v3, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDayModeModifyMinBrightness:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v5, v4

    mul-float/2addr v3, v5

    iget v5, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    mul-float/2addr v5, v2

    sub-float/2addr v5, v4

    div-float/2addr v3, v5

    .line 795
    .local v3, "v":F
    const-string v2, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DayMode:u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 797
    .end local v1    # "u":F
    .end local v3    # "v":F
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .line 798
    .restart local v1    # "u":F
    const/4 v3, 0x0

    .line 799
    .restart local v3    # "v":F
    const-string v2, "HwNormalizedSpline"

    const-string v4, "error DayBrightnessLinePoints input!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :goto_0
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 803
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    goto :goto_1

    .line 805
    :cond_2
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 808
    :goto_1
    const/4 v2, 0x0

    .line 809
    .local v2, "cntPoint":I
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 810
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/util/HwNormalizedSpline$Point;

    .line 811
    add-int/lit8 v2, v2, 0x1

    .line 812
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDayModeModifyNumPoint:I

    if-le v2, v5, :cond_3

    .line 813
    iget-object v5, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 815
    :cond_3
    iget-object v5, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    new-instance v6, Landroid/util/HwNormalizedSpline$Point;

    iget v7, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    iget v8, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    mul-float/2addr v8, v1

    add-float/2addr v8, v3

    invoke-direct {v6, v7, v8}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 819
    .end local v4    # "iter":Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "iter":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 820
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/util/HwNormalizedSpline$Point;

    .line 821
    sget-boolean v5, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 822
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DayMode:DayBrightnessLine: ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 825
    .end local v4    # "iter":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method private getFactoryXmlFile()Ljava/io/File;
    .locals 6

    .line 299
    const-string v0, "factory"

    .line 300
    .local v0, "factoryMode":Ljava/lang/String;
    const-string v1, "/xml/lcd/%s_%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "LABCConfig"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, ".xml"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "xmlPath":Ljava/lang/String;
    invoke-static {v1, v4}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 302
    .local v2, "xmlFile":Ljava/io/File;
    if-nez v2, :cond_0

    .line 303
    const-string v3, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get xmlFile :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v3, 0x0

    return-object v3

    .line 306
    :cond_0
    return-object v2
.end method

.method private getLcdPanelName()Ljava/lang/String;
    .locals 9

    .line 310
    const-string v0, "DisplayEngineExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 311
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 312
    const-string v2, "HwNormalizedSpline"

    const-string v3, "getLcdPanelName() binder is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-object v1

    .line 315
    :cond_0
    invoke-static {v0}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v2

    .line 316
    .local v2, "mService":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-nez v2, :cond_1

    .line 317
    const-string v3, "HwNormalizedSpline"

    const-string v4, "getLcdPanelName() mService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-object v1

    .line 320
    :cond_1
    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 321
    .local v3, "name":[B
    const/4 v4, 0x0

    move v5, v4

    .line 323
    .local v5, "ret":I
    const/16 v6, 0xe

    :try_start_0
    array-length v7, v3

    invoke-interface {v2, v6, v4, v3, v7}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getEffect(II[BI)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    .end local v5    # "ret":I
    .local v4, "ret":I
    nop

    .line 329
    if-eqz v4, :cond_2

    .line 330
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLcdPanelName() getEffect failed! ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-object v1

    .line 333
    :cond_2
    nop

    .line 335
    .local v1, "panelName":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 336
    .local v5, "lcdModel":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 337
    const/16 v6, 0x20

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v6

    .line 340
    .end local v5    # "lcdModel":Ljava/lang/String;
    goto :goto_0

    .line 338
    :catch_0
    move-exception v5

    .line 339
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "HwNormalizedSpline"

    const-string v7, "Unsupported encoding type!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v1

    .line 325
    .end local v1    # "panelName":Ljava/lang/String;
    .end local v4    # "ret":I
    .local v5, "ret":I
    :catch_1
    move-exception v4

    .line 326
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "HwNormalizedSpline"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLcdPanelName() RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v1
.end method

.method private getLimitedGameModeBrightness(F)F
    .locals 4
    .param p1, "brightnessIn"    # F

    .line 2115
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeEnable:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLimitationEnable:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessEnable:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 2118
    :cond_0
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mLastGameModeBrightness:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mLastGameModeBrightness:F

    cmpg-float v0, v0, p1

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessFloor:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 2126
    :cond_1
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mLastGameModeBrightness:F

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessFloor:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 2127
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessFloor:F

    .local v0, "brightnessOut":F
    goto :goto_0

    .line 2129
    .end local v0    # "brightnessOut":F
    :cond_2
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mLastGameModeBrightness:F

    .line 2131
    .restart local v0    # "brightnessOut":F
    :goto_0
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->HWDEBUG:Z

    if-eqz v1, :cond_3

    float-to-int v1, v0

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mLastGameModeBrightness:F

    float-to-int v2, v2

    if-eq v1, v2, :cond_3

    .line 2132
    const-string v1, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLimitedGameModeBrightness, brightnessOut = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_3
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mLastGameModeBrightness:F

    .line 2135
    return v0

    .line 2122
    .end local v0    # "brightnessOut":F
    :cond_4
    :goto_1
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mLastGameModeBrightness:F

    .line 2123
    return p1

    .line 2116
    :cond_5
    :goto_2
    return p1
.end method

.method private getNormalXmlFile()Ljava/io/File;
    .locals 14

    .line 459
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getLcdPanelName()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "lcdname":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getVersionFromTouchOemInfo()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "lcdversion":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getVersionFromLCD()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "lcdversionNew":Ljava/lang/String;
    const-string v3, "ro.config.devicecolor"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "screenColor":Ljava/lang/String;
    const-string v4, "HwNormalizedSpline"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenColor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v4, "xmlPathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 467
    const-string v11, "/xml/lcd/%s_%s_%s_%s%s"

    new-array v12, v5, [Ljava/lang/Object;

    const-string v13, "LABCConfig"

    aput-object v13, v12, v10

    aput-object v0, v12, v9

    aput-object v1, v12, v8

    aput-object v3, v12, v7

    const-string v13, ".xml"

    aput-object v13, v12, v6

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const-string v11, "/xml/lcd/%s_%s_%s%s"

    new-array v12, v6, [Ljava/lang/Object;

    const-string v13, "LABCConfig"

    aput-object v13, v12, v10

    aput-object v0, v12, v9

    aput-object v1, v12, v8

    const-string v13, ".xml"

    aput-object v13, v12, v7

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_0
    if-eqz v2, :cond_1

    .line 471
    const-string v11, "/xml/lcd/%s_%s_%s_%s%s"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v12, "LABCConfig"

    aput-object v12, v5, v10

    aput-object v0, v5, v9

    aput-object v2, v5, v8

    aput-object v3, v5, v7

    const-string v12, ".xml"

    aput-object v12, v5, v6

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    const-string v5, "/xml/lcd/%s_%s_%s%s"

    new-array v11, v6, [Ljava/lang/Object;

    const-string v12, "LABCConfig"

    aput-object v12, v11, v10

    aput-object v0, v11, v9

    aput-object v2, v11, v8

    const-string v12, ".xml"

    aput-object v12, v11, v7

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_1
    const-string v5, "/xml/lcd/%s_%s_%s%s"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v11, "LABCConfig"

    aput-object v11, v6, v10

    aput-object v0, v6, v9

    aput-object v3, v6, v8

    const-string v11, ".xml"

    aput-object v11, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    const-string v5, "/xml/lcd/%s_%s%s"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v11, "LABCConfig"

    aput-object v11, v6, v10

    aput-object v0, v6, v9

    const-string v11, ".xml"

    aput-object v11, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const-string v5, "/xml/lcd/%s_%s%s"

    new-array v6, v7, [Ljava/lang/Object;

    const-string v7, "LABCConfig"

    aput-object v7, v6, v10

    aput-object v3, v6, v9

    const-string v7, ".xml"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const-string v5, "/xml/lcd/%s"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "LABCConfig.xml"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const/4 v5, 0x0

    .line 480
    .local v5, "xmlFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 481
    .local v6, "xmlPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 482
    .local v7, "listsize":I
    nop

    .local v10, "i":I
    :goto_0
    move v9, v10

    .end local v10    # "i":I
    .local v9, "i":I
    if-ge v9, v7, :cond_3

    .line 483
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    check-cast v6, Ljava/lang/String;

    .line 484
    invoke-static {v6, v8}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 485
    if-eqz v5, :cond_2

    .line 486
    return-object v5

    .line 482
    :cond_2
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .line 490
    .end local v10    # "i":I
    :cond_3
    const-string v8, "HwNormalizedSpline"

    const-string v9, "get failed!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-object v5
.end method

.method private getOminLevelBrighnessLinePoints()V
    .locals 6

    .line 828
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    goto :goto_0

    .line 831
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 833
    :goto_0
    const/4 v0, 0x0

    .line 834
    .local v0, "temp":Landroid/util/HwNormalizedSpline$Point;
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 835
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/HwNormalizedSpline$Point;

    .line 837
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    new-instance v3, Landroid/util/HwNormalizedSpline$Point;

    iget v4, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    iget v5, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-direct {v3, v4, v5}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    sget-boolean v2, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 839
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOminLevelMode:LinePointsList: x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 842
    .end local v1    # "iter":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->updateOminLevelBrighnessLinePoints()V

    goto :goto_2

    .line 844
    :cond_3
    const-string v1, "HwNormalizedSpline"

    const-string v2, "mOminLevelMode getLineFailed, mDayBrighnessLinePointsList==null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :goto_2
    return-void
.end method

.method private getOminLevelCountThMax(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;)I"
        }
    .end annotation

    .line 1717
    .local p1, "linePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 1718
    .local v0, "linePointsListIn":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/4 v1, 0x0

    .line 1719
    .local v1, "countMax":I
    if-nez v0, :cond_0

    .line 1720
    return v1

    .line 1722
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1723
    .local v2, "listSize":I
    if-lez v2, :cond_1

    .line 1724
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/HwNormalizedSpline$Point;

    iget v3, v3, Landroid/util/HwNormalizedSpline$Point;->x:F

    float-to-int v1, v3

    .line 1726
    :cond_1
    return v1
.end method

.method private getOminLevelCountThMin(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;)I"
        }
    .end annotation

    .line 1707
    .local p1, "linePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 1708
    .local v0, "linePointsListIn":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/4 v1, 0x0

    .line 1709
    .local v1, "countMin":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1710
    .local v2, "listSize":I
    if-lez v2, :cond_0

    .line 1711
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/HwNormalizedSpline$Point;

    iget v3, v3, Landroid/util/HwNormalizedSpline$Point;->x:F

    float-to-int v1, v3

    .line 1713
    :cond_0
    return v1
.end method

.method private getOminLevelFromCount(I)F
    .locals 7
    .param p1, "ominLevelCount"    # I

    .line 881
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->getOminLevelCountThMin(Ljava/util/List;)I

    move-result v0

    .line 882
    .local v0, "countThMin":I
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/util/HwNormalizedSpline;->getOminLevelCountThMax(Ljava/util/List;)I

    move-result v1

    .line 883
    .local v1, "countThMax":I
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v2}, Landroid/util/HwNormalizedSpline;->getOminLevelThMin(Ljava/util/List;)F

    move-result v2

    .line 884
    .local v2, "levelMin":F
    iget-object v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v3}, Landroid/util/HwNormalizedSpline;->getOminLevelThMax(Ljava/util/List;)F

    move-result v3

    .line 885
    .local v3, "levelMax":F
    if-ge p1, v0, :cond_0

    .line 886
    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevel:F

    goto :goto_0

    .line 887
    :cond_0
    if-lt p1, v1, :cond_1

    .line 888
    iput v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevel:F

    goto :goto_0

    .line 890
    :cond_1
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    int-to-float v5, p1

    invoke-direct {p0, v4, v5}, Landroid/util/HwNormalizedSpline;->getOminLevelFromCountInternal(Ljava/util/List;F)F

    move-result v4

    iput v4, p0, Landroid/util/HwNormalizedSpline;->mOminLevel:F

    .line 891
    const-string v4, "HwNormalizedSpline"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOminLevelMode ominLevelCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mOminLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/util/HwNormalizedSpline;->mOminLevel:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ",cmin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",cmax="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_0
    iget v4, p0, Landroid/util/HwNormalizedSpline;->mOminLevel:F

    return v4
.end method

.method private getOminLevelFromCountInternal(Ljava/util/List;F)F
    .locals 6
    .param p2, "levelCount"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;F)F"
        }
    .end annotation

    .line 897
    .local p1, "linePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 898
    .local v0, "linePointsListIn":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/high16 v1, 0x40800000    # 4.0f

    .line 899
    .local v1, "brightnessLevel":F
    if-nez v0, :cond_0

    .line 900
    const-string v2, "HwNormalizedSpline"

    const-string v3, "mOminLevelMode linePointsListIn==null,return minBrightness"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/high16 v2, 0x40800000    # 4.0f

    return v2

    .line 903
    :cond_0
    const/4 v2, 0x0

    .line 904
    .local v2, "temp1":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 905
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/HwNormalizedSpline$Point;

    .line 906
    .local v4, "temp":Landroid/util/HwNormalizedSpline$Point;
    if-nez v2, :cond_1

    .line 907
    move-object v2, v4

    .line 909
    :cond_1
    iget v5, v4, Landroid/util/HwNormalizedSpline$Point;->x:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_2

    .line 910
    iget v1, v2, Landroid/util/HwNormalizedSpline$Point;->y:F

    goto :goto_1

    .line 912
    :cond_2
    move-object v2, v4

    .line 914
    .end local v4    # "temp":Landroid/util/HwNormalizedSpline$Point;
    :goto_1
    goto :goto_0

    .line 915
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_3
    return v1
.end method

.method private getOminLevelThMax(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;)F"
        }
    .end annotation

    .line 1740
    .local p1, "linePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 1741
    .local v0, "linePointsListIn":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/high16 v1, 0x40800000    # 4.0f

    .line 1742
    .local v1, "levelMax":F
    if-nez v0, :cond_0

    .line 1743
    return v1

    .line 1745
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1746
    .local v2, "listSize":I
    if-lez v2, :cond_1

    .line 1747
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/HwNormalizedSpline$Point;

    iget v1, v3, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 1749
    :cond_1
    return v1
.end method

.method private getOminLevelThMin(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;)F"
        }
    .end annotation

    .line 1730
    .local p1, "linePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 1731
    .local v0, "linePointsListIn":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/high16 v1, 0x40800000    # 4.0f

    .line 1732
    .local v1, "levelMin":F
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1733
    .local v2, "listSize":I
    if-lez v2, :cond_0

    .line 1734
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/HwNormalizedSpline$Point;

    iget v1, v3, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 1736
    :cond_0
    return v1
.end method

.method private getVersionFromLCD()Ljava/lang/String;
    .locals 11

    .line 416
    const-string v0, "DisplayEngineExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 417
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 418
    const-string v2, "HwNormalizedSpline"

    const-string v3, "getLcdPanelName() binder is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-object v1

    .line 421
    :cond_0
    invoke-static {v0}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v2

    .line 422
    .local v2, "mService":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-nez v2, :cond_1

    .line 423
    const-string v3, "HwNormalizedSpline"

    const-string v4, "getLcdPanelName() mService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-object v1

    .line 426
    :cond_1
    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 427
    .local v3, "name":[B
    const/4 v4, 0x0

    .line 429
    .local v4, "ret":I
    const/16 v5, 0xe

    const/4 v6, 0x3

    :try_start_0
    array-length v7, v3

    invoke-interface {v2, v5, v6, v3, v7}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getEffect(II[BI)I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v5

    .line 434
    nop

    .line 435
    if-eqz v4, :cond_2

    .line 436
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLcdPanelName() getEffect failed! ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-object v1

    .line 439
    :cond_2
    nop

    .line 441
    .local v1, "panelVersion":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 442
    .local v5, "lcdVersion":Ljava/lang/String;
    nop

    .line 443
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 444
    const-string v6, "VER:"

    .line 445
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 446
    .local v7, "index":I
    const-string v8, "HwNormalizedSpline"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVersionFromLCD() index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",lcdVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 448
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v8

    .line 453
    .end local v5    # "lcdVersion":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "index":I
    :cond_3
    goto :goto_0

    .line 451
    :catch_0
    move-exception v5

    .line 452
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "HwNormalizedSpline"

    const-string v7, "Unsupported encoding type!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVersionFromLCD() panelVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-object v1

    .line 431
    .end local v1    # "panelVersion":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 432
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "HwNormalizedSpline"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLcdPanelName() RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-object v1
.end method

.method private getVersionFromTouchOemInfo()Ljava/lang/String;
    .locals 14

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "touch_oem_info":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v1

    .line 348
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "/sys/touchscreen/touch_oem_info"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "strPanelPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 351
    invoke-static {v5, v7, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 352
    const-string v6, "HwNormalizedSpline"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "touch_oem_info="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 354
    .local v6, "versionInfo":[Ljava/lang/String;
    array-length v7, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v8, 0xf

    if-le v7, v8, :cond_8

    .line 359
    const/16 v7, 0xc

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 360
    .local v7, "productYear":I
    const/16 v8, 0xd

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 361
    .local v8, "productMonth":I
    const/16 v9, 0xe

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    .local v9, "productDay":I
    nop

    .line 364
    nop

    .line 366
    :try_start_2
    const-string v10, "HwNormalizedSpline"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lcdversionInfo orig productYear="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",productMonth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",productDay="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/16 v10, 0x30

    if-lt v7, v10, :cond_7

    const/16 v11, 0x39

    if-gt v7, v11, :cond_7

    .line 368
    sub-int/2addr v7, v10

    .line 374
    const/16 v12, 0x41

    if-lt v8, v10, :cond_0

    if-gt v8, v11, :cond_0

    .line 375
    sub-int/2addr v8, v10

    goto :goto_0

    .line 376
    :cond_0
    if-lt v8, v12, :cond_6

    const/16 v13, 0x43

    if-gt v8, v13, :cond_6

    .line 377
    add-int/lit8 v13, v8, -0x41

    add-int/lit8 v8, v13, 0xa

    .line 383
    :goto_0
    if-lt v9, v10, :cond_1

    if-gt v9, v11, :cond_1

    .line 384
    sub-int/2addr v9, v10

    goto :goto_1

    .line 385
    :cond_1
    if-lt v9, v12, :cond_5

    const/16 v10, 0x58

    if-gt v9, v10, :cond_5

    .line 386
    add-int/lit8 v10, v9, -0x41

    add-int/lit8 v9, v10, 0xa

    .line 392
    :goto_1
    const/16 v10, 0x8

    if-le v7, v10, :cond_2

    .line 393
    const-string v1, "vn2"

    .line 402
    .end local v2    # "version":Ljava/lang/String;
    .local v1, "version":Ljava/lang/String;
    :goto_2
    move-object v2, v1

    goto :goto_3

    .line 394
    .end local v1    # "version":Ljava/lang/String;
    .restart local v2    # "version":Ljava/lang/String;
    :cond_2
    if-ne v7, v10, :cond_3

    if-le v8, v4, :cond_3

    .line 395
    const-string v1, "vn2"

    goto :goto_2

    .line 396
    :cond_3
    if-ne v7, v10, :cond_4

    if-ne v8, v4, :cond_4

    const/16 v4, 0x16

    if-lt v9, v4, :cond_4

    .line 397
    const-string v1, "vn2"

    goto :goto_2

    .line 402
    :goto_3
    const-string v1, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lcdversionInfo real vn2,productYear="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",productMonth="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",productDay="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v7    # "productYear":I
    .end local v8    # "productMonth":I
    .end local v9    # "productDay":I
    goto :goto_4

    .line 399
    .restart local v7    # "productYear":I
    .restart local v8    # "productMonth":I
    .restart local v9    # "productDay":I
    :cond_4
    const-string v4, "HwNormalizedSpline"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lcdversionInfo not valid version;productYear="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",productMonth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",productDay="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v1

    .line 388
    :cond_5
    const-string v4, "HwNormalizedSpline"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lcdversionInfo not valid productDay="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-object v1

    .line 379
    :cond_6
    const-string v4, "HwNormalizedSpline"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lcdversionInfo not valid productMonth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-object v1

    .line 370
    :cond_7
    const-string v4, "HwNormalizedSpline"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lcdversionInfo not valid productYear="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v1

    .line 362
    .end local v7    # "productYear":I
    .end local v8    # "productMonth":I
    .end local v9    # "productDay":I
    :catch_0
    move-exception v4

    .line 363
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const-string v7, "HwNormalizedSpline"

    const-string v8, "lcdversionInfo versionfile num is not valid,no need version"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-object v1

    .line 404
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_8
    const-string v1, "HwNormalizedSpline"

    const-string v4, "lcdversionInfo versionfile info length is not valid,no need version"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v6    # "versionInfo":[Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 407
    :cond_9
    const-string v1, "HwNormalizedSpline"

    const-string v4, "lcdversionInfo versionfile is not exists, no need version,filePath=/sys/touchscreen/touch_oem_info"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 411
    .end local v3    # "strPanelPath":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :goto_5
    goto :goto_6

    .line 409
    :catch_1
    move-exception v1

    .line 410
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "HwNormalizedSpline"

    const-string v4, "Error reading touch_oem_info"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v1    # "e":Ljava/io/IOException;
    :goto_6
    return-object v2
.end method

.method private initLinePointsList()V
    .locals 5

    .line 638
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 639
    .local v0, "listSize":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 640
    new-instance v3, Landroid/util/HwNormalizedSpline$Point;

    invoke-direct {v3}, Landroid/util/HwNormalizedSpline$Point;-><init>()V

    .line 641
    .local v3, "tempPoint":Landroid/util/HwNormalizedSpline$Point;
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/HwNormalizedSpline$Point;

    iget v4, v4, Landroid/util/HwNormalizedSpline$Point;->x:F

    iput v4, v3, Landroid/util/HwNormalizedSpline$Point;->x:F

    .line 642
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/HwNormalizedSpline$Point;

    iget v4, v4, Landroid/util/HwNormalizedSpline$Point;->y:F

    iput v4, v3, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 643
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsListCaliBefore:Ljava/util/List;

    if-nez v4, :cond_0

    .line 644
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsListCaliBefore:Ljava/util/List;

    .line 646
    :cond_0
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsListCaliBefore:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v3    # "tempPoint":Landroid/util/HwNormalizedSpline$Point;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "spline_calibration_test"

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 649
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 650
    const-string v1, "HwNormalizedSpline"

    const-string v2, "init list_DefaultBrighnessLinePointsBeforeCali"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_2
    return-void
.end method

.method private loadCameraDefaultBrightnessLine()V
    .locals 4

    .line 950
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 953
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    .line 956
    :goto_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, 0x423a0000    # 46.5f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const v2, 0x44f96000    # 1995.0f

    const v3, 0x430cb333    # 140.7f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x457a0000    # 4000.0f

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const v2, 0x471c4000    # 40000.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    return-void
.end method

.method private loadDefaultConfig()V
    .locals 6

    .line 919
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightness:F

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCalibrationEnabled:Z

    .line 921
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 922
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 924
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    .line 927
    :goto_0
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    new-instance v2, Landroid/util/HwNormalizedSpline$Point;

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {v2, v3, v4}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    new-instance v2, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v3, 0x41c80000    # 25.0f

    const/high16 v5, 0x423a0000    # 46.5f

    invoke-direct {v2, v3, v5}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    new-instance v2, Landroid/util/HwNormalizedSpline$Point;

    const v3, 0x44f96000    # 1995.0f

    const v5, 0x430cb333    # 140.7f

    invoke-direct {v2, v3, v5}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    new-instance v2, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v3, 0x457a0000    # 4000.0f

    const/high16 v5, 0x437f0000    # 255.0f

    invoke-direct {v2, v3, v5}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    new-instance v2, Landroid/util/HwNormalizedSpline$Point;

    const v3, 0x471c4000    # 40000.0f

    invoke-direct {v2, v3, v5}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadCameraDefaultBrightnessLine()V

    .line 933
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadPowerSavingDefaultBrightnessLine()V

    .line 934
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->loadOminLevelCountLevelPointsList()V

    .line 935
    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    .line 936
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightnessPointsList:Ljava/util/List;

    .line 937
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightness0LuxLevel:I

    .line 938
    iput-object v1, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightnessPointsList:Ljava/util/List;

    .line 939
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightness0LuxLevel:I

    .line 940
    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptEnable:Z

    .line 941
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    .line 942
    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessEnable:Z

    .line 943
    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    .line 944
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 945
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->printConfigFromXML()V

    .line 947
    :cond_1
    return-void
.end method

.method private loadGameModeDefaultBrightnessLine()V
    .locals 4

    .line 976
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 979
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    .line 981
    :goto_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 982
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, 0x423a0000    # 46.5f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const v2, 0x44f96000    # 1995.0f

    const v3, 0x430cb333    # 140.7f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x457a0000    # 4000.0f

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const v2, 0x471c4000    # 40000.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    return-void
.end method

.method private loadOminLevelCountLevelPointsList()V
    .locals 4

    .line 1002
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1005
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    .line 1008
    :goto_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    return-void
.end method

.method private loadPowerSavingDefaultBrightnessLine()V
    .locals 4

    .line 988
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 991
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    .line 994
    :goto_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, 0x423a0000    # 46.5f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const v2, 0x44f96000    # 1995.0f

    const v3, 0x430cb333    # 140.7f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x457a0000    # 4000.0f

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const v2, 0x471c4000    # 40000.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    return-void
.end method

.method private loadReadingDefaultBrightnessLine()V
    .locals 4

    .line 964
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 967
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    .line 969
    :goto_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, 0x423a0000    # 46.5f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const v2, 0x44f96000    # 1995.0f

    const v3, 0x430cb333    # 140.7f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const/high16 v2, 0x457a0000    # 4000.0f

    const/high16 v3, 0x437f0000    # 255.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    new-instance v1, Landroid/util/HwNormalizedSpline$Point;

    const v2, 0x471c4000    # 40000.0f

    invoke-direct {v1, v2, v3}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    return-void
.end method

.method private printConfigFromXML()V
    .locals 5

    .line 1014
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadXMLConfig_DefaultBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadXMLConfig_mBrightnessCalibrationEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCalibrationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mPowerSavingBrighnessLineEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLineEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mOffsetBrightenRatioLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenRatioLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mOffsetBrightenAlphaLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mOffsetBrightenAlphaRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaRight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mOffsetDarkenAlphaLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetDarkenAlphaLeft:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mManualMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mManualMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mManualBrightnessMaxLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mManualBrightnessMaxLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mPersonalizedBrightnessEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mVehicleModeEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mVehicleModeBrighntess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrighntess:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mVehicleModeLuxThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeLuxThreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mGameModeEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mPersonalizedBrightnessCurveLoadEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadXMLConfig_mGameModeBrightnessLimitationEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLimitationEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "mGameModeBrightnessFloor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessFloor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadXMLConfig_mOminLevelMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mCountEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelOffsetCountEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mDayEn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelDayModeEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",ValidLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidLuxTh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",ValidTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidTimeTh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mLongTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongTimeTh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",EyeEn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSplineEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1026
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 1027
    .local v1, "temp":Landroid/util/HwNormalizedSpline$Point;
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadXMLConfig_DefaultBrighnessLinePoints x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .end local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_0

    .line 1029
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1030
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 1031
    .restart local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadXMLConfig_CameraBrighnessLinePointsList x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    .end local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_1

    .line 1033
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1034
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 1035
    .restart local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadXMLConfig_ReadingBrighnessLinePointsList x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .end local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_2

    .line 1037
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1038
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 1039
    .restart local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadXMLConfig_mGameModeBrightnessLinePointsList x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    .end local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_3

    .line 1041
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_3
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1042
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 1043
    .restart local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadXMLConfig_mPowerSavingBrighnessLinePointsList x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    .end local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_4

    .line 1045
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_4
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1046
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1047
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 1048
    .restart local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadXMLConfig_mOminLevelCountLevelPointsList x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    .end local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_5

    .line 1051
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_5
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptEnable:Z

    if-eqz v0, :cond_6

    .line 1052
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadXMLConfig_DarkAdaptingBrightness0LuxLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptingBrightness0LuxLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Adapted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptedBrightness0LuxLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_6
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadXMLConfig_DayModeMinimumBrightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void
.end method

.method private resetOminLevelCount(Ljava/util/List;F)I
    .locals 6
    .param p2, "levelCount"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;F)I"
        }
    .end annotation

    .line 1676
    .local p1, "linePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 1677
    .local v0, "linePointsListIn":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/4 v1, 0x0

    .line 1678
    .local v1, "ominLevelCount":I
    if-nez p1, :cond_0

    .line 1679
    const-string v2, "HwNormalizedSpline"

    const-string v3, "mOminLevelMode linePointsList input error!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    return v1

    .line 1683
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/HwNormalizedSpline;->getOminLevelCountThMin(Ljava/util/List;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    .line 1684
    return v1

    .line 1687
    :cond_1
    invoke-direct {p0, p1}, Landroid/util/HwNormalizedSpline;->getOminLevelCountThMax(Ljava/util/List;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_2

    .line 1688
    invoke-direct {p0, p1}, Landroid/util/HwNormalizedSpline;->getOminLevelCountThMax(Ljava/util/List;)I

    move-result v1

    .line 1689
    return v1

    .line 1691
    :cond_2
    const/4 v2, 0x0

    .line 1692
    .local v2, "temp1":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1693
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/HwNormalizedSpline$Point;

    .line 1694
    .local v4, "temp":Landroid/util/HwNormalizedSpline$Point;
    if-nez v2, :cond_3

    .line 1695
    move-object v2, v4

    .line 1697
    :cond_3
    iget v5, v4, Landroid/util/HwNormalizedSpline$Point;->x:F

    cmpg-float v5, p2, v5

    if-gez v5, :cond_4

    .line 1698
    iget v5, v2, Landroid/util/HwNormalizedSpline$Point;->x:F

    float-to-int v1, v5

    goto :goto_1

    .line 1700
    :cond_4
    move-object v2, v4

    .line 1702
    .end local v4    # "temp":Landroid/util/HwNormalizedSpline$Point;
    :goto_1
    goto :goto_0

    .line 1703
    .end local v3    # "iter":Ljava/util/Iterator;
    :cond_5
    return v1
.end method

.method private saveOffsetParas()V
    .locals 5

    .line 1399
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mPosBrightnessSaved:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    if-eq v0, v2, :cond_0

    .line 1400
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "hw_screen_auto_brightness_adj"

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1401
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightnessSaved:F

    .line 1403
    :cond_0
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDeltaSaved:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    if-eq v0, v2, :cond_1

    .line 1404
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "spline_delta"

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1405
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaSaved:F

    .line 1407
    :cond_1
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mIsUserChangeSaved:Z

    if-eq v0, v2, :cond_3

    .line 1408
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "spline_is_user_change"

    iget-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget v3, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1409
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsUserChangeSaved:Z

    .line 1411
    :cond_3
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_lastSaved:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    if-eq v0, v2, :cond_4

    .line 1412
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "spline_offset_brightness_last"

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1413
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_lastSaved:F

    .line 1415
    :cond_4
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightnessSaved:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    if-eq v0, v2, :cond_5

    .line 1416
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "spline_last_lux_default_brightness"

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1417
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightnessSaved:F

    .line 1419
    :cond_5
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightnessSaved:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    if-eq v0, v2, :cond_6

    .line 1420
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "spline_start_lux_default_brightness"

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1421
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightnessSaved:F

    .line 1423
    :cond_6
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mAmLux:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mAmLuxSaved:F

    mul-float/2addr v2, v1

    float-to-int v2, v2

    if-eq v0, v2, :cond_7

    .line 1424
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "spline_ambient_lux"

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mAmLux:F

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1425
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mAmLux:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mAmLuxSaved:F

    .line 1427
    :cond_7
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffsetSaved:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    if-eq v0, v1, :cond_8

    .line 1428
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_ambient_lux_offset"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1429
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffsetSaved:F

    .line 1431
    :cond_8
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSaved:I

    if-eq v0, v1, :cond_9

    .line 1432
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_ominlevel_count"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1433
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSaved:I

    .line 1434
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOminLevelMode saved mOminLevelCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_9
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTimeSaved:I

    if-eq v0, v1, :cond_a

    .line 1437
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_ominlevel_time"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1438
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTimeSaved:I

    .line 1439
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOminLevelMode saved mOminLevelCountResetLongSetTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_a
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->HWDEBUG:Z

    if-eqz v0, :cond_b

    .line 1442
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write:userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mPosBrightness ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mOffsetBrightness_last="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mIsUserChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mDeltaNew="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mStartLuxDefaultBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "mLastLuxDefaultBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mAmLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mAmLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mAmLuxOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_b
    return-void
.end method

.method private updateDarkAdaptState()V
    .locals 3

    .line 2775
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptLineLocked:Z

    if-eqz v0, :cond_0

    .line 2776
    return-void

    .line 2778
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptState:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptStateDetected:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    if-eq v0, v1, :cond_2

    .line 2779
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2780
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDarkAdaptState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptState:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptStateDetected:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_1
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptStateDetected:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptState:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    .line 2784
    :cond_2
    return-void
.end method

.method private updateLinePointsListForCalibration()V
    .locals 5

    .line 694
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCalibrationEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x33d6bf95    # 1.0E-7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 695
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLineEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->updateNewLinePointsListForCalibration(Ljava/util/List;)V

    .line 697
    const-string v0, "HwNormalizedSpline"

    const-string v1, "update PowerSavingBrighnessLinePointsList for calibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 701
    .local v1, "temp":Landroid/util/HwNormalizedSpline$Point;
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadXMLConfig_NewCalibrationPowerSavingPointsList x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_0

    .line 705
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->updateNewLinePointsListForCalibration(Ljava/util/List;)V

    .line 707
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 708
    const-string v0, "HwNormalizedSpline"

    const-string v1, "update mCameraBrighnessLinePointsList for calibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_1
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 712
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->updateNewLinePointsListForCalibration(Ljava/util/List;)V

    .line 713
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 714
    const-string v0, "HwNormalizedSpline"

    const-string v1, "update mGameModeBrightnessLinePointsList for calibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_2
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 717
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 718
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 719
    .restart local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadXMLConfig_GameModeBrightnessLinePointsList x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    .end local v1    # "temp":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_1

    .line 724
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private updateNewLinePointsListForCalibration(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;)V"
        }
    .end annotation

    .line 726
    .local p1, "LinePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 727
    .local v0, "mLinePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/4 v1, 0x0

    .line 728
    .local v1, "pointTemp":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 729
    .local v2, "listSize":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 730
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 731
    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    const/high16 v6, 0x437f0000    # 255.0f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 732
    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    iget v7, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v4, v7

    iput v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 733
    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 734
    iput v5, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 736
    :cond_0
    iget v4, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_1

    .line 737
    iput v6, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 729
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 741
    .end local v3    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public clearBrightnessOffset()V
    .locals 2

    .line 2087
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x33d6bf95    # 1.0E-7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2088
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    .line 2089
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 2090
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    .line 2091
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    .line 2092
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    .line 2093
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->saveOffsetParas()V

    .line 2094
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2095
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode clear tmp brighntess offset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :cond_0
    return-void
.end method

.method public clearGameOffsetDelta()V
    .locals 4

    .line 1590
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 1591
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1592
    const-string v0, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GameBrightMode updateLevelTmp clearGameOffsetDelta,mDeltaTmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mGameModeOffsetLux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :cond_0
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    .line 1596
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    .line 1597
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mGameModePosBrightness:F

    .line 1600
    :cond_1
    return-void
.end method

.method public getAmbientValueFromDB()F
    .locals 6

    .line 2558
    const/4 v0, 0x0

    .line 2559
    .local v0, "minSensorValidValue":I
    const v1, 0x9c40

    .line 2560
    .local v1, "maxSensorValidValue":I
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "spline_ambient_lux"

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 2561
    .local v2, "ambientValue":F
    float-to-int v3, v2

    if-ge v3, v0, :cond_0

    .line 2562
    const-string v3, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error inputValue<min,ambientValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    int-to-float v2, v0

    .line 2565
    :cond_0
    float-to-int v3, v2

    if-le v3, v1, :cond_1

    .line 2566
    const-string v3, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error inputValue>max,ambientValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    int-to-float v2, v1

    .line 2569
    :cond_1
    return v2
.end method

.method public getBrightnessListFromDB(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "brightnessCurveTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;"
        }
    .end annotation

    .line 1834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1835
    .local v0, "brightnessList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mManager:Lcom/huawei/displayengine/DisplayEngineManager;

    if-eqz v1, :cond_2

    .line 1836
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mManager:Lcom/huawei/displayengine/DisplayEngineManager;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/huawei/displayengine/DisplayEngineManager;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    .line 1837
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz v1, :cond_1

    .line 1838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1839
    .local v2, "text":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1840
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1841
    .local v4, "data":Landroid/os/Bundle;
    const-string v5, "AmbientLight"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    .line 1842
    .local v5, "al":F
    const-string v6, "BackLight"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    .line 1843
    .local v6, "bl":F
    new-instance v7, Landroid/util/HwNormalizedSpline$Point;

    invoke-direct {v7, v5, v6}, Landroid/util/HwNormalizedSpline$Point;-><init>(FF)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1839
    .end local v4    # "data":Landroid/os/Bundle;
    .end local v5    # "al":F
    .end local v6    # "bl":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1845
    .end local v2    # "text":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 1846
    :cond_1
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NewCurveMode brightnessList curve=null,tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;
    .locals 2

    .line 2277
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mCameraModeEnable:Z

    if-eqz v0, :cond_0

    .line 2278
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->CameraMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2280
    :cond_0
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mReadingModeEnable:Z

    if-eqz v0, :cond_1

    .line 2281
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->ReadingMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2283
    :cond_1
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeEnable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessEnable:Z

    if-eqz v0, :cond_2

    .line 2284
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->GameMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2286
    :cond_2
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    if-eqz v0, :cond_3

    .line 2287
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->NewCurveMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2289
    :cond_3
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingModeEnable:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLineEnable:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mAmLux:F

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingAmluxThreshold:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 2290
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->PowerSavingMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2292
    :cond_4
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    invoke-virtual {v0}, Lhuawei/android/utils/HwEyeProtectionSpline;->isEyeProtectionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSplineEnable:Z

    if-eqz v0, :cond_5

    .line 2293
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->EyeProtectionMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2295
    :cond_5
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mCalibrtionModeBeforeEnable:Z

    if-eqz v0, :cond_6

    .line 2296
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->CalibrtionMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2298
    :cond_6
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptEnable:Z

    if-eqz v0, :cond_7

    .line 2299
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->DarkAdaptMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2301
    :cond_7
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountEnable:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    if-eqz v0, :cond_8

    .line 2302
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->OminLevelMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2304
    :cond_8
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDayModeEnable:Z

    if-eqz v0, :cond_9

    .line 2305
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->DayMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0

    .line 2307
    :cond_9
    sget-object v0, Landroid/util/HwNormalizedSpline$BrightnessModeState;->DefaultMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    return-object v0
.end method

.method public getCalibrationTestEable()Z
    .locals 9

    .line 2575
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_calibration_test"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2576
    .local v0, "calibrtionTest":I
    if-nez v0, :cond_0

    .line 2577
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mCalibrtionModeBeforeEnable:Z

    .line 2578
    return v3

    .line 2581
    :cond_0
    const v1, 0xffff

    and-int v2, v0, v1

    .line 2582
    .local v2, "calibrtionTestLow":I
    shr-int/lit8 v4, v0, 0x10

    and-int/2addr v1, v4

    .line 2583
    .local v1, "calibrtionTestHigh":I
    if-eq v2, v1, :cond_1

    .line 2584
    const-string v4, "HwNormalizedSpline"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error db, clear DB,,calibrtionTestLow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",calibrtionTestHigh="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "spline_calibration_test"

    iget v6, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2586
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mCalibrtionModeBeforeEnable:Z

    .line 2587
    return v3

    .line 2590
    :cond_1
    shr-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    and-int/2addr v4, v5

    .line 2591
    .local v4, "calibrtionModeBeforeEnableInt":I
    and-int/lit8 v6, v2, 0x1

    .line 2592
    .local v6, "calibrationTestEnableInt":I
    if-ne v4, v5, :cond_2

    .line 2593
    iput-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mCalibrtionModeBeforeEnable:Z

    goto :goto_0

    .line 2595
    :cond_2
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mCalibrtionModeBeforeEnable:Z

    .line 2597
    :goto_0
    if-ne v6, v5, :cond_3

    .line 2598
    const/4 v3, 0x1

    .local v3, "calibrationTestEable":Z
    goto :goto_1

    .line 2600
    .end local v3    # "calibrationTestEable":Z
    :cond_3
    nop

    .line 2602
    .restart local v3    # "calibrationTestEable":Z
    :goto_1
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mCalibrtionTest:I

    if-eq v0, v5, :cond_4

    .line 2603
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mCalibrtionTest:I

    .line 2604
    sget-boolean v5, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 2605
    const-string v5, "HwNormalizedSpline"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCalibrtionTest="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroid/util/HwNormalizedSpline;->mCalibrtionTest:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",calibrationTestEnableInt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",calibrtionModeBeforeEnableInt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    .end local v1    # "calibrtionTestHigh":I
    .end local v2    # "calibrtionTestLow":I
    .end local v4    # "calibrtionModeBeforeEnableInt":I
    .end local v6    # "calibrationTestEnableInt":I
    :cond_4
    return v3
.end method

.method public getCurrentAmbientLuxForBrightness()F
    .locals 1

    .line 2641
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mAmLux:F

    return v0
.end method

.method public getCurrentAmbientLuxForOffset()F
    .locals 1

    .line 2645
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    return v0
.end method

.method public getCurrentDefaultBrightnessNoOffset()F
    .locals 1

    .line 2638
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    return v0
.end method

.method public getCurrentDefaultNewCurveLine()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 2232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2233
    .local v0, "brightnessList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/PointF;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mLuxPonits:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2235
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    if-eqz v2, :cond_0

    .line 2236
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    iget-object v3, p0, Landroid/util/HwNormalizedSpline;->mLuxPonits:[F

    aget v3, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    .local v2, "brightness":F
    goto :goto_1

    .line 2238
    .end local v2    # "brightness":F
    :cond_0
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    iget-object v3, p0, Landroid/util/HwNormalizedSpline;->mLuxPonits:[F

    aget v3, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    .line 2240
    .restart local v2    # "brightness":F
    :goto_1
    iget-object v3, p0, Landroid/util/HwNormalizedSpline;->mLuxPonits:[F

    aget v3, v3, v1

    .line 2241
    .local v3, "alLux":F
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2233
    .end local v2    # "brightness":F
    .end local v3    # "alLux":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2243
    .end local v1    # "i":I
    :cond_1
    const-string v1, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewCurveMode getCurrentDefaultNewCurveLine,mDayModeAlgoEnable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    return-object v0
.end method

.method public getDefaultBrightness(F)F
    .locals 1
    .param p1, "lux"    # F

    .line 2254
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v0

    .line 2255
    .local v0, "brightness":F
    return v0
.end method

.method public getDefaultBrightnessLevelNew(Ljava/util/List;F)F
    .locals 10
    .param p2, "lux"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/HwNormalizedSpline$Point;",
            ">;F)F"
        }
    .end annotation

    .line 2441
    .local p1, "linePointsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    move-object v0, p1

    .line 2442
    .local v0, "linePointsListIn":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    const/4 v1, 0x0

    .line 2443
    .local v1, "count":I
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightness:F

    .line 2444
    .local v2, "brightnessLevel":F
    const/4 v3, 0x0

    .line 2445
    .local v3, "temp1":Landroid/util/HwNormalizedSpline$Point;
    const/4 v4, 0x0

    .line 2446
    .local v4, "temp2":Landroid/util/HwNormalizedSpline$Point;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2447
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/HwNormalizedSpline$Point;

    .line 2448
    .local v6, "temp":Landroid/util/HwNormalizedSpline$Point;
    if-nez v1, :cond_0

    .line 2449
    move-object v3, v6

    .line 2451
    :cond_0
    iget v7, v6, Landroid/util/HwNormalizedSpline$Point;->x:F

    cmpg-float v7, p2, v7

    if-gez v7, :cond_2

    .line 2452
    move-object v4, v6

    .line 2453
    iget v7, v4, Landroid/util/HwNormalizedSpline$Point;->x:F

    iget v8, v3, Landroid/util/HwNormalizedSpline$Point;->x:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 2454
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightness:F

    .line 2455
    sget-boolean v7, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 2456
    const-string v7, "HwNormalizedSpline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DefaultBrighness_temp1.x <= temp2.x,x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", y = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2459
    :cond_1
    iget v7, v4, Landroid/util/HwNormalizedSpline$Point;->y:F

    iget v8, v3, Landroid/util/HwNormalizedSpline$Point;->y:F

    sub-float/2addr v7, v8

    iget v8, v4, Landroid/util/HwNormalizedSpline$Point;->x:F

    iget v9, v3, Landroid/util/HwNormalizedSpline$Point;->x:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iget v8, v3, Landroid/util/HwNormalizedSpline$Point;->x:F

    sub-float v8, p2, v8

    mul-float/2addr v7, v8

    iget v8, v3, Landroid/util/HwNormalizedSpline$Point;->y:F

    add-float v2, v7, v8

    .line 2461
    goto :goto_1

    .line 2463
    :cond_2
    move-object v3, v6

    .line 2464
    iget v2, v3, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 2466
    add-int/lit8 v1, v1, 0x1

    .line 2467
    .end local v6    # "temp":Landroid/util/HwNormalizedSpline$Point;
    goto :goto_0

    .line 2468
    .end local v5    # "iter":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return v2
.end method

.method public getGameModeAmbientLuxForOffset()F
    .locals 1

    .line 2649
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    return v0
.end method

.method public getInterpolatedValue(FF)F
    .locals 7
    .param p1, "PositionBrightness"    # F
    .param p2, "lux"    # F

    .line 2314
    move v0, p1

    .line 2318
    .local v0, "PosBrightness":F
    const/4 v1, 0x0

    .line 2319
    .local v1, "inDarkAdaptMode":Z
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessEnable:Z

    if-eqz v2, :cond_4

    .line 2320
    invoke-direct {p0, p2}, Landroid/util/HwNormalizedSpline;->getCurrentBrightness(F)F

    move-result v2

    .line 2321
    .local v2, "defaultBrightness":F
    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    float-to-int v3, v3

    float-to-int v4, v2

    if-eq v3, v4, :cond_0

    .line 2322
    sget-boolean v3, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2323
    const-string v3, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BrightenssCurve mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",lux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",defaultBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mAmLuxOffset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mPis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mGameModeOffsetLux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mVehicleEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",OffsetNeedClear="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mErrorCorrectionOffsetNeedClear:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_0
    iget-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mDayModeEnable:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v3

    sget-object v4, Landroid/util/HwNormalizedSpline$BrightnessModeState;->NewCurveMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    if-ne v3, v4, :cond_3

    .line 2332
    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2333
    .local v3, "oldBrightness":F
    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    :goto_0
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2334
    sget-boolean v4, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 2335
    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    .line 2336
    const-string v4, "HwNormalizedSpline"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInterpolatedValue DayMode: defaultBrightness ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mDayModeMinimumBrightness ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    .end local v3    # "oldBrightness":F
    :cond_2
    goto :goto_1

    .line 2340
    :cond_3
    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2342
    .end local v2    # "defaultBrightness":F
    :goto_1
    goto/16 :goto_3

    :cond_4
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mReadingModeEnable:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingModeEnable:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLineEnable:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mAmLux:F

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingAmluxThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 2343
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2344
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerSavingMode defualtbrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",mCalibrationRatio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2345
    :cond_5
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mCameraModeEnable:Z

    if-eqz v2, :cond_6

    .line 2346
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mCameraBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2347
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraMode defualtbrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2348
    :cond_6
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mReadingModeEnable:Z

    if-eqz v2, :cond_7

    .line 2349
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mReadingBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2350
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadingMode defaultbrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2351
    :cond_7
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeEnable:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessEnable:Z

    if-eqz v2, :cond_8

    .line 2352
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2353
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GameBrightMode defaultbrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2355
    :cond_8
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    invoke-virtual {v2}, Lhuawei/android/utils/HwEyeProtectionSpline;->isEyeProtectionMode()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSplineEnable:Z

    if-eqz v2, :cond_9

    .line 2357
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    invoke-virtual {v2, p2}, Lhuawei/android/utils/HwEyeProtectionSpline;->getEyeProtectionBrightnessLevel(F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2358
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEyeProtectionBrightnessLevel lux ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mDefaultBrightnessFromLux ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2361
    :cond_9
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mCalibrtionModeBeforeEnable:Z

    if-eqz v2, :cond_a

    .line 2362
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsListCaliBefore:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    goto/16 :goto_2

    .line 2363
    :cond_a
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptEnable:Z

    if-eqz v2, :cond_b

    .line 2364
    const/4 v1, 0x1

    .line 2365
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->updateDarkAdaptState()V

    .line 2366
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getCurrentDarkAdaptLine()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    goto/16 :goto_2

    .line 2368
    :cond_b
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountEnable:Z

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    if-eqz v2, :cond_e

    .line 2369
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mDayModeEnable:Z

    if-nez v2, :cond_d

    :cond_c
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelDayModeEnable:Z

    if-nez v2, :cond_d

    .line 2370
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2371
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOminLevelMode:night getBrightnessLevel lux ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",mDefaultBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",mOCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2373
    :cond_d
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2374
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOminLevelMode:Day getBrightnessLevel lux ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",mDefaultBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",mOCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2376
    :cond_e
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mDayModeEnable:Z

    if-eqz v2, :cond_f

    .line 2377
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2378
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DayMode:getBrightnessLevel lux ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mDefaultBrightnessFromLux ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2380
    :cond_f
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v2, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2383
    :goto_2
    sget-boolean v2, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    invoke-virtual {v2}, Lhuawei/android/utils/HwEyeProtectionSpline;->isEyeProtectionMode()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSplineEnable:Z

    if-nez v2, :cond_10

    .line 2384
    const-string v2, "HwNormalizedSpline"

    const-string v3, "getEyeProtectionBrightnessLevel"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_10
    :goto_3
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mIsReboot:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 2391
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    .line 2392
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 2393
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    .line 2394
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mIsReboot:Z

    .line 2395
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    .line 2397
    :cond_11
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_12

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_12

    .line 2398
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    .line 2399
    const/4 v0, 0x0

    .line 2400
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 2401
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    .line 2402
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    .line 2403
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 2404
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    .line 2405
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->saveOffsetParas()V

    .line 2406
    sget-boolean v2, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v2, :cond_12

    .line 2407
    const-string v2, "HwNormalizedSpline"

    const-string v5, "error state for default state"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_12
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2411
    .local v2, "offsetBrightness":F
    iget-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mGameModeEnable:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessEnable:Z

    if-eqz v5, :cond_13

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_15

    :cond_13
    iget-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessEnable:Z

    if-nez v5, :cond_14

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_15

    :cond_14
    iget-boolean v4, p0, Landroid/util/HwNormalizedSpline;->mCoverModeNoOffsetEnable:Z

    if-eqz v4, :cond_16

    .line 2412
    :cond_15
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    .line 2413
    iget-boolean v4, p0, Landroid/util/HwNormalizedSpline;->mCoverModeNoOffsetEnable:Z

    if-eqz v4, :cond_19

    .line 2414
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mCoverModeNoOffsetEnable:Z

    .line 2415
    sget-boolean v3, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v3, :cond_19

    .line 2416
    const-string v3, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set mCoverModeNoOffsetEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mCoverModeNoOffsetEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2419
    :cond_16
    iget-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeEnable:Z

    if-eqz v3, :cond_17

    iget-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessEnable:Z

    if-eqz v3, :cond_17

    .line 2420
    iget v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeStartLuxDefaultBrightness:F

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mGameModePosBrightness:F

    iget v6, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/util/HwNormalizedSpline;->getOffsetBrightnessLevel_withDelta(FFFF)F

    move-result v2

    goto :goto_4

    .line 2421
    :cond_17
    if-eqz v1, :cond_18

    .line 2422
    invoke-direct {p0, v0, p2}, Landroid/util/HwNormalizedSpline;->getDarkAdaptOffset(FF)F

    move-result v2

    goto :goto_4

    .line 2424
    :cond_18
    iget v3, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {p0, v3, v4, v0}, Landroid/util/HwNormalizedSpline;->getOffsetBrightnessLevel_new(FFF)F

    move-result v2

    .line 2427
    :cond_19
    :goto_4
    sget-boolean v3, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v3, :cond_1a

    float-to-int v3, v2

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    float-to-int v4, v4

    if-eq v3, v4, :cond_1a

    .line 2428
    const-string v3, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offsetBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mOffsetBrightness_last"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",lux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mPosBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mIsUserChange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",mDelta="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mDefaultBrightnessFromLux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mStartLuxDefaultBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "mLastLuxDefaultBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    :cond_1a
    sget-boolean v3, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v3, :cond_1b

    iget-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessEnable:Z

    if-eqz v3, :cond_1b

    float-to-int v3, v2

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    float-to-int v4, v4

    if-eq v3, v4, :cond_1b

    .line 2433
    const-string v3, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameBrightMode mGameModeStartLuxDefaultBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mGameModeStartLuxDefaultBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",offsetBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mDeltaTmp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mGameModePosBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mGameModePosBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mGameModeOffsetLux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :cond_1b
    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    iput v3, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    .line 2436
    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    .line 2437
    return v2
.end method

.method public getNewCurrentBrightness(F)F
    .locals 3
    .param p1, "lux"    # F

    .line 2268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2269
    .local v0, "brightnessList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v1

    sget-object v2, Landroid/util/HwNormalizedSpline$BrightnessModeState;->NewCurveMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    if-ne v1, v2, :cond_0

    .line 2270
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getCurrentNewCureLine()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2272
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    .line 2274
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    return v1
.end method

.method public getNewCurveEable()Z
    .locals 1

    .line 2067
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    return v0
.end method

.method public getNewCurveEableTmp()Z
    .locals 1

    .line 2063
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNewDefaultBrightness(F)F
    .locals 3
    .param p1, "lux"    # F

    .line 2258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2259
    .local v0, "brightnessList":Ljava/util/List;, "Ljava/util/List<Landroid/util/HwNormalizedSpline$Point;>;"
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v1

    sget-object v2, Landroid/util/HwNormalizedSpline$BrightnessModeState;->NewCurveMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    if-ne v1, v2, :cond_0

    .line 2260
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    goto :goto_0

    .line 2262
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    .line 2264
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    return v1
.end method

.method getOffsetBrightnessLevel_new(FFF)F
    .locals 1
    .param p1, "brightnessStartOrig"    # F
    .param p2, "brightnessEndOrig"    # F
    .param p3, "brightnessStartNew"    # F

    .line 2472
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/util/HwNormalizedSpline;->getOffsetBrightnessLevel_withDelta(FFFF)F

    move-result v0

    .line 2473
    .local v0, "offesetBrightness":F
    return v0
.end method

.method getOffsetBrightnessLevel_withDelta(FFFF)F
    .locals 21
    .param p1, "brightnessStartOrig"    # F
    .param p2, "brightnessEndOrig"    # F
    .param p3, "brightnessStartNew"    # F
    .param p4, "delta"    # F

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 2477
    const/4 v0, 0x0

    .line 2478
    .local v0, "brighten":Z
    iget-boolean v1, v6, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    if-eqz v1, :cond_0

    .line 2479
    const/4 v1, 0x0

    iput-boolean v1, v6, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    .line 2481
    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    .line 2482
    .local v10, "ratio":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2483
    .local v1, "ratio2":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2484
    .local v2, "diff":F
    const v11, 0x33d6bf95    # 1.0E-7f

    .line 2485
    .local v11, "smallValue":F
    move/from16 v12, p4

    .line 2486
    .local v12, "mDeltaStart":F
    cmpg-float v3, v7, v8

    const/high16 v13, 0x437f0000    # 255.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    if-gez v3, :cond_4

    .line 2487
    const/16 v16, 0x1

    .line 2488
    .end local v0    # "brighten":Z
    .local v16, "brighten":Z
    cmpl-float v0, v12, v15

    if-lez v0, :cond_3

    .line 2489
    sub-float v0, v7, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 2490
    .end local v2    # "diff":F
    .local v17, "diff":F
    add-float v0, v12, v11

    div-float v0, v17, v0

    .line 2491
    .end local v1    # "ratio2":F
    .local v0, "ratio2":F
    neg-float v1, v12

    mul-float/2addr v1, v0

    sub-float v2, v13, v7

    add-float/2addr v2, v11

    div-float/2addr v1, v2

    add-float/2addr v1, v14

    .line 2492
    .end local v0    # "ratio2":F
    .restart local v1    # "ratio2":F
    iget v0, v6, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrig:F

    float-to-int v0, v0

    float-to-int v2, v8

    if-eq v0, v2, :cond_1

    .line 2493
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2494
    const-string v0, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orig_ratio2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mOffsetBrightenAlphaRight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaRight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_1
    iget v0, v6, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaRight:F

    sub-float v0, v14, v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v0, v2

    iget v2, v6, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaRight:F

    mul-float v3, v12, v1

    add-float/2addr v3, v8

    mul-float/2addr v2, v3

    add-float v18, v0, v2

    .line 2499
    .local v18, "offsetBrightnessTmp":F
    sub-float v0, v18, v8

    add-float v2, v12, v11

    div-float v19, v0, v2

    .line 2500
    .end local v1    # "ratio2":F
    .local v19, "ratio2":F
    move-object v0, v6

    move/from16 v1, v19

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/util/HwNormalizedSpline;->getBrightenOffsetBrightenRaio(FFFFF)F

    move-result v0

    .line 2502
    .end local v19    # "ratio2":F
    .restart local v0    # "ratio2":F
    cmpg-float v1, v0, v15

    if-gez v1, :cond_2

    .line 2503
    const/4 v0, 0x0

    .line 2507
    .end local v0    # "ratio2":F
    .end local v17    # "diff":F
    .end local v18    # "offsetBrightnessTmp":F
    .restart local v1    # "ratio2":F
    .restart local v2    # "diff":F
    :cond_2
    move v1, v0

    move/from16 v2, v17

    :cond_3
    cmpg-float v0, v12, v15

    if-gez v0, :cond_5

    .line 2508
    sub-float v0, v7, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 2509
    sub-float v0, v12, v11

    div-float v0, v2, v0

    .line 2510
    .end local v10    # "ratio":F
    .local v0, "ratio":F
    neg-float v3, v12

    mul-float/2addr v3, v0

    sub-float v4, v13, v7

    add-float/2addr v4, v11

    div-float/2addr v3, v4

    add-float/2addr v3, v14

    .line 2511
    .end local v0    # "ratio":F
    .local v3, "ratio":F
    invoke-direct {v6, v3, v7, v8, v9}, Landroid/util/HwNormalizedSpline;->getDarkenOffsetBrightenRatio(FFFF)F

    move-result v10

    .line 2513
    .end local v3    # "ratio":F
    .restart local v10    # "ratio":F
    cmpg-float v0, v10, v15

    if-gez v0, :cond_5

    .line 2514
    const/4 v10, 0x0

    goto :goto_0

    .line 2518
    .end local v16    # "brighten":Z
    .local v0, "brighten":Z
    :cond_4
    move/from16 v16, v0

    .end local v0    # "brighten":Z
    .restart local v16    # "brighten":Z
    :cond_5
    :goto_0
    cmpl-float v0, v7, v8

    const/high16 v3, 0x40800000    # 4.0f

    if-lez v0, :cond_8

    .line 2519
    cmpg-float v0, v12, v15

    if-gez v0, :cond_7

    .line 2520
    sub-float v0, v7, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2521
    .end local v2    # "diff":F
    .local v0, "diff":F
    sub-float v2, v12, v11

    div-float v1, v0, v2

    .line 2522
    mul-float v2, v12, v1

    sub-float v4, v3, v7

    sub-float/2addr v4, v11

    div-float/2addr v2, v4

    add-float/2addr v2, v14

    .line 2523
    .end local v1    # "ratio2":F
    .local v2, "ratio2":F
    iget v1, v6, Landroid/util/HwNormalizedSpline;->mOffsetDarkenAlphaLeft:F

    sub-float v1, v14, v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v1, v4

    iget v4, v6, Landroid/util/HwNormalizedSpline;->mOffsetDarkenAlphaLeft:F

    mul-float v5, v12, v2

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 2524
    .local v1, "offsetBrightnessTmp":F
    sub-float v4, v1, v8

    sub-float v5, v12, v11

    div-float/2addr v4, v5

    .line 2525
    .end local v2    # "ratio2":F
    .local v4, "ratio2":F
    cmpg-float v2, v4, v15

    if-gez v2, :cond_6

    .line 2526
    const/4 v1, 0x0

    .line 2529
    .end local v4    # "ratio2":F
    .local v1, "ratio2":F
    move v2, v0

    goto :goto_1

    .end local v1    # "ratio2":F
    .restart local v4    # "ratio2":F
    :cond_6
    move v2, v0

    move v1, v4

    .end local v0    # "diff":F
    .end local v4    # "ratio2":F
    .restart local v1    # "ratio2":F
    .local v2, "diff":F
    :cond_7
    :goto_1
    cmpl-float v0, v12, v15

    if-lez v0, :cond_8

    .line 2530
    add-float v0, v7, v11

    div-float v0, v8, v0

    float-to-double v4, v0

    iget v0, v6, Landroid/util/HwNormalizedSpline;->mOffsetBrightenRatioLeft:F

    float-to-double v13, v0

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 2531
    .local v0, "ratioTmp":F
    iget v4, v6, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaLeft:F

    mul-float/2addr v4, v8

    add-float v5, v7, v11

    div-float/2addr v4, v5

    iget v5, v6, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaLeft:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v13, v5

    mul-float/2addr v14, v0

    add-float/2addr v4, v14

    .line 2532
    .end local v10    # "ratio":F
    .local v4, "ratio":F
    invoke-direct {v6, v4, v7, v8, v9}, Landroid/util/HwNormalizedSpline;->getBrightenOffsetDarkenRatio(FFFF)F

    move-result v10

    .line 2534
    .end local v4    # "ratio":F
    .restart local v10    # "ratio":F
    iget v4, v6, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrig:F

    float-to-int v4, v4

    float-to-int v5, v8

    if-eq v4, v5, :cond_8

    .line 2535
    sget-boolean v4, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 2536
    const-string v4, "HwNormalizedSpline"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ratio="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ",ratioTmp="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ",mOffsetBrightenAlphaLeft="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v6, Landroid/util/HwNormalizedSpline;->mOffsetBrightenAlphaLeft:F

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    .end local v0    # "ratioTmp":F
    :cond_8
    mul-float v0, v12, v1

    mul-float/2addr v0, v10

    iput v0, v6, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    .line 2544
    iget v0, v6, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrig:F

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_9

    .line 2545
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 2546
    const-string v0, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeltaNew="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mDeltaStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",ratio2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",ratio="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :cond_9
    iput v8, v6, Landroid/util/HwNormalizedSpline;->mLastBrightnessEndOrig:F

    .line 2551
    iget v0, v6, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    add-float/2addr v0, v8

    .line 2552
    .local v0, "brightnessAndDelta":F
    cmpl-float v4, v0, v3

    if-lez v4, :cond_a

    move v3, v0

    nop

    :cond_a
    move v13, v3

    .line 2553
    .local v13, "offsetBrightnessTemp":F
    const/high16 v3, 0x437f0000    # 255.0f

    cmpg-float v4, v13, v3

    if-gez v4, :cond_b

    move v3, v13

    nop

    .line 2554
    .local v3, "offsetBrightness":F
    :cond_b
    return v3
.end method

.method public getPersonalizedAlgoParam()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2001
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mManager:Lcom/huawei/displayengine/DisplayEngineManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2002
    return-object v1

    .line 2004
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mManager:Lcom/huawei/displayengine/DisplayEngineManager;

    const-string v2, "AlgorithmESCW"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/huawei/displayengine/DisplayEngineManager;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 2005
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2008
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2009
    .local v1, "algoParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 2010
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "ESCW"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2011
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 2012
    :cond_2
    return-object v1

    .line 2006
    .end local v1    # "algoParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_3
    :goto_1
    return-object v1
.end method

.method public getPersonalizedBrightnessCurveEnable()Z
    .locals 2

    .line 2248
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2249
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 2251
    :cond_1
    return v1
.end method

.method public getPersonalizedDefaultCurve()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 1987
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefaultTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1988
    const/4 v0, 0x0

    return-object v0

    .line 1990
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1991
    .local v0, "curveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefaultTmp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/HwNormalizedSpline$Point;

    .line 1992
    .local v2, "point":Landroid/util/HwNormalizedSpline$Point;
    iget v3, v2, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1994
    .local v3, "bright":I
    const/16 v4, 0x7fff

    if-ge v3, v4, :cond_1

    move v4, v3

    nop

    :cond_1
    int-to-short v4, v4

    .line 1995
    .local v4, "level":S
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1996
    .end local v2    # "point":Landroid/util/HwNormalizedSpline$Point;
    .end local v3    # "bright":I
    .end local v4    # "level":S
    goto :goto_0

    .line 1997
    :cond_2
    return-object v0
.end method

.method public getPowerSavingBrighnessLineEnable()Z
    .locals 1

    .line 2310
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLineEnable:Z

    return v0
.end method

.method public getPowerSavingModeBrightnessChangeEnable(FZ)Z
    .locals 6
    .param p1, "lux"    # F
    .param p2, "usePowerSavingModeCurveEnable"    # Z

    .line 1754
    const/4 v0, 0x0

    .line 1755
    .local v0, "powerSavingModeBrightnessChangeEnable":Z
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLineEnable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingAmluxThreshold:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mUsePowerSavingModeCurveEnable:Z

    if-eq v1, p2, :cond_0

    .line 1756
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    .line 1757
    .local v1, "mPowerSavingDefaultBrightnessFromLux":F
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v2, p1}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v2

    .line 1758
    .local v2, "mDefaultBrightnessFromLux":F
    float-to-int v3, v1

    float-to-int v4, v2

    if-eq v3, v4, :cond_0

    .line 1759
    const/4 v0, 0x1

    .line 1760
    sget-boolean v3, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1761
    const-string v3, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PowerSavingMode lux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",usePgEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",pgBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",mDefaultBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    .end local v1    # "mPowerSavingDefaultBrightnessFromLux":F
    .end local v2    # "mDefaultBrightnessFromLux":F
    :cond_0
    iput-boolean p2, p0, Landroid/util/HwNormalizedSpline;->mUsePowerSavingModeCurveEnable:Z

    .line 1767
    return v0
.end method

.method public getVehicleModeBrightnessEnable()Z
    .locals 1

    .line 2044
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    return v0
.end method

.method public getVehicleModeQuitForPowerOnEnable()Z
    .locals 1

    .line 2040
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeQuitForPowerOnEnable:Z

    return v0
.end method

.method public initBrightenOffsetLux(ZFFF)V
    .locals 3
    .param p1, "brightnessOffsetLuxModeEnable"    # Z
    .param p2, "brightenOffsetLuxTh1"    # F
    .param p3, "brightenOffsetLuxTh2"    # F
    .param p4, "brightenOffsetLuxTh3"    # F

    .line 2866
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetLuxModeEnable:Z

    .line 2867
    iput p2, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh1:F

    .line 2868
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh2:F

    .line 2869
    iput p4, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetLuxTh3:F

    .line 2870
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2871
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBrightnessOffsetPara,OffsetLuxModeEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_0
    return-void
.end method

.method public initBrightenOffsetNoValidBrightenLux(FFFF)V
    .locals 0
    .param p1, "brightenOffsetNoValidBrightenLuxTh1"    # F
    .param p2, "brightenOffsetNoValidBrightenLuxTh2"    # F
    .param p3, "brightenOffsetNoValidBrightenLuxTh3"    # F
    .param p4, "brightenOffsetNoValidBrightenLuxTh4"    # F

    .line 2889
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh1:F

    .line 2890
    iput p2, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh2:F

    .line 2891
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh3:F

    .line 2892
    iput p4, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidBrightenLuxTh4:F

    .line 2893
    return-void
.end method

.method public initBrightenOffsetNoValidDarkenLux(ZFFFF)V
    .locals 0
    .param p1, "brightenOffsetEffectMinLuxEnable"    # Z
    .param p2, "brightenOffsetNoValidDarkenLuxTh1"    # F
    .param p3, "brightenOffsetNoValidDarkenLuxTh2"    # F
    .param p4, "brightenOffsetNoValidDarkenLuxTh3"    # F
    .param p5, "brightenOffsetNoValidDarkenLuxTh4"    # F

    .line 2879
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetEffectMinLuxEnable:Z

    .line 2880
    iput p2, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh1:F

    .line 2881
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh2:F

    .line 2882
    iput p4, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh3:F

    .line 2883
    iput p5, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidDarkenLuxTh4:F

    .line 2884
    return-void
.end method

.method public initBrightnessOffsetTmpValidPara(ZFF)V
    .locals 3
    .param p1, "brightnessOffsetTmpValidEnable"    # Z
    .param p2, "brightenOffsetNoValidSavedLuxTh1"    # F
    .param p3, "brightenOffsetNoValidSavedLuxTh2"    # F

    .line 2914
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetTmpValidEnable:Z

    .line 2915
    iput p2, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidSavedLuxTh1:F

    .line 2916
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mBrightenOffsetNoValidSavedLuxTh2:F

    .line 2917
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2918
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBrightnessOffsetPara,OffsetTmpValidEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetTmpValidEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :cond_0
    return-void
.end method

.method public initDarkenOffsetLux(FFF)V
    .locals 0
    .param p1, "darkenOffsetLuxTh1"    # F
    .param p2, "darkenOffsetLuxTh2"    # F
    .param p3, "darkenOffsetLuxTh3"    # F

    .line 2897
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetLuxTh1:F

    .line 2898
    iput p2, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetLuxTh2:F

    .line 2899
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetLuxTh3:F

    .line 2900
    return-void
.end method

.method public initDarkenOffsetNoValidBrightenLux(FFFF)V
    .locals 0
    .param p1, "darkenOffsetNoValidBrightenLuxTh1"    # F
    .param p2, "darkenOffsetNoValidBrightenLuxTh2"    # F
    .param p3, "darkenOffsetNoValidBrightenLuxTh3"    # F
    .param p4, "darkenOffsetNoValidBrightenLuxTh4"    # F

    .line 2905
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh1:F

    .line 2906
    iput p2, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh2:F

    .line 2907
    iput p3, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh3:F

    .line 2908
    iput p4, p0, Landroid/util/HwNormalizedSpline;->mDarkenOffsetNoValidBrightenLuxTh4:F

    .line 2909
    return-void
.end method

.method public interpolate(F)F
    .locals 3
    .param p1, "x"    # F

    .line 1459
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mAmLux:F

    .line 1460
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1461
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsReboot:Z

    goto :goto_0

    .line 1463
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsReboot:Z

    .line 1465
    :goto_0
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->HWDEBUG:Z

    if-eqz v0, :cond_1

    .line 1466
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interpolate:mPosBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mIsReboot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mIsReboot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsUserChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_1
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {p0, v0, p1}, Landroid/util/HwNormalizedSpline;->getInterpolatedValue(FF)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 1469
    .local v0, "value_interp":F
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->saveOffsetParas()V

    .line 1470
    return v0
.end method

.method public isDeltaValid()Z
    .locals 2

    .line 2857
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsReset:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadOffsetParas()V
    .locals 6

    .line 1367
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "hw_screen_auto_brightness_adj"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightnessSaved:F

    .line 1368
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightnessSaved:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    .line 1369
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_delta"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaSaved:F

    .line 1370
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaSaved:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    .line 1371
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_is_user_change"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mIsUserChangeSaved:Z

    .line 1372
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsUserChangeSaved:Z

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    .line 1373
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_offset_brightness_last"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_lastSaved:F

    .line 1374
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_lastSaved:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    .line 1375
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_last_lux_default_brightness"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightnessSaved:F

    .line 1376
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightnessSaved:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    .line 1377
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_start_lux_default_brightness"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightnessSaved:F

    .line 1378
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightnessSaved:F

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 1379
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 1380
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_ambient_lux_offset"

    const/high16 v2, -0x40800000    # -1.0f

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    .line 1381
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    if-eqz v0, :cond_1

    .line 1382
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_ominlevel_count"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSaved:I

    .line 1383
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSaved:I

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 1384
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "spline_ominlevel_time"

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-static {v0, v1, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTimeSaved:I

    .line 1385
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTimeSaved:I

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    .line 1386
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOminLevelMode read mOminLevelCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mOminLevelCountResetLongSetTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_1
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mManualMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mManualBrightnessMaxLimit:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mManualBrightnessMaxLimit:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 1389
    iput v3, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 1390
    iput v3, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    .line 1391
    const-string v0, "HwNormalizedSpline"

    const-string v1, "updateLevel outdoor no offset set mDelta=0"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_2
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 1394
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read:userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mPosBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mOffsetBrightness_last="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mIsUserChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mDeltaNew="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mStartLuxDefaultBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mLastLuxDefaultBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mAmLuxOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_3
    return-void
.end method

.method public reSetOffsetFromHumanFactor(ZII)V
    .locals 4
    .param p1, "offsetResetEnable"    # Z
    .param p2, "minOffsetBrightness"    # I
    .param p3, "maxOffsetBrightness"    # I

    .line 2657
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessOffsetTmpValidEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mErrorCorrectionOffsetNeedClear:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2658
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mErrorCorrectionOffsetNeedClear:Z

    .line 2659
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->clearBrightnessOffset()V

    .line 2660
    return-void

    .line 2662
    :cond_0
    if-eqz p1, :cond_4

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x33d6bf95    # 1.0E-7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 2663
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 2664
    int-to-float v0, p2

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    int-to-float v0, p2

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2665
    int-to-float v0, p2

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 2667
    :cond_1
    int-to-float v0, p3

    const/high16 v1, 0x437f0000    # 255.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    int-to-float v0, p3

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v0, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 2668
    int-to-float v0, p3

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v0, v1

    float-to-int p3, v0

    .line 2672
    :cond_2
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    int-to-float v1, p2

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_3

    .line 2673
    int-to-float v0, p2

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    .line 2674
    int-to-float v0, p2

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    .line 2675
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 2676
    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mIsReset:Z

    .line 2677
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2678
    const-string v0, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLevel:resetMin mPosBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mDelta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mAmLuxOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mCalibrationRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :cond_3
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    int-to-float v2, p3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 2683
    int-to-float v0, p3

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    .line 2684
    int-to-float v0, p3

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    .line 2685
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 2686
    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mIsReset:Z

    .line 2687
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2688
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLevel:resetMax mPosBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mAmLuxOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mCalibrationRatio="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    :cond_4
    return-void
.end method

.method public resetGameBrightnessLimitation()V
    .locals 2

    .line 2726
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mLastGameModeBrightness:F

    .line 2727
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2728
    const-string v0, "HwNormalizedSpline"

    const-string v1, "resetGameBrightnessLimitation, mLastGameModeBrightness set to -1!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_0
    return-void
.end method

.method public resetGameModeOffsetFromHumanFactor(II)V
    .locals 4
    .param p1, "minOffsetBrightness"    # I
    .param p2, "maxOffsetBrightness"    # I

    .line 2696
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x33d6bf95    # 1.0E-7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 2697
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 2698
    int-to-float v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    int-to-float v0, p1

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2699
    int-to-float v0, p1

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v0, v1

    float-to-int p1, v0

    .line 2701
    :cond_0
    int-to-float v0, p2

    const/high16 v1, 0x437f0000    # 255.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    int-to-float v0, p2

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v0, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2702
    int-to-float v0, p2

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 2705
    :cond_1
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeStartLuxDefaultBrightness:F

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    add-float/2addr v0, v1

    .line 2706
    .local v0, "positionBrightness":F
    int-to-float v1, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 2707
    int-to-float v1, p1

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mGameModePosBrightness:F

    .line 2708
    int-to-float v1, p1

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeStartLuxDefaultBrightness:F

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    .line 2709
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2710
    const-string v1, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLevel GameMode:resetMin, min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mDeltaTmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mGameModeOffsetLux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mCalibrationRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_2
    int-to-float v1, p2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 2715
    int-to-float v1, p2

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mGameModePosBrightness:F

    .line 2716
    int-to-float v1, p2

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeStartLuxDefaultBrightness:F

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    .line 2717
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 2718
    const-string v1, "HwNormalizedSpline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLevel GameMode:resetMax, min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mDeltaTmp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mGameModeOffsetLux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mCalibrationRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mCalibrationRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    .end local v0    # "positionBrightness":F
    :cond_3
    return-void
.end method

.method public resetUserDragLimitFlag()V
    .locals 1

    .line 2861
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mIsReset:Z

    .line 2862
    return-void
.end method

.method public setCameraModeEnable(Z)V
    .locals 0
    .param p1, "cameraModeEnable"    # Z

    .line 2630
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mCameraModeEnable:Z

    .line 2631
    return-void
.end method

.method public setDarkAdaptState(Landroid/util/HwNormalizedSpline$DarkAdaptState;)V
    .locals 1
    .param p1, "state"    # Landroid/util/HwNormalizedSpline$DarkAdaptState;

    .line 2838
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptEnable:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2841
    :cond_0
    iput-object p1, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptStateDetected:Landroid/util/HwNormalizedSpline$DarkAdaptState;

    .line 2842
    return-void

    .line 2839
    :cond_1
    :goto_0
    return-void
.end method

.method public setDayModeEnable(Z)V
    .locals 0
    .param p1, "dayModeEnable"    # Z

    .line 2653
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mDayModeEnable:Z

    .line 2654
    return-void
.end method

.method public setEyeProtectionControlFlag(Z)V
    .locals 1
    .param p1, "inControlTime"    # Z

    .line 2614
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    if-eqz v0, :cond_0

    .line 2615
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mEyeProtectionSpline:Lhuawei/android/utils/HwEyeProtectionSpline;

    invoke-virtual {v0, p1}, Lhuawei/android/utils/HwEyeProtectionSpline;->setEyeProtectionControlFlag(Z)V

    .line 2617
    :cond_0
    return-void
.end method

.method public setGameCurveLevel(I)V
    .locals 1
    .param p1, "curveLevel"    # I

    .line 1578
    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    .line 1579
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/HwNormalizedSpline;->setGameModeEnable(Z)V

    goto :goto_0

    .line 1581
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/HwNormalizedSpline;->setGameModeEnable(Z)V

    .line 1583
    :goto_0
    return-void
.end method

.method public setGameModeEnable(Z)V
    .locals 0
    .param p1, "gameModeBrightnessEnable"    # Z

    .line 1586
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessEnable:Z

    .line 1587
    return-void
.end method

.method public setNewCurveEnable(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 2077
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    if-eqz v0, :cond_0

    .line 2078
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewCurveMode updateNewBrightnessCurveReal starting..,mNewCurveEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mNewCurveEnableTmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->updateNewBrightnessCurveFromTmp()V

    .line 2080
    const/4 v0, 0x1

    return v0

    .line 2082
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNoOffsetEnable(Z)V
    .locals 3
    .param p1, "noOffsetEnable"    # Z

    .line 2624
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mCoverModeNoOffsetEnable:Z

    .line 2625
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2626
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LabcCoverMode CoverModeNoOffsetEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mCoverModeNoOffsetEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    :cond_0
    return-void
.end method

.method public setPersonalizedBrightnessCurveLevel(I)V
    .locals 3
    .param p1, "curveLevel"    # I

    .line 2016
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mCurveLevel:I

    if-eq v0, p1, :cond_0

    .line 2017
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewCurveMode setPersonalizedBrightnessCurveLevel curveLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :cond_0
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mCurveLevel:I

    .line 2021
    return-void
.end method

.method public setPowerSavingModeEnable(Z)V
    .locals 0
    .param p1, "powerSavingModeEnable"    # Z

    .line 2634
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mPowerSavingModeEnable:Z

    .line 2635
    return-void
.end method

.method public setPowerStatus(Z)V
    .locals 1
    .param p1, "powerOnEanble"    # Z

    .line 2071
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPowerOnEanble:Z

    if-eq v0, p1, :cond_0

    .line 2072
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mPowerOnEanble:Z

    .line 2074
    :cond_0
    return-void
.end method

.method public setReadingModeEnable(Z)V
    .locals 0
    .param p1, "readingModeEnable"    # Z

    .line 2621
    iput-boolean p1, p0, Landroid/util/HwNormalizedSpline;->mReadingModeEnable:Z

    .line 2622
    return-void
.end method

.method public setSceneCurveLevel(I)V
    .locals 3
    .param p1, "curveLevel"    # I

    .line 2025
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeEnable:Z

    if-eqz v0, :cond_4

    .line 2026
    const/16 v0, 0x12

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-ne p1, v2, :cond_0

    .line 2027
    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    .line 2028
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeQuitForPowerOnEnable:Z

    goto :goto_0

    .line 2029
    :cond_0
    if-ne p1, v0, :cond_1

    .line 2030
    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeQuitForPowerOnEnable:Z

    .line 2032
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mSceneLevel:I

    if-eq v1, p1, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v0, :cond_3

    .line 2033
    :cond_2
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBrightMode curveLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",VEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    :cond_3
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mSceneLevel:I

    .line 2037
    :cond_4
    return-void
.end method

.method public setVehicleModeQuitEnable()V
    .locals 3

    .line 2048
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    if-eqz v0, :cond_1

    .line 2049
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    .line 2050
    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeQuitForPowerOnEnable:Z

    .line 2051
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeClearOffsetEnable:Z

    if-eqz v1, :cond_0

    .line 2052
    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeClearOffsetEnable:Z

    .line 2053
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->clearBrightnessOffset()V

    .line 2054
    const-string v0, "HwNormalizedSpline"

    const-string v1, "VehicleBrightMode clear brightnessOffset"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_0
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2057
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VehicleBrightMode set mVehicleModeBrightnessEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1454
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unlockDarkAdaptLine()V
    .locals 2

    .line 2845
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptEnable:Z

    if-nez v0, :cond_0

    .line 2846
    return-void

    .line 2848
    :cond_0
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptLineLocked:Z

    if-eqz v0, :cond_1

    .line 2849
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptLineLocked:Z

    .line 2850
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2851
    const-string v0, "HwNormalizedSpline"

    const-string v1, "unlockDarkAdaptLine()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    :cond_1
    return-void
.end method

.method public updateCurrentUserId(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1358
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1359
    const-string v0, "HwNormalizedSpline"

    const-string v1, "save old user\'s paras and load new user\'s paras when user change "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_0
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->saveOffsetParas()V

    .line 1362
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mCurrentUserId:I

    .line 1363
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->loadOffsetParas()V

    .line 1364
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->unlockDarkAdaptLine()V

    .line 1365
    return-void
.end method

.method public updateLevelGameWithLux(FF)V
    .locals 3
    .param p1, "PosBrightness"    # F
    .param p2, "lux"    # F

    .line 1563
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mGameModePosBrightness:F

    .line 1564
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeBrightnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v0, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeStartLuxDefaultBrightness:F

    .line 1566
    iget v0, p0, Landroid/util/HwNormalizedSpline;->mGameModeStartLuxDefaultBrightness:F

    sub-float v0, p1, v0

    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    .line 1567
    iput p2, p0, Landroid/util/HwNormalizedSpline;->mGameModeOffsetLux:F

    goto :goto_0

    .line 1569
    :cond_0
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->clearGameOffsetDelta()V

    .line 1572
    :goto_0
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1573
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameBrightMode updateLevelTmp:mDeltaTmp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDeltaTmp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mGameModePosBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mGameModePosBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mGameModeStartLuxDefaultBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mGameModeStartLuxDefaultBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_1
    return-void
.end method

.method public updateLevelWithLux(FF)V
    .locals 8
    .param p1, "PosBrightness"    # F
    .param p2, "lux"    # F

    .line 1474
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    .line 1475
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error input lux,lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void

    .line 1478
    :cond_0
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mIsReboot:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1479
    iput-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mIsUserChange:Z

    .line 1481
    :cond_1
    iput p2, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    .line 1482
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessEnable:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 1483
    invoke-direct {p0, p2}, Landroid/util/HwNormalizedSpline;->getCurrentBrightness(F)F

    move-result v1

    .line 1484
    .local v1, "defaultBrightness":F
    iget-boolean v4, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Landroid/util/HwNormalizedSpline;->mDayModeEnable:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->getBrightnessMode()Landroid/util/HwNormalizedSpline$BrightnessModeState;

    move-result-object v4

    sget-object v5, Landroid/util/HwNormalizedSpline$BrightnessModeState;->NewCurveMode:Landroid/util/HwNormalizedSpline$BrightnessModeState;

    if-ne v4, v5, :cond_4

    .line 1485
    iget v4, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 1486
    .local v4, "oldBrightness":F
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    :goto_0
    iput v5, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 1487
    sget-boolean v5, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 1488
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_3

    .line 1489
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateLevel DayMode: defaultBrightness ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", mDayModeMinimumBrightness ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/util/HwNormalizedSpline;->mDayModeMinimumBrightness:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    .end local v4    # "oldBrightness":F
    :cond_3
    goto :goto_1

    .line 1493
    :cond_4
    iput v1, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 1495
    .end local v1    # "defaultBrightness":F
    :goto_1
    goto/16 :goto_3

    :cond_5
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptEnable:Z

    if-eqz v1, :cond_7

    .line 1496
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->getCurrentDarkAdaptLine()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 1497
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    .line 1498
    iput-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptLineLocked:Z

    goto :goto_2

    .line 1500
    :cond_6
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptLineLocked:Z

    .line 1502
    :goto_2
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 1503
    const-string v1, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLevel DarkAdapt: mDefaultBrightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", locked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptLineLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1506
    :cond_7
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountEnable:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    if-eqz v1, :cond_a

    .line 1507
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mDayModeEnable:Z

    if-nez v1, :cond_9

    :cond_8
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelDayModeEnable:Z

    if-nez v1, :cond_9

    .line 1508
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v1, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    goto :goto_3

    .line 1510
    :cond_9
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v1, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 1511
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 1512
    const-string v1, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLevel mOminLevelMode:mDefaultBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1515
    :cond_a
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mDayModeAlgoEnable:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mDayModeEnable:Z

    if-eqz v1, :cond_b

    .line 1516
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDayBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v1, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 1517
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v1, :cond_c

    .line 1518
    const-string v1, "HwNormalizedSpline"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLevel DayMode: mDefaultBrightnessFromLux ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrightnessFromLux:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1521
    :cond_b
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mDefaultBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v1, p2}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v1

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 1523
    :cond_c
    :goto_3
    iput p1, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    .line 1524
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mManualMode:Z

    const/high16 v4, -0x40800000    # -1.0f

    if-eqz v1, :cond_d

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mManualBrightnessMaxLimit:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_d

    iget v1, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mManualBrightnessMaxLimit:I

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-nez v1, :cond_d

    .line 1525
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    .line 1526
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 1527
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    .line 1528
    sget-boolean v1, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 1529
    const-string v1, "HwNormalizedSpline"

    const-string v5, "updateLevel outdoor no offset mDelta=0"

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1532
    :cond_d
    iget v1, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    sub-float/2addr v1, v5

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 1533
    iget v1, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    sub-float/2addr v1, v5

    iput v1, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    .line 1535
    :cond_e
    :goto_4
    iget v1, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_f

    .line 1536
    iput v4, p0, Landroid/util/HwNormalizedSpline;->mAmLuxOffset:F

    .line 1537
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    .line 1538
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    .line 1539
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOffsetBrightness_last:F

    .line 1540
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mLastLuxDefaultBrightness:F

    .line 1541
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    .line 1542
    iput-boolean v3, p0, Landroid/util/HwNormalizedSpline;->mDarkAdaptLineLocked:Z

    .line 1543
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->clearGameOffsetDelta()V

    .line 1545
    :cond_f
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelModeEnable:Z

    if-eqz v0, :cond_10

    .line 1546
    invoke-virtual {p0, p2}, Landroid/util/HwNormalizedSpline;->updateOminLevelCount(F)V

    goto :goto_5

    .line 1548
    :cond_10
    iput v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    .line 1549
    iput v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 1551
    :goto_5
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeEnable:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeBrightnessEnable:Z

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeLuxThreshold:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_11

    .line 1552
    iput-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mVehicleModeClearOffsetEnable:Z

    .line 1553
    const-string v0, "HwNormalizedSpline"

    const-string v1, "VehicleBrightMode updateLevel in VehicleBrightnessMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_11
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->checkErrorCorrectionOffset()V

    .line 1556
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 1557
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLevel:mDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDelta:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mDeltaNew="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mDeltaNew:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mPosBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",mStartLuxDefaultBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mStartLuxDefaultBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_12
    invoke-direct {p0}, Landroid/util/HwNormalizedSpline;->saveOffsetParas()V

    .line 1560
    return-void
.end method

.method public updateNewBrightnessCurve()V
    .locals 4

    .line 1771
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    if-nez v0, :cond_1

    .line 1772
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1773
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not updateNewBrightnessCurve,mPersonalizedBrightnessCurveLoadEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_0
    return-void

    .line 1777
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    .line 1778
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1779
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1781
    :cond_2
    const-string v1, "BrightnessCurveLow"

    invoke-virtual {p0, v1}, Landroid/util/HwNormalizedSpline;->getBrightnessListFromDB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    .line 1782
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/util/HwNormalizedSpline;->checkBrightnessListIsOK(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1783
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1784
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode checkPointsList brightnessList is wrong,tag=BrightnessCurveLow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    return-void

    .line 1788
    :cond_3
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1789
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1791
    :cond_4
    const-string v1, "BrightnessCurveMiddle"

    invoke-virtual {p0, v1}, Landroid/util/HwNormalizedSpline;->getBrightnessListFromDB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    .line 1792
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/util/HwNormalizedSpline;->checkBrightnessListIsOK(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1793
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1794
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode checkPointsList brightnessList is wrong,tag=BrightnessCurveMiddle"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    return-void

    .line 1798
    :cond_5
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1799
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1801
    :cond_6
    const-string v1, "BrightnessCurveHigh"

    invoke-virtual {p0, v1}, Landroid/util/HwNormalizedSpline;->getBrightnessListFromDB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    .line 1802
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/util/HwNormalizedSpline;->checkBrightnessListIsOK(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1803
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1804
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode checkPointsList brightnessList is wrong,tag=BrightnessCurveHigh"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    return-void

    .line 1808
    :cond_7
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1809
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1811
    :cond_8
    const-string v1, "BrightnessCurveDefault"

    invoke-virtual {p0, v1}, Landroid/util/HwNormalizedSpline;->getBrightnessListFromDB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    .line 1812
    iget-object v1, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/util/HwNormalizedSpline;->checkBrightnessListIsOK(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1813
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1814
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode checkPointsList brightnessList is wrong,tag=BrightnessCurveDefault"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return-void

    .line 1818
    :cond_9
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mRebootNewCurveEnable:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 1819
    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mRebootNewCurveEnable:Z

    .line 1820
    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    .line 1821
    iput-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    .line 1822
    const-string v1, "HwNormalizedSpline"

    const-string v3, "NewCurveMode reboot first updateNewBrightnessCurve success!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_a
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    if-eqz v1, :cond_b

    .line 1825
    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    .line 1826
    iput-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    .line 1827
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->clearBrightnessOffset()V

    .line 1828
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode updateNewBrightnessCurve success!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_b
    return-void
.end method

.method public updateNewBrightnessCurveFromTmp()V
    .locals 3

    .line 1884
    sget-object v0, Landroid/util/HwNormalizedSpline;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1885
    :try_start_0
    iget-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    if-eqz v1, :cond_4

    .line 1886
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    .line 1887
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1888
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1890
    :cond_0
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLowTmp:Ljava/util/List;

    invoke-direct {p0, v2}, Landroid/util/HwNormalizedSpline;->cloneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLow:Ljava/util/List;

    .line 1892
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1893
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1895
    :cond_1
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddleTmp:Ljava/util/List;

    invoke-direct {p0, v2}, Landroid/util/HwNormalizedSpline;->cloneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddle:Ljava/util/List;

    .line 1897
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1898
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1900
    :cond_2
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHighTmp:Ljava/util/List;

    invoke-direct {p0, v2}, Landroid/util/HwNormalizedSpline;->cloneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHigh:Ljava/util/List;

    .line 1902
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1903
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1905
    :cond_3
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefaultTmp:Ljava/util/List;

    invoke-direct {p0, v2}, Landroid/util/HwNormalizedSpline;->cloneList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefault:Ljava/util/List;

    .line 1907
    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    if-eqz v2, :cond_4

    .line 1908
    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    .line 1909
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnable:Z

    .line 1910
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->clearBrightnessOffset()V

    .line 1911
    const-string v1, "HwNormalizedSpline"

    const-string v2, "NewCurveMode updateNewBrightnessCurve from tmp, success!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :cond_4
    monitor-exit v0

    .line 1915
    return-void

    .line 1914
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateNewBrightnessCurveTmp()V
    .locals 3

    .line 1929
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    .line 1930
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessEnable:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1937
    :cond_0
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLowTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1938
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLowTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1940
    :cond_1
    const-string v0, "BrightnessCurveLow"

    invoke-virtual {p0, v0}, Landroid/util/HwNormalizedSpline;->getBrightnessListFromDB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLowTmp:Ljava/util/List;

    .line 1941
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLowTmp:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->checkBrightnessListIsOK(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1942
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveLowTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1943
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode checkPointsList brightnessList is wrong,tag=BrightnessCurveLow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    return-void

    .line 1947
    :cond_2
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddleTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1948
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddleTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1950
    :cond_3
    const-string v0, "BrightnessCurveMiddle"

    invoke-virtual {p0, v0}, Landroid/util/HwNormalizedSpline;->getBrightnessListFromDB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddleTmp:Ljava/util/List;

    .line 1951
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddleTmp:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->checkBrightnessListIsOK(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1952
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveMiddleTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1953
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode checkPointsList brightnessList is wrong,tag=BrightnessCurveMiddle"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    return-void

    .line 1957
    :cond_4
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHighTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1958
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHighTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1960
    :cond_5
    const-string v0, "BrightnessCurveHigh"

    invoke-virtual {p0, v0}, Landroid/util/HwNormalizedSpline;->getBrightnessListFromDB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHighTmp:Ljava/util/List;

    .line 1961
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHighTmp:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->checkBrightnessListIsOK(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1962
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveHighTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1963
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode checkPointsList brightnessList is wrong,tag=BrightnessCurveHigh"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    return-void

    .line 1967
    :cond_6
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefaultTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1968
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefaultTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1970
    :cond_7
    const-string v0, "BrightnessCurveDefault"

    invoke-virtual {p0, v0}, Landroid/util/HwNormalizedSpline;->getBrightnessListFromDB(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefaultTmp:Ljava/util/List;

    .line 1971
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefaultTmp:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/util/HwNormalizedSpline;->checkBrightnessListIsOK(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1972
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mBrightnessCurveDefaultTmp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1973
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode checkPointsList brightnessList is wrong,tag=BrightnessCurveDefault"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    return-void

    .line 1977
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mNewCurveEnableTmp:Z

    .line 1978
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1979
    const-string v0, "HwNormalizedSpline"

    const-string v1, "NewCurveMode updateNewBrightnessCurveTmp success!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_9
    iget-boolean v0, p0, Landroid/util/HwNormalizedSpline;->mPowerOnEanble:Z

    if-nez v0, :cond_a

    .line 1982
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->updateNewBrightnessCurveFromTmp()V

    .line 1984
    :cond_a
    return-void

    .line 1931
    :cond_b
    :goto_0
    sget-boolean v0, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 1932
    const-string v0, "HwNormalizedSpline"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not updateNewBrightnessCurveTmp,mPersonalizedBrightnessEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mPersonalizedBrightnessCurveLoadEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mPersonalizedBrightnessCurveLoadEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_c
    return-void
.end method

.method public updateOminLevelBrighnessLinePoints()V
    .locals 8

    .line 849
    iget-object v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 850
    const-string v0, "HwNormalizedSpline"

    const-string v1, "mOminLevelMode mOminLevelBrighnessLinePointsList==null,return"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void

    .line 853
    :cond_0
    const/4 v0, 0x0

    .line 854
    .local v0, "temp":Landroid/util/HwNormalizedSpline$Point;
    const/4 v1, 0x0

    .line 855
    .local v1, "temp1":Landroid/util/HwNormalizedSpline$Point;
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 856
    .local v2, "listsize":I
    iget-object v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v3}, Landroid/util/HwNormalizedSpline;->getOminLevelCountThMin(Ljava/util/List;)I

    move-result v3

    .line 857
    .local v3, "countThMin":I
    iget-object v4, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v4}, Landroid/util/HwNormalizedSpline;->getOminLevelCountThMax(Ljava/util/List;)I

    move-result v4

    .line 858
    .local v4, "countThMax":I
    const/4 v5, 0x2

    if-lt v2, v5, :cond_3

    .line 859
    iget-object v5, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/util/HwNormalizedSpline$Point;

    .line 860
    iget-object v5, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/util/HwNormalizedSpline$Point;

    .line 861
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    if-lt v5, v3, :cond_1

    .line 862
    iget v5, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-direct {p0, v5}, Landroid/util/HwNormalizedSpline;->getOminLevelFromCount(I)F

    move-result v5

    iput v5, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 863
    iput-boolean v7, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountEnable:Z

    goto :goto_0

    .line 865
    :cond_1
    iget-object v5, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v5}, Landroid/util/HwNormalizedSpline;->getOminLevelThMin(Ljava/util/List;)F

    move-result v5

    iput v5, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 866
    iput-boolean v6, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountEnable:Z

    .line 868
    :goto_0
    iget v5, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    iget v6, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 869
    iget v5, v1, Landroid/util/HwNormalizedSpline$Point;->y:F

    iput v5, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 870
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOminLevelMode updateMinLevel x(0)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",y(0)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",y(0)==y(1)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_2
    sget-boolean v5, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountEnable:Z

    if-eqz v5, :cond_4

    iget v5, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    if-ge v5, v4, :cond_4

    .line 873
    const-string v5, "HwNormalizedSpline"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOminLevelMode updateMinLevel x(0)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/util/HwNormalizedSpline$Point;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",y(0)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/util/HwNormalizedSpline$Point;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 876
    :cond_3
    const-string v5, "HwNormalizedSpline"

    const-string v6, "mOminLevelMode mOminLevelBrighnessLinePointsList==null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_4
    :goto_1
    return-void
.end method

.method public updateOminLevelCount(F)V
    .locals 13
    .param p1, "lux"    # F

    .line 1603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1604
    .local v0, "currentMinuteTime":I
    iget v1, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    sub-int v1, v0, v1

    .line 1605
    .local v1, "deltaMinuteTime":I
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongTimeTh:I

    if-ge v1, v2, :cond_0

    if-gez v1, :cond_1

    .line 1606
    :cond_0
    iget-object v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Landroid/util/HwNormalizedSpline;->resetOminLevelCount(Ljava/util/List;F)I

    move-result v2

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 1607
    iput v0, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountResetLongSetTime:I

    .line 1608
    sget-boolean v2, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1609
    const-string v2, "HwNormalizedSpline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOminLevelMode reset mOminLevelCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",deltaMinuteTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",currenTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    :cond_1
    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_b

    iget v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidLuxTh:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-lez v3, :cond_2

    goto/16 :goto_1

    .line 1616
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1617
    .local v3, "currentTime":J
    iget-object v5, p0, Landroid/util/HwNormalizedSpline;->mOminLevelBrighnessLinePointsList:Ljava/util/List;

    invoke-virtual {p0, v5, p1}, Landroid/util/HwNormalizedSpline;->getDefaultBrightnessLevelNew(Ljava/util/List;F)F

    move-result v5

    .line 1618
    .local v5, "mBrightenDefaultBrightness":F
    iget-wide v6, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSetTime:J

    sub-long v6, v3, v6

    .line 1619
    .local v6, "deltaTime":J
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    iget v10, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountValidTimeTh:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    const v9, 0x33d6bf95    # 1.0E-7f

    const/4 v10, 0x1

    if-ltz v8, :cond_6

    .line 1620
    sget-boolean v8, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 1621
    const-string v8, "HwNormalizedSpline"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mOminLevelMode deltaTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ",ValidTime"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_3
    iget v8, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 1624
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    if-lez v2, :cond_a

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelOffsetCountEnable:Z

    if-eqz v2, :cond_a

    .line 1625
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 1626
    const/4 v2, 0x0

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    .line 1627
    iput-wide v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSetTime:J

    .line 1628
    const-string v2, "HwNormalizedSpline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOminLevelMode resetoffset-- count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1630
    :cond_4
    iget v8, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    sub-float/2addr v8, v5

    cmpl-float v8, v8, v2

    if-lez v8, :cond_5

    .line 1631
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    iget-object v8, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v8}, Landroid/util/HwNormalizedSpline;->getOminLevelCountThMax(Ljava/util/List;)I

    move-result v8

    if-ge v2, v8, :cond_a

    .line 1632
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    add-int/2addr v2, v10

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 1633
    iput v10, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    .line 1634
    iput-wide v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSetTime:J

    .line 1635
    const-string v2, "HwNormalizedSpline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOminLevelMode brighten++ count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1637
    :cond_5
    iget v8, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    sub-float/2addr v8, v5

    cmpg-float v2, v8, v2

    if-gez v2, :cond_a

    .line 1638
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    if-lez v2, :cond_a

    .line 1639
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 1640
    const/4 v2, -0x1

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    .line 1641
    iput-wide v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSetTime:J

    .line 1642
    const-string v2, "HwNormalizedSpline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOminLevelMode darken-- count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1646
    :cond_6
    sget-boolean v8, Landroid/util/HwNormalizedSpline;->DEBUG:Z

    if-eqz v8, :cond_7

    .line 1647
    const-string v8, "HwNormalizedSpline"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mOminLevelMode deltaTime="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_7
    iget v8, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    .line 1650
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    if-lez v2, :cond_a

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    if-ltz v2, :cond_a

    iget-boolean v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelOffsetCountEnable:Z

    if-eqz v2, :cond_a

    .line 1651
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 1652
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    .line 1653
    iput-wide v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSetTime:J

    .line 1654
    const-string v2, "HwNormalizedSpline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOminLevelMode resetoffset-- count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",ValidCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1656
    :cond_8
    iget v8, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    sub-float/2addr v8, v5

    cmpl-float v8, v8, v2

    if-lez v8, :cond_9

    .line 1657
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    iget-object v8, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountLevelPointsList:Ljava/util/List;

    invoke-direct {p0, v8}, Landroid/util/HwNormalizedSpline;->getOminLevelCountThMax(Ljava/util/List;)I

    move-result v8

    if-ge v2, v8, :cond_a

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    if-gtz v2, :cond_a

    .line 1658
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    add-int/2addr v2, v10

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 1659
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    add-int/2addr v2, v10

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    .line 1660
    iput-wide v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSetTime:J

    .line 1661
    const-string v2, "HwNormalizedSpline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOminLevelMode brighten++ count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",ValidCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1663
    :cond_9
    iget v8, p0, Landroid/util/HwNormalizedSpline;->mPosBrightness:F

    sub-float/2addr v8, v5

    cmpg-float v2, v8, v2

    if-gez v2, :cond_a

    .line 1664
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    if-lez v2, :cond_a

    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    if-ltz v2, :cond_a

    .line 1665
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    .line 1666
    iget v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    sub-int/2addr v2, v10

    iput v2, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    .line 1667
    iput-wide v3, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCountSetTime:J

    .line 1668
    const-string v2, "HwNormalizedSpline"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mOminLevelMode darken-- count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/util/HwNormalizedSpline;->mOminLevelCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",ValidCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Landroid/util/HwNormalizedSpline;->mOminLevelValidCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    :cond_a
    :goto_0
    invoke-virtual {p0}, Landroid/util/HwNormalizedSpline;->updateOminLevelBrighnessLinePoints()V

    .line 1673
    return-void

    .line 1614
    .end local v3    # "currentTime":J
    .end local v5    # "mBrightenDefaultBrightness":F
    .end local v6    # "deltaTime":J
    :cond_b
    :goto_1
    return-void
.end method
