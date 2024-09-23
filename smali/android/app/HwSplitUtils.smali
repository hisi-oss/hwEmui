.class public Landroid/app/HwSplitUtils;
.super Ljava/lang/Object;
.source "HwSplitUtils.java"


# static fields
.field public static final COLUMN_NUMBER_ONE:I = 0x1

.field public static final COLUMN_NUMBER_TWO:I = 0x2

.field public static final EXTRAS_HWSPLIT_SIZE:Ljava/lang/String; = "extras_hw_split_size"

.field public static final SPLIT_LAND_DEFAULT:D = 5.5

.field public static final SPLIT_PORT_DEFAULT:D = 8.0

.field private static TAG:Ljava/lang/String; = null

.field private static final WIDTH_LIMIT_LAND:I = 0x250

.field private static final WIDTH_LIMIT_PORT:I = 0x215

.field private static mDeviceSize:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/app/HwSplitUtils;->mDeviceSize:D

    .line 34
    const-string v0, "HwSplitUtils"

    sput-object v0, Landroid/app/HwSplitUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateColumnsNumber(Landroid/app/Activity;IDD)I
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appWidth"    # I
    .param p2, "landSplitLimit"    # D
    .param p4, "portSplitLimit"    # D

    .line 90
    invoke-static {p0}, Landroid/app/HwSplitUtils;->calculateDeviceSize(Landroid/content/Context;)D

    move-result-wide v0

    .line 92
    .local v0, "sizeInch":D
    invoke-static {p0}, Landroid/app/HwSplitUtils;->isScreenPotrait(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_1

    .line 93
    cmpl-double v2, p4, v6

    if-lez v2, :cond_3

    cmpl-double v2, v0, p4

    if-gez v2, :cond_0

    sub-double v6, v0, p4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v2, v6, v4

    if-gez v2, :cond_3

    :cond_0
    const v2, 0x44054000    # 533.0f

    .line 94
    invoke-static {p0, v2}, Landroid/app/HwSplitUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 95
    return v3

    .line 98
    :cond_1
    cmpl-double v2, p2, v6

    if-lez v2, :cond_3

    cmpl-double v2, v0, p2

    if-gez v2, :cond_2

    sub-double v6, v0, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v2, v6, v4

    if-gez v2, :cond_3

    :cond_2
    const/high16 v2, 0x44140000    # 592.0f

    .line 99
    invoke-static {p0, v2}, Landroid/app/HwSplitUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-lt p1, v2, :cond_3

    .line 100
    return v3

    .line 104
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private static calculateDeviceSize(Landroid/content/Context;)D
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    sget-wide v0, Landroid/app/HwSplitUtils;->mDeviceSize:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 111
    sget-wide v0, Landroid/app/HwSplitUtils;->mDeviceSize:D

    return-wide v0

    .line 114
    :cond_0
    const-string v0, "window"

    .line 115
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 116
    .local v0, "iwm":Landroid/view/IWindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 118
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    const-wide/16 v3, 0x0

    .line 121
    .local v3, "xInch":D
    const-wide/16 v5, 0x0

    .line 123
    .local v5, "yInch":D
    const/4 v7, 0x4

    const/4 v8, 0x2

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-eqz v0, :cond_1

    .line 124
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 126
    .local v11, "point":Landroid/graphics/Point;
    const/4 v12, 0x0

    :try_start_0
    invoke-interface {v0, v12, v11}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 128
    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    move-wide v3, v12

    .line 129
    iget v12, v11, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    iget v13, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    move-wide v5, v12

    .line 130
    new-instance v12, Ljava/math/BigDecimal;

    add-double v13, v3, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    .line 131
    .local v12, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v12, v8, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v13

    sput-wide v13, Landroid/app/HwSplitUtils;->mDeviceSize:D

    .line 132
    sget-wide v13, Landroid/app/HwSplitUtils;->mDeviceSize:D
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v13

    .line 133
    .end local v12    # "bd":Ljava/math/BigDecimal;
    :catch_0
    move-exception v12

    .line 134
    .local v12, "e":Landroid/os/RemoteException;
    sget-object v13, Landroid/app/HwSplitUtils;->TAG:Ljava/lang/String;

    const-string v14, "RemoteException while calculate device size"

    invoke-static {v13, v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v11    # "point":Landroid/graphics/Point;
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_1
    iget v11, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 140
    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v12, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 142
    new-instance v9, Ljava/math/BigDecimal;

    add-double v10, v3, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 143
    .local v9, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v9, v8, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    sput-wide v7, Landroid/app/HwSplitUtils;->mDeviceSize:D

    .line 144
    sget-wide v7, Landroid/app/HwSplitUtils;->mDeviceSize:D

    return-wide v7
.end method

.method private static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 149
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAppWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 154
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xa0

    return v1
.end method

.method public static isJumpedActivity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "invokerName"    # Ljava/lang/String;
    .param p1, "calleesName"    # Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "ret":Z
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.android.settings.password.ChooseLockGeneric"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "com.huawei.android.hicloud.ui.activity.HisyncGuideActivity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "com.android.settings.fingerprint.FingerprintSettingsActivity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "com.huawei.android.hicloud.ui.activity.PhoneFinderGuideActivity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "com.huawei.android.hicloud.ui.activity.NewHiSyncSettingActivity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 197
    :pswitch_0
    const-string v1, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.settings.ConfirmLockPattern$InternalActivity"

    .line 198
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 191
    :pswitch_1
    const-string v1, "com.android.settings.ConfirmLockPattern$InternalActivity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.settings.password.ConfirmLockPattern$InternalActivity"

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 183
    :pswitch_2
    const-string v1, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.password.ChooseLockGeneric"

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.password.ConfirmLockPassword$InternalActivity"

    .line 185
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.ConfirmLockPassword$InternalActivity"

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 187
    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    .line 177
    :pswitch_3
    const-string v1, "com.huawei.android.hicloud.ui.activity.MainActivity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    const/4 v0, 0x1

    goto :goto_2

    .line 172
    :pswitch_4
    const-string v1, "com.huawei.android.hicloud.ui.activity.PhoneFinderGuideActivity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 173
    const/4 v0, 0x1

    goto :goto_2

    .line 166
    :pswitch_5
    const-string v1, "com.huawei.android.hicloud.ui.activity.HisyncGuideActivity"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.huawei.android.hicloud.ui.activity.MainActivity"

    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    :cond_4
    const/4 v0, 0x1

    .line 206
    :cond_5
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76fbea25 -> :sswitch_5
        -0x3ca50bb1 -> :sswitch_4
        -0x2849f72a -> :sswitch_3
        0x4649d1cd -> :sswitch_2
        0x692e0877 -> :sswitch_1
        0x709d26a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isNeedSplit(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 62
    return v0

    .line 65
    :cond_0
    invoke-static {p0}, Landroid/app/HwSplitUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v7

    .line 67
    .local v7, "appWidth":I
    const-wide/high16 v1, 0x4016000000000000L    # 5.5

    .line 68
    .local v1, "landSplitLimit":D
    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 69
    .local v3, "portSplitLimit":D
    move-object v8, p0

    check-cast v8, Landroid/app/Activity;

    .line 70
    .local v8, "activity":Landroid/app/Activity;
    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extras_hw_split_size"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v9

    .line 71
    .local v9, "splitSize":[D
    const/4 v10, 0x1

    if-eqz v9, :cond_1

    .line 72
    aget-wide v1, v9, v0

    .line 73
    aget-wide v3, v9, v10

    .line 75
    .end local v1    # "landSplitLimit":D
    .end local v3    # "portSplitLimit":D
    .local v11, "landSplitLimit":D
    .local v13, "portSplitLimit":D
    :cond_1
    move-wide v11, v1

    move-wide v13, v3

    move-object v1, v8

    move v2, v7

    move-wide v3, v11

    move-wide v5, v13

    invoke-static/range {v1 .. v6}, Landroid/app/HwSplitUtils;->calculateColumnsNumber(Landroid/app/Activity;IDD)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 77
    return v10

    .line 80
    :cond_2
    return v0
.end method

.method private static isScreenPotrait(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 85
    .local v0, "rotation":I
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
