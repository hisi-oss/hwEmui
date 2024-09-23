.class public Lhuawei/com/android/internal/policy/HiTouchSensor;
.super Ljava/lang/Object;
.source "HiTouchSensor.java"


# static fields
.field private static final ACCESSIBILITY_SCREENREADER_ENABLED:Ljava/lang/String; = "accessibility_screenreader_enabled"

.field private static final CALL_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final GRESTURE:Ljava/lang/String; = "gresture"

.field private static final GRESTURE_COVER_SLIDE:I = 0x2

.field public static final GRESTURE_DOUBLE_FINGER:I = 0x0

.field private static final GRESTURE_PEN_LONG_TOUCH:I = 0x1

.field private static final HITOUCH_PKG_NAME:Ljava/lang/String; = "com.huawei.hitouch"

.field private static final HITOUCH_SWITCH:Ljava/lang/String; = "hitouch_enabled"

.field private static final INCALLUI_PKG_NAME:Ljava/lang/String; = "com.android.incallui"

.field private static final INTENT_PACKAGE_NAME:Ljava/lang/String; = "pkgName"

.field private static final IS_TABLET:Z

.field private static final LAUNCH_HITOUCH:Ljava/lang/String; = "launchHiTouch"

.field private static final MAIN_TOUCH_POINT_X:Ljava/lang/String; = "x"

.field private static final MAIN_TOUCH_POINT_Y:Ljava/lang/String; = "y"

.field private static final METHOD_ISTOUCHEFFECTIVE_HIACTION:Ljava/lang/String; = "isTouchEffective"

.field private static final MULTI_WINDOW_MODE:Ljava/lang/String; = "split_screen_mode"

.field private static final POINT_FIRST_PERCENT:F = 0.45f

.field private static final POINT_SECOND_PERCENT:F = 0.55f

.field private static final SECOND_TOUCH_POINT_X:Ljava/lang/String; = "x1"

.field private static final SECOND_TOUCH_POINT_Y:Ljava/lang/String; = "y1"

.field private static final SECUREIME_POPUP:I = 0x1

.field private static final SETTINGS_SWITCH_OFF:I = 0x0

.field private static final SETTINGS_SWITCH_ON:I = 0x1

.field private static final START_HIVOICE_DELAY_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "HiTouch_HiTouchSensor"

.field private static final URI_HIACTION_MANAGER_PROVIDER:Ljava/lang/String; = "content://com.huawei.hiaction.provider.HiActionManagerProvider"

.field private static final USER_GUIDE_SETUP_FLAG:Ljava/lang/String; = "device_provisioned"

.field private static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private accessibilitySwitchObserver:Landroid/database/ContentObserver;

.field private isAccessibilityEnabled:Z

.field private isDeviceProvisionedChecked:Z

.field private isHiTouchEnabled:Z

.field private isInMultiWindowMode:Z

.field private isLandscapeOrient:Z

.field private isTouchEffective_HiAction:Z

.field private mContext:Landroid/content/Context;

.field private mContextActivity:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private settingsHiTouchSwitchObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lhuawei/com/android/internal/policy/HiTouchSensor;->IS_TABLET:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "contextActivity"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isHiTouchEnabled:Z

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isAccessibilityEnabled:Z

    .line 72
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isLandscapeOrient:Z

    .line 73
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isInMultiWindowMode:Z

    .line 74
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isTouchEffective_HiAction:Z

    .line 76
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isDeviceProvisionedChecked:Z

    .line 240
    new-instance v0, Lhuawei/com/android/internal/policy/HiTouchSensor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lhuawei/com/android/internal/policy/HiTouchSensor$1;-><init>(Lhuawei/com/android/internal/policy/HiTouchSensor;Landroid/os/Handler;)V

    iput-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->settingsHiTouchSwitchObserver:Landroid/database/ContentObserver;

    .line 248
    new-instance v0, Lhuawei/com/android/internal/policy/HiTouchSensor$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lhuawei/com/android/internal/policy/HiTouchSensor$2;-><init>(Lhuawei/com/android/internal/policy/HiTouchSensor;Landroid/os/Handler;)V

    iput-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->accessibilitySwitchObserver:Landroid/database/ContentObserver;

    .line 80
    iput-object p1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    iput-object p1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mPackageName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextActivity"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isHiTouchEnabled:Z

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isAccessibilityEnabled:Z

    .line 72
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isLandscapeOrient:Z

    .line 73
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isInMultiWindowMode:Z

    .line 74
    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isTouchEffective_HiAction:Z

    .line 76
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isDeviceProvisionedChecked:Z

    .line 240
    new-instance v0, Lhuawei/com/android/internal/policy/HiTouchSensor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lhuawei/com/android/internal/policy/HiTouchSensor$1;-><init>(Lhuawei/com/android/internal/policy/HiTouchSensor;Landroid/os/Handler;)V

    iput-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->settingsHiTouchSwitchObserver:Landroid/database/ContentObserver;

    .line 248
    new-instance v0, Lhuawei/com/android/internal/policy/HiTouchSensor$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lhuawei/com/android/internal/policy/HiTouchSensor$2;-><init>(Lhuawei/com/android/internal/policy/HiTouchSensor;Landroid/os/Handler;)V

    iput-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->accessibilitySwitchObserver:Landroid/database/ContentObserver;

    .line 85
    iput-object p2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mPackageName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lhuawei/com/android/internal/policy/HiTouchSensor;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/HiTouchSensor;

    .line 33
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateSwitchStatus()V

    return-void
.end method

.method static synthetic access$100(Lhuawei/com/android/internal/policy/HiTouchSensor;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/HiTouchSensor;

    .line 33
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateAccessibilityStatus()V

    return-void
.end method

.method static synthetic access$200(Lhuawei/com/android/internal/policy/HiTouchSensor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lhuawei/com/android/internal/policy/HiTouchSensor;

    .line 33
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkEffectiveStatusFromHiAction(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "content://com.huawei.hiaction.provider.HiActionManagerProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 328
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "packageName"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    nop

    .line 338
    :try_start_1
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->getHitouchStartUpContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->getHitouchStartUpContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 339
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->getHitouchStartUpContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "isTouchEffective"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 345
    :cond_0
    nop

    .line 347
    if-eqz v0, :cond_1

    .line 348
    const-string v3, "HiTouch_HiTouchSensor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking pkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Checking result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "isTouchEffective"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v3, "isTouchEffective"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 352
    :cond_1
    return v3

    .line 342
    :catch_0
    move-exception v4

    .line 343
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "HiTouch_HiTouchSensor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " when calling isTouchEffective."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return v3

    .line 331
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 332
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v5, "HiTouch_HiTouchSensor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " when building jsonObject."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return v3
.end method

.method private checkMultiWindowModeStatus()V
    .locals 3

    .line 317
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "split_screen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 318
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isInMultiWindowMode:Z

    .line 319
    const-string v0, "HiTouch_HiTouchSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check MultiWindow Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isInMultiWindowMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_0
    iput-boolean v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isInMultiWindowMode:Z

    .line 323
    :goto_0
    return-void
.end method

.method private getHitouchStartUpContext()Landroid/content/Context;
    .locals 6

    .line 356
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 357
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->isClonedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v2, "Cloned profile is true."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x0

    .line 361
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    const-string v3, "com.huawei.hitouch"

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "HiTouch_HiTouchSensor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHitouchStartUpContext:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v1, :cond_0

    .line 368
    const-string v2, "HiTouch_HiTouchSensor"

    const-string v3, "context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    return-object v2

    .line 372
    :cond_0
    return-object v1

    .line 374
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    return-object v1
.end method

.method private isClonedProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 291
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 292
    return v0

    .line 294
    :cond_0
    nop

    .line 296
    .local v0, "isClonedProfile":Z
    :try_start_0
    iget-object v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isClonedProfile()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HiTouch_HiTouchSensor"

    const-string v3, "get Cloned Profile failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private isComputerMode()Z
    .locals 9

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "enabledInPad":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 144
    .local v1, "isPcCastMode":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.util.HwPCUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 145
    .local v3, "hwPCUtils":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_1

    .line 146
    const-string v4, "enabledInPad"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v0, v4

    .line 147
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 148
    .local v4, "isInPad":Ljava/lang/Boolean;
    const-string v5, "isPcCastMode"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v1, v5

    .line 149
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 150
    .local v5, "isInPcMode":Ljava/lang/Boolean;
    const-string v6, "HiTouch_HiTouchSensor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabledInPad = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ",isPcCastMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    .line 161
    .end local v0    # "enabledInPad":Ljava/lang/reflect/Method;
    .end local v1    # "isPcCastMode":Ljava/lang/reflect/Method;
    .end local v3    # "hwPCUtils":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "isInPad":Ljava/lang/Boolean;
    .end local v5    # "isInPcMode":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v3, "fail to getIsInPCScreen IllegalArgumentException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 159
    :catch_1
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v3, "fail to getIsInPCScreen InvocationTargetException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 157
    :catch_2
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v3, "fail to getIsInPCScreen IllegalAccessException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 155
    :catch_3
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v3, "fail to getIsInPCScreen NoSuchMethodException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 153
    :catch_4
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v3, "fail to getIsInPCScreen ClassNotFoundException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_0
    nop

    .line 164
    :goto_1
    return v2
.end method

.method private isHiTouchInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 200
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 201
    return v0

    .line 204
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.huawei.hitouch"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 205
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1

    .line 206
    return v0

    .line 208
    :cond_1
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-lez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    .line 209
    .local v2, "isSystemApp":Z
    :goto_0
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x80

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v0

    .line 210
    .local v4, "isUpdatedSystemApp":Z
    :goto_1
    if-nez v2, :cond_5

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    return v0

    .line 211
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "isSystemApp":Z
    .end local v4    # "isUpdatedSystemApp":Z
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "HiTouch_HiTouchSensor"

    const-string v3, "depended package hiTouch does n\'t exist!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isLauncherApp()Z
    .locals 5

    .line 107
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "HiTouch_HiTouchSensor"

    const-string v2, "Can\'t get package name info, enable textboom by default"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v1

    .line 111
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 116
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_1

    .line 117
    const-string v3, "HiTouch_HiTouchSensor"

    const-string v4, "ResolveInfo is null."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v1

    .line 120
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    .line 121
    const-string v3, "HiTouch_HiTouchSensor"

    const-string v4, "ActivityInfo is null."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v1

    .line 125
    :cond_2
    iget-object v3, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v3, "HiTouch restricted: is Launcher App"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v1, 0x1

    return v1

    .line 129
    :cond_3
    return v1
.end method

.method private matchPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "HiTouch_HiTouchSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HiTouch restricted: match package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateAccessibilityStatus()V
    .locals 3

    .line 285
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_screenreader_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isAccessibilityEnabled:Z

    .line 286
    return-void
.end method

.method private updateScreenOriatationStatus()V
    .locals 3

    .line 304
    sget-boolean v0, Lhuawei/com/android/internal/policy/HiTouchSensor;->IS_TABLET:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 305
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isLandscapeOrient:Z

    .line 306
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isLandscapeOrient:Z

    .line 310
    const-string v0, "HiTouch_HiTouchSensor"

    const-string v1, "ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_1
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isLandscapeOrient:Z

    .line 314
    :goto_0
    return-void
.end method

.method private updateSwitchStatus()V
    .locals 3

    .line 275
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hitouch_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 276
    iput-boolean v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isHiTouchEnabled:Z

    .line 277
    const-string v0, "HiTouch_HiTouchSensor"

    const-string v1, "HiTouch Setting Switch, ON"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isHiTouchEnabled:Z

    .line 280
    const-string v0, "HiTouch_HiTouchSensor"

    const-string v1, "HiTouch Setting Switch, OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void
.end method


# virtual methods
.method public checkDeviceProvisioned()Z
    .locals 3

    .line 227
    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isDeviceProvisionedChecked:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContextActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const-string v0, "HiTouch_HiTouchSensor"

    const-string v1, "User guide setup is undergoing..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_0
    const-string v0, "HiTouch_HiTouchSensor"

    const-string v2, "User setup is finished."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isDeviceProvisionedChecked:Z

    .line 234
    return v1

    .line 237
    :cond_1
    return v1
.end method

.method public getStatus()Z
    .locals 1

    .line 98
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateSwitchStatus()V

    .line 100
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->checkMultiWindowModeStatus()V

    .line 101
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->checkEffectiveStatusFromHiAction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isTouchEffective_HiAction:Z

    .line 102
    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isHiTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isAccessibilityEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isLandscapeOrient:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isInMultiWindowMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->isTouchEffective_HiAction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnsupportScence(I)Z
    .locals 6
    .param p1, "windowType"    # I

    .line 168
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->isHiTouchInstalled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 169
    const-string v0, "HiTouch_HiTouchSensor"

    const-string v2, "HiTouch restricted: system app HiTouch don\'t exist."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v1

    .line 172
    :cond_0
    const/16 v0, 0x3e8

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 173
    .local v0, "mHiTouchRestricted":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 174
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v2, "HiTouch restricted: Sub windows restricted."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v0

    .line 177
    :cond_2
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->isLauncherApp()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.incallui"

    invoke-direct {p0, v3}, Lhuawei/com/android/internal/policy/HiTouchSensor;->matchPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v1

    :goto_2
    move v0, v3

    .line 178
    if-eqz v0, :cond_5

    .line 179
    return v0

    .line 182
    :cond_5
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->isComputerMode()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lhuawei/com/android/internal/policy/HiTouchSensor;->IS_TABLET:Z

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    move v0, v3

    .line 183
    if-ne v1, v0, :cond_7

    .line 184
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v2, "HiTouch restricted: tablet in computer mode."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v0

    .line 190
    :cond_7
    iget-object v3, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 191
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "com.tencent.mm"

    iget-object v5, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    move v0, v1

    .line 192
    if-eqz v0, :cond_9

    .line 193
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v2, "HiTouch restricted: Keyguard locked restricted."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_9
    return v0
.end method

.method public launchHiTouchService(FFFFI)V
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "gressture"    # I

    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.huawei.hitouch"

    const-string v2, "com.huawei.hitouch.HiTouchService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v1, "x"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 388
    const-string v1, "y"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 389
    const-string v1, "x1"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 390
    const-string v1, "y1"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 391
    const-string v1, "pkgName"

    iget-object v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v1, "gresture"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v1, "HiTouch_HiTouchSensor"

    const-string v2, "launch HiTouch Service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->getHitouchStartUpContext()Landroid/content/Context;

    move-result-object v1

    .line 396
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 398
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    goto :goto_1

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HiTouch_HiTouchSensor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " when starting service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 403
    :cond_0
    const-string v2, "HiTouch_HiTouchSensor"

    const-string v3, "get context failed, do not launch Hitouch Service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_1
    return-void
.end method

.method public launchHiTouchService(FFI)V
    .locals 9
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "gressture"    # I

    .line 379
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    sub-float v1, p1, v2

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    add-float v1, p1, v2

    goto :goto_0

    .line 380
    .local v6, "x2":F
    :goto_1
    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    sub-float v0, p2, v2

    move v7, v0

    goto :goto_2

    :cond_1
    add-float/2addr v2, p2

    move v7, v2

    .line 381
    .local v7, "y2":F
    :goto_2
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lhuawei/com/android/internal/policy/HiTouchSensor;->launchHiTouchService(FFFFI)V

    .line 382
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 218
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateScreenOriatationStatus()V

    .line 219
    return-void
.end method

.method public processStylusGessture(Landroid/content/Context;IFF)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowType"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 408
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateSwitchStatus()V

    .line 409
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateAccessibilityStatus()V

    .line 410
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateScreenOriatationStatus()V

    .line 412
    const-string v0, "HiTouch_HiTouchSensor"

    const-string v1, "check HiTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, p2}, Lhuawei/com/android/internal/policy/HiTouchSensor;->isUnsupportScence(I)Z

    move-result v0

    .line 414
    .local v0, "isUnsupport":Z
    invoke-virtual {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->getStatus()Z

    move-result v1

    .line 415
    .local v1, "status":Z
    const-string v2, "HiTouch_HiTouchSensor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUnsupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 417
    const-string v2, "HiTouch_HiTouchSensor"

    const-string v3, "can start  HiTouch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v2, 0x1

    invoke-virtual {p0, p3, p4, v2}, Lhuawei/com/android/internal/policy/HiTouchSensor;->launchHiTouchService(FFI)V

    goto :goto_0

    .line 420
    :cond_0
    const-string v2, "HiTouch_HiTouchSensor"

    const-string v3, "cannot start HiTouch!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    return-void
.end method

.method public processTonySlide(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/Handler;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "windowType"    # I
    .param p3, "voiceIntent"    # Landroid/content/Intent;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 435
    if-eqz p4, :cond_2

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 439
    :cond_0
    iput-object p1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mPackageName:Ljava/lang/String;

    .line 440
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateSwitchStatus()V

    .line 441
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateAccessibilityStatus()V

    .line 442
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateScreenOriatationStatus()V

    .line 444
    const-string v0, "HiTouch_HiTouchSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check HiTouch pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {p0, p2}, Lhuawei/com/android/internal/policy/HiTouchSensor;->isUnsupportScence(I)Z

    move-result v0

    .line 446
    .local v0, "isUnsupport":Z
    invoke-virtual {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->getStatus()Z

    move-result v1

    .line 447
    .local v1, "status":Z
    const-string v2, "HiTouch_HiTouchSensor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUnsupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 449
    iget-object v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 450
    .local v2, "dm":Landroid/util/DisplayMetrics;
    const-string v3, "HiTouch_HiTouchSensor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can start  HiTouch width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3ee66666    # 0.45f

    mul-float v6, v3, v4

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v7, v3, v4

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const v4, 0x3f0ccccd    # 0.55f

    mul-float v8, v3, v4

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float v9, v3, v4

    const/4 v10, 0x2

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lhuawei/com/android/internal/policy/HiTouchSensor;->launchHiTouchService(FFFFI)V

    .line 454
    const-string v3, "launchHiTouch"

    const/4 v4, 0x1

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    new-instance v3, Lhuawei/com/android/internal/policy/HiTouchSensor$3;

    invoke-direct {v3, p0, p3}, Lhuawei/com/android/internal/policy/HiTouchSensor$3;-><init>(Lhuawei/com/android/internal/policy/HiTouchSensor;Landroid/content/Intent;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p4, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 460
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    goto :goto_0

    .line 461
    :cond_1
    const-string v2, "HiTouch_HiTouchSensor"

    const-string v3, "cannot start HiTouch!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, p3, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 464
    :goto_0
    return-void

    .line 436
    .end local v0    # "isUnsupport":Z
    .end local v1    # "status":Z
    :cond_2
    :goto_1
    const-string v0, "HiTouch_HiTouchSensor"

    const-string v1, "param invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method public registerObserver()V
    .locals 4

    .line 257
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateSwitchStatus()V

    .line 258
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateAccessibilityStatus()V

    .line 259
    invoke-direct {p0}, Lhuawei/com/android/internal/policy/HiTouchSensor;->updateScreenOriatationStatus()V

    .line 261
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "hitouch_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->settingsHiTouchSwitchObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 264
    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->accessibilitySwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    .line 269
    iget-object v0, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 270
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->settingsHiTouchSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 271
    iget-object v1, p0, Lhuawei/com/android/internal/policy/HiTouchSensor;->accessibilitySwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 272
    return-void
.end method
