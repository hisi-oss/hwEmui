.class public Lhuawei/com/android/internal/widget/HwFragmentLayout;
.super Landroid/widget/RelativeLayout;
.source "HwFragmentLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/com/android/internal/widget/HwFragmentLayout$HwFragmentLayoutCallback;,
        Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;,
        Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_DURATION:I = 0x64

.field private static final BLUR_LAYER_BACKGROUND_COLOR:I = -0x1000000

.field private static final COLOR_SPLIT_LINE_CLICKED:I = -0xff8201

.field private static final COLOR_SPLIT_LINE_DEFAULT:I = 0x19000000

.field private static final DEBUG:Z = false

.field private static final DEVICE_SIZE_55:D = 5.5

.field private static final DEVICE_SIZE_80:D = 8.0

.field public static final DISPLAY_RATE_FIFTY_PERCENT:F = 0.5f

.field public static final DISPLAY_RATE_FORTY_PERCENT:F = 0.4f

.field public static final DISPLAY_RATE_SIXTY_PERCENT:F = 0.6f

.field private static final LEFT_CONTENT_ID:I = 0xa0001

.field private static final MIN_DISTANCE_MOVED:I = 0xf

.field private static final MSG_REFRESH_FRAMENT_LAYOUT:I = 0xb

.field private static final MSG_SEND_DELAYED:I = 0x12c

.field private static final MSG_SET_TOUCH_DELEGATE:I = 0xa

.field private static final RIGHT_CONTENT_ID:I = 0xa0002

.field private static final SPLIT_BTN_ID:I = 0xa0004

.field private static final SPLIT_LINE_ID:I = 0xa0003

.field private static final TAG:Ljava/lang/String; = "FragmentLayout"

.field private static final TOUCH_DELEGATE_VALUE:I = 0x19

.field private static final WIDTH_LIMIT_LAND:I = 0x250

.field private static final WIDTH_LIMIT_PORT:I = 0x215

.field private static final WIDTH_SPLIT_LINE_CLICKED:I = 0x3

.field private static mDeviceSize:D


# instance fields
.field private mAppWidth:I

.field private mBlurLayerParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mCanMove:Z

.field private mClicked:Z

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayAnimation:Z

.field private mDisplayRate:F

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFragmentLayoutCallback:Lhuawei/com/android/internal/widget/HwFragmentLayout$HwFragmentLayoutCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mLandSeparateSize:D

.field private mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mLeftBlurLayer:Landroid/widget/ImageView;

.field private mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

.field private mLeftIn:Landroid/view/animation/Animation;

.field private mLeftOut:Landroid/view/animation/Animation;

.field private mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private final mLocation:[I

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mPortSeparateSize:D

.field private mRightBlurLayer:Landroid/widget/ImageView;

.field private mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

.field private mRightIn:Landroid/view/animation/Animation;

.field private mRightOut:Landroid/view/animation/Animation;

.field private mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mSelectedContainer:I

.field private mSplitBtn:Landroid/widget/ImageView;

.field private mSplitBtnHeight:I

.field private mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mSplitBtnWidth:I

.field private mSplitLine:Landroid/widget/ImageView;

.field private mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mSplitMode:I

.field private mStartX:I

.field private mStartY:I

.field private mWidthSplitLineDefault:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mXMoving:Z

.field private mYMoving:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    const-wide/16 v0, 0x0

    sput-wide v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDeviceSize:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitMode:I

    .line 121
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mCanMove:Z

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSelectedContainer:I

    .line 126
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLocation:[I

    .line 145
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayAnimation:Z

    .line 480
    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;

    invoke-direct {v1, p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;-><init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    .line 157
    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {p0, p1, v1, v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->init(Landroid/content/Context;FZ)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayRate"    # F

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;-><init>(Landroid/content/Context;FZ)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayRate"    # F
    .param p3, "canMove"    # Z

    .line 197
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitMode:I

    .line 121
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mCanMove:Z

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSelectedContainer:I

    .line 126
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLocation:[I

    .line 145
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayAnimation:Z

    .line 480
    new-instance v0, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;

    invoke-direct {v0, p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;-><init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    .line 198
    invoke-direct {p0, p1, p2, p3}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->init(Landroid/content/Context;FZ)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitMode:I

    .line 121
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mCanMove:Z

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSelectedContainer:I

    .line 126
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLocation:[I

    .line 145
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayAnimation:Z

    .line 480
    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;

    invoke-direct {v1, p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;-><init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    .line 167
    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {p0, p1, v1, v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->init(Landroid/content/Context;FZ)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 177
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitMode:I

    .line 121
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mCanMove:Z

    .line 122
    const/4 v1, -0x1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSelectedContainer:I

    .line 126
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLocation:[I

    .line 145
    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayAnimation:Z

    .line 480
    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;

    invoke-direct {v1, p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout$3;-><init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    .line 178
    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {p0, p1, v1, v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->init(Landroid/content/Context;FZ)V

    .line 179
    return-void
.end method

.method private calculateDeviceSize()D
    .locals 14

    .line 977
    sget-wide v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDeviceSize:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 978
    sget-wide v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDeviceSize:D

    return-wide v0

    .line 981
    :cond_0
    invoke-direct {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    .line 982
    .local v0, "iwm":Landroid/view/IWindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 983
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 985
    const-wide/16 v2, 0x0

    .line 986
    .local v2, "xInch":D
    const-wide/16 v4, 0x0

    .line 988
    .local v4, "yInch":D
    const/4 v6, 0x4

    const/4 v7, 0x2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_1

    .line 989
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 991
    .local v10, "point":Landroid/graphics/Point;
    const/4 v11, 0x0

    :try_start_0
    invoke-interface {v0, v11, v10}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 993
    iget v11, v10, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    iget v12, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    move-wide v2, v11

    .line 994
    iget v11, v10, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    iget v12, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    move-wide v4, v11

    .line 995
    new-instance v11, Ljava/math/BigDecimal;

    add-double v12, v2, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 996
    .local v11, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v11, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    sput-wide v12, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDeviceSize:D

    .line 997
    sget-wide v12, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDeviceSize:D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v12

    .line 998
    .end local v11    # "bd":Ljava/math/BigDecimal;
    :catch_0
    move-exception v11

    .line 999
    .local v11, "e":Landroid/os/RemoteException;
    const-string v12, "FragmentLayout"

    const-string v13, "RemoteException while calculate device size"

    invoke-static {v12, v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1000
    const/4 v12, 0x0

    iput-object v12, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1004
    .end local v10    # "point":Landroid/graphics/Point;
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_1
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    iget v11, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 1005
    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    iget v11, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 1007
    new-instance v8, Ljava/math/BigDecimal;

    add-double v9, v2, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1008
    .local v8, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v8, v7, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    sput-wide v6, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDeviceSize:D

    .line 1009
    sget-wide v6, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDeviceSize:D

    return-wide v6
.end method

.method private static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 1021
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1022
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .line 1026
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getIWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .line 1013
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 1014
    const-string v0, "window"

    .line 1015
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1014
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1017
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 285
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    .line 286
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 288
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    .line 290
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWidthSplitLineDefault:I

    .line 294
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 295
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplay:Landroid/view/Display;

    .line 296
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mMetrics:Landroid/util/DisplayMetrics;

    .line 297
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 299
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 300
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    .line 303
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    const v3, 0xa0001

    invoke-virtual {v1, v3}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setId(I)V

    .line 304
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 305
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x14

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 306
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v5}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    .line 309
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    const v5, 0xa0002

    invoke-virtual {v1, v5}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setId(I)V

    .line 310
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 311
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x15

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 312
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x11

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 313
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v6}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    .line 316
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    const v6, 0xa0003

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 318
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    const/high16 v6, 0x19000000

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 320
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWidthSplitLineDefault:I

    invoke-direct {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 321
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 322
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v6}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    .line 326
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    const v6, 0xa0004

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 327
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    const v6, 0x203021d

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 329
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 330
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v4}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mBlurLayerParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 336
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftBlurLayer:Landroid/widget/ImageView;

    .line 337
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftBlurLayer:Landroid/widget/ImageView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 338
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftBlurLayer:Landroid/widget/ImageView;

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mBlurLayerParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v4, v5}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftBlurLayer:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightBlurLayer:Landroid/widget/ImageView;

    .line 342
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightBlurLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 343
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightBlurLayer:Landroid/widget/ImageView;

    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mBlurLayerParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v4}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightBlurLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v1, p0}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setFragmentFrameLayoutCallback(Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;)V

    .line 348
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v1, p0}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setFragmentFrameLayoutCallback(Lhuawei/com/android/internal/widget/HwFragmentFrameLayout$HwFragmentFrameLayoutCallback;)V

    .line 350
    invoke-direct {p0, v6}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 351
    .local v1, "splitBtnBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 352
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnWidth:I

    .line 353
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnHeight:I

    .line 355
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 362
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;FZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayRate"    # F
    .param p3, "canMove"    # Z

    .line 202
    invoke-direct {p0, p1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->init(Landroid/content/Context;)V

    .line 204
    invoke-virtual {p0, p2}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setDisplayRate(F)V

    .line 205
    invoke-virtual {p0, p3}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setCanMove(Z)V

    .line 208
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 209
    const/high16 v0, 0x20a0000

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightIn:Landroid/view/animation/Animation;

    .line 210
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightIn:Landroid/view/animation/Animation;

    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentLayout$1;

    invoke-direct {v1, p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout$1;-><init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftOut:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xfa

    if-nez v0, :cond_1

    .line 224
    const v0, 0x20a0001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftOut:Landroid/view/animation/Animation;

    .line 225
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 228
    :cond_1
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 229
    const v0, 0x20a0002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftIn:Landroid/view/animation/Animation;

    .line 231
    :cond_2
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 232
    const v0, 0x20a0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightOut:Landroid/view/animation/Animation;

    .line 233
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightOut:Landroid/view/animation/Animation;

    new-instance v3, Lhuawei/com/android/internal/widget/HwFragmentLayout$2;

    invoke-direct {v3, p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout$2;-><init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 248
    :cond_3
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3ecccccd    # 0.4f

    if-nez v0, :cond_4

    .line 249
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 250
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    sget-object v6, Lhuawei/com/android/internal/widget/HwFragmentContainer;->INTERPOLATOR_20_90:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 251
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 252
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v6, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;

    invoke-direct {v6, p0, v3}, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;-><init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;Lhuawei/com/android/internal/widget/HwFragmentLayout$1;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 255
    :cond_4
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_5

    .line 256
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 257
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    sget-object v4, Lhuawei/com/android/internal/widget/HwFragmentContainer;->INTERPOLATOR_20_90:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 258
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 260
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;

    invoke-direct {v1, p0, v3}, Lhuawei/com/android/internal/widget/HwFragmentLayout$FadeAnimationListener;-><init>(Lhuawei/com/android/internal/widget/HwFragmentLayout;Lhuawei/com/android/internal/widget/HwFragmentLayout$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 263
    :cond_5
    return-void
.end method

.method private setLeftLayoutParams(I)V
    .locals 4
    .param p1, "x"    # I

    .line 694
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 695
    iget v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    .line 697
    .local v0, "dispayRate":F
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 698
    iget v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    sub-int p1, v1, p1

    .line 701
    :cond_0
    int-to-float v1, p1

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 702
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 703
    iput v3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    goto :goto_0

    .line 704
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 705
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 706
    iput v3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    goto :goto_0

    .line 708
    :cond_2
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 709
    new-instance v1, Ljava/math/BigDecimal;

    int-to-float v2, p1

    iget v3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 710
    .local v1, "bd":Ljava/math/BigDecimal;
    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    iput v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    .line 715
    .end local v1    # "bd":Ljava/math/BigDecimal;
    :goto_0
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFragmentLayoutCallback:Lhuawei/com/android/internal/widget/HwFragmentLayout$HwFragmentLayoutCallback;

    if-eqz v1, :cond_3

    iget v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 718
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFragmentLayoutCallback:Lhuawei/com/android/internal/widget/HwFragmentLayout$HwFragmentLayoutCallback;

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    invoke-interface {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentLayout$HwFragmentLayoutCallback;->setDisplayRate(F)V

    .line 720
    :cond_3
    return-void
.end method

.method private setSplitBtnParams(I)V
    .locals 3
    .param p1, "y"    # I

    .line 680
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 681
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnWidth:I

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWidthSplitLineDefault:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 683
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v0, p1, v0

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    if-gez v0, :cond_0

    .line 684
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 685
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLocation:[I

    aget v0, v0, v1

    sub-int v0, p1, v0

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 686
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLocation:[I

    aget v1, v2, v1

    sub-int v1, p1, v1

    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 690
    :goto_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtnParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    return-void
.end method


# virtual methods
.method protected calculateColumnsNumber()I
    .locals 3

    .line 896
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 897
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 898
    .local v1, "orientation":I
    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    invoke-virtual {p0, v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->calculateColumnsNumber(II)I

    move-result v2

    return v2
.end method

.method protected calculateColumnsNumber(II)I
    .locals 16
    .param p1, "orientation"    # I
    .param p2, "appWidth"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 910
    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->calculateDeviceSize()D

    move-result-wide v3

    .line 912
    .local v3, "sizeInch":D
    iget-wide v5, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLandSeparateSize:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    iget-wide v5, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLandSeparateSize:D

    goto :goto_0

    :cond_0
    const-wide/high16 v5, 0x4016000000000000L    # 5.5

    .line 913
    .local v5, "landSeparateSize":D
    :goto_0
    iget-wide v9, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mPortSeparateSize:D

    cmpl-double v9, v9, v7

    if-lez v9, :cond_1

    iget-wide v9, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mPortSeparateSize:D

    goto :goto_1

    :cond_1
    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    .line 922
    .local v9, "portSeparateSize":D
    :goto_1
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 923
    return v12

    .line 924
    :cond_2
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitMode:I

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v11, v13, :cond_3

    .line 925
    return v14

    .line 926
    :cond_3
    iget v11, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitMode:I

    const/high16 v13, 0x44140000    # 592.0f

    if-ne v11, v14, :cond_6

    .line 927
    if-ne v1, v14, :cond_5

    .line 928
    iget-object v7, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    invoke-static {v7, v13}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->dip2px(Landroid/content/Context;F)I

    move-result v7

    if-lt v2, v7, :cond_4

    .line 929
    return v14

    .line 931
    :cond_4
    return v12

    .line 934
    :cond_5
    return v12

    .line 937
    :cond_6
    cmpg-double v11, v3, v5

    if-gez v11, :cond_7

    sub-double v13, v3, v5

    .line 938
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpl-double v11, v13, v7

    if-lez v11, :cond_7

    .line 939
    return v12

    .line 940
    :cond_7
    sub-double v13, v3, v9

    cmpl-double v7, v13, v7

    if-lez v7, :cond_b

    .line 941
    const/4 v7, 0x2

    if-ne v1, v7, :cond_9

    .line 942
    iget-object v8, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    const/high16 v11, 0x44140000    # 592.0f

    invoke-static {v8, v11}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->dip2px(Landroid/content/Context;F)I

    move-result v8

    if-lt v2, v8, :cond_8

    .line 943
    return v7

    .line 945
    :cond_8
    return v12

    .line 948
    :cond_9
    iget-object v8, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    const v11, 0x44054000    # 533.0f

    invoke-static {v8, v11}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->dip2px(Landroid/content/Context;F)I

    move-result v8

    if-lt v2, v8, :cond_a

    .line 949
    return v7

    .line 951
    :cond_a
    return v12

    .line 955
    :cond_b
    const/4 v7, 0x2

    if-ne v1, v7, :cond_d

    .line 956
    iget-object v8, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    const/high16 v11, 0x44140000    # 592.0f

    invoke-static {v8, v11}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->dip2px(Landroid/content/Context;F)I

    move-result v8

    if-lt v2, v8, :cond_c

    .line 957
    return v7

    .line 959
    :cond_c
    return v12

    .line 962
    :cond_d
    return v12
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 759
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mClicked:Z

    .line 769
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 771
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    const/high16 v3, 0x19000000

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 773
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitLine()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 774
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 775
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWidthSplitLineDefault:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 776
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x11

    const v4, 0xa0001

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 777
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 778
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitLine()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 784
    :cond_1
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitBtn()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 785
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitBtn()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected displayAnimation()V
    .locals 1

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayAnimation:Z

    .line 615
    return-void
.end method

.method protected getFragmentLayout()Landroid/view/View;
    .locals 0

    .line 373
    return-object p0
.end method

.method protected getLeftBlurLayer()Landroid/widget/ImageView;
    .locals 1

    .line 393
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftBlurLayer:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getLeftContentID()I
    .locals 1

    .line 365
    const v0, 0xa0001

    return v0
.end method

.method protected getLeftLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 377
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    return-object v0
.end method

.method protected getRightBlurLayer()Landroid/widget/ImageView;
    .locals 1

    .line 397
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightBlurLayer:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getRightContentID()I
    .locals 1

    .line 369
    const v0, 0xa0002

    return v0
.end method

.method protected getRightLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 381
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    return-object v0
.end method

.method protected getSelectedContainer()I
    .locals 1

    .line 502
    iget v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSelectedContainer:I

    return v0
.end method

.method protected getSplitBtn()Landroid/widget/ImageView;
    .locals 1

    .line 389
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getSplitLine()Landroid/widget/ImageView;
    .locals 1

    .line 385
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 852
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    move-object v0, p1

    check-cast v0, Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;

    .line 858
    .local v0, "savedState":Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;
    invoke-virtual {v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 860
    iget v1, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;->mSelected:I

    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSelectedContainer(I)V

    .line 863
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mCanMove:Z

    if-eqz v1, :cond_1

    .line 864
    iget v1, v0, Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;->mRate:F

    iput v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    .line 872
    :cond_1
    return-void

    .line 853
    .end local v0    # "savedState":Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 854
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 832
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 834
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;

    invoke-direct {v1, v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 835
    .local v1, "savedState":Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSelectedContainer()I

    move-result v2

    iput v2, v1, Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;->mSelected:I

    .line 837
    iget-boolean v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mCanMove:Z

    if-eqz v2, :cond_0

    .line 838
    iget v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    iput v2, v1, Lhuawei/com/android/internal/widget/HwFragmentLayout$SavedState;->mRate:F

    .line 847
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 725
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mClicked:Z

    .line 733
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 737
    :cond_0
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 743
    :cond_1
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 744
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 747
    :cond_2
    if-eq p1, p3, :cond_3

    .line 748
    iput p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    .line 750
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 751
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 754
    :cond_3
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 619
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 620
    .local v0, "action":I
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 649
    :cond_0
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mClicked:Z

    if-nez v1, :cond_1

    .line 650
    return v3

    .line 653
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    .line 654
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    .line 656
    .local v4, "y":I
    iget v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mStartY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0xf

    if-le v5, v6, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v2

    .line 657
    .local v5, "exceededYSlop":Z
    :goto_0
    iget-boolean v7, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mYMoving:Z

    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    .line 658
    iput-boolean v3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mYMoving:Z

    .line 660
    :cond_3
    iget-boolean v7, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mYMoving:Z

    if-eqz v7, :cond_4

    .line 661
    invoke-direct {p0, v4}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSplitBtnParams(I)V

    .line 664
    :cond_4
    iget v7, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mStartX:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v6, :cond_5

    move v6, v3

    goto :goto_1

    :cond_5
    move v6, v2

    .line 665
    .local v6, "exceededXSlop":Z
    :goto_1
    iget-boolean v7, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mXMoving:Z

    if-nez v7, :cond_6

    if-eqz v6, :cond_6

    .line 666
    iput-boolean v3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mXMoving:Z

    .line 669
    :cond_6
    iget-boolean v7, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mXMoving:Z

    if-eqz v7, :cond_8

    .line 670
    iget-object v7, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLocation:[I

    aget v2, v7, v2

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setLeftLayoutParams(I)V

    goto :goto_2

    .line 622
    .end local v1    # "x":I
    .end local v4    # "y":I
    .end local v5    # "exceededYSlop":Z
    .end local v6    # "exceededXSlop":Z
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mStartX:I

    .line 623
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mStartY:I

    .line 625
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLocation:[I

    invoke-virtual {p0, v4}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLocationOnScreen([I)V

    .line 627
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 629
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    const v5, -0xff8201

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 631
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 632
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mContext:Landroid/content/Context;

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 633
    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v6, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWidthSplitLineDefault:I

    sub-int/2addr v5, v6

    neg-int v5, v5

    div-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 634
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 636
    iget v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mStartY:I

    invoke-direct {p0, v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSplitBtnParams(I)V

    .line 637
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    iput-boolean v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mXMoving:Z

    .line 645
    iput-boolean v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mYMoving:Z

    .line 646
    iput-boolean v3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mClicked:Z

    .line 647
    nop

    .line 676
    :cond_8
    :goto_2
    return v3
.end method

.method protected refreshFragmentLayout()V
    .locals 6

    .line 524
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->calculateColumnsNumber()I

    move-result v0

    .line 532
    .local v0, "columnNumber":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 533
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitLine()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitBtn()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSelectedContainer()I

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_5

    .line 537
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSelectedContainer()I

    move-result v2

    if-ne v2, v4, :cond_0

    goto/16 :goto_0

    .line 569
    :cond_0
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 570
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 572
    iget-boolean v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayAnimation:Z

    if-eqz v2, :cond_1

    .line 573
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 574
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftOut:Landroid/view/animation/Animation;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 575
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightIn:Landroid/view/animation/Animation;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 577
    :cond_1
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 578
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 580
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v2}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 581
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v2

    if-eqz v2, :cond_9

    .line 582
    :cond_2
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 583
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 584
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 588
    :cond_3
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 589
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 591
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v2}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 593
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v2

    if-eqz v2, :cond_9

    .line 594
    :cond_4
    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 595
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 596
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 539
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 540
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 543
    iget-boolean v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayAnimation:Z

    if-eqz v2, :cond_6

    .line 544
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftBlurLayer()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 545
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftIn:Landroid/view/animation/Animation;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 546
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v5, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightOut:Landroid/view/animation/Animation;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 548
    :cond_6
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 549
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v1}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 552
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eq v1, v4, :cond_9

    .line 553
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 554
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 557
    :cond_7
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 558
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v1}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 562
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eq v1, v4, :cond_9

    .line 563
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 564
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 601
    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 602
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 603
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 604
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 605
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 606
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitLine()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setDisplayRate(F)V

    .line 611
    :cond_9
    :goto_1
    return-void
.end method

.method protected setCanMove(Z)V
    .locals 4
    .param p1, "canMove"    # Z

    .line 456
    iput-boolean p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mCanMove:Z

    .line 458
    iget-boolean v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mCanMove:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 461
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 464
    :cond_0
    return-void
.end method

.method protected setDisplayRate(F)V
    .locals 5
    .param p1, "displayRate"    # F

    .line 420
    iput p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mDisplayRate:F

    .line 421
    iget v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mAppWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 426
    .local v0, "leftWidth":I
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v1}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 428
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eq v1, v0, :cond_0

    .line 429
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 430
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v1}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 433
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    const v2, 0xa0001

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 434
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWidthSplitLineDefault:I

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 435
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    iget-object v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v4}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 438
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mWidthSplitLineDefault:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 439
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 440
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLineParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-boolean v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mCanMove:Z

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 447
    :cond_0
    return-void
.end method

.method public setFragmentLayoutCallback(Lhuawei/com/android/internal/widget/HwFragmentLayout$HwFragmentLayoutCallback;)V
    .locals 0
    .param p1, "callback"    # Lhuawei/com/android/internal/widget/HwFragmentLayout$HwFragmentLayoutCallback;

    .line 1049
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mFragmentLayoutCallback:Lhuawei/com/android/internal/widget/HwFragmentLayout$HwFragmentLayoutCallback;

    .line 1050
    return-void
.end method

.method protected setSelectContainerByTouch(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1053
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLeftContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setSelectContainerByTouch(Z)V

    .line 1057
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mRightContent:Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;

    invoke-virtual {v0, p1}, Lhuawei/com/android/internal/widget/HwFragmentFrameLayout;->setSelectContainerByTouch(Z)V

    .line 1060
    :cond_1
    return-void
.end method

.method protected setSelectedContainer(I)V
    .locals 0
    .param p1, "selectedContainer"    # I

    .line 512
    iput p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSelectedContainer:I

    .line 513
    return-void
.end method

.method public setSelectedFrameLayout(I)V
    .locals 1
    .param p1, "id"    # I

    .line 1063
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getLeftContentID()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSelectedContainer(I)V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getRightContentID()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1066
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setSelectedContainer(I)V

    .line 1068
    :cond_1
    :goto_0
    return-void
.end method

.method public setSeparateDeviceSize(DD)V
    .locals 3
    .param p1, "landSeparateSize"    # D
    .param p3, "portSeparteSize"    # D

    .line 883
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 884
    iput-wide p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mLandSeparateSize:D

    .line 885
    :cond_0
    cmpl-double v0, p3, v0

    if-lez v0, :cond_1

    .line 886
    iput-wide p3, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mPortSeparateSize:D

    .line 887
    :cond_1
    return-void
.end method

.method protected setSplitLineTouchDelegate()V
    .locals 3

    .line 467
    invoke-virtual {p0}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->getSplitLine()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 468
    return-void

    .line 471
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 472
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 473
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x19

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 474
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x19

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 476
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitLine:Landroid/widget/ImageView;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 477
    .local v1, "touchDelegate":Landroid/view/TouchDelegate;
    invoke-virtual {p0, v1}, Lhuawei/com/android/internal/widget/HwFragmentLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 478
    return-void
.end method

.method public setSplitMode(I)V
    .locals 0
    .param p1, "splitMode"    # I

    .line 409
    iput p1, p0, Lhuawei/com/android/internal/widget/HwFragmentLayout;->mSplitMode:I

    .line 410
    return-void
.end method
