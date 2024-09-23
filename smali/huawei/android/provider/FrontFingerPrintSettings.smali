.class public Lhuawei/android/provider/FrontFingerPrintSettings;
.super Ljava/lang/Object;
.source "FrontFingerPrintSettings.java"


# static fields
.field public static final DEFAULT_FINGERPRINT_DEVICEID:I = -0x2

.field public static final FRONT_FINGERPRINT_NAVIGATION:Z

.field public static final FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

.field public static final FRONT_FINGERPRINT_NAVIGATION_TRIKEY_MODE:I

.field public static final SINGLE_VIRTUAL_AI_MODE:I

.field public static final SINGLE_VIRTUAL_NAVIGATION_MODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    const-string v0, "ro.config.hw_front_fp_trikey"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

    .line 22
    const-string v0, "ro.config.hw_front_fp_navi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION:Z

    .line 30
    const-string v0, "ro.config.front_fp_trikey_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY_MODE:I

    .line 34
    const-string v0, "ro.config.show_navbar_slide"

    .line 36
    const-string v2, "ro.config.hw_optb"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "156"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 34
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lhuawei/android/provider/FrontFingerPrintSettings;->SINGLE_VIRTUAL_AI_MODE:I

    .line 40
    const-string v0, "ro.config.single_virtual_navbar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lhuawei/android/provider/FrontFingerPrintSettings;->SINGLE_VIRTUAL_NAVIGATION_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultBtnLightMode()I
    .locals 2

    .line 143
    const-string v0, "ro.config.front_fp_btnlight"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDefaultNaviMode()I
    .locals 3

    .line 110
    const/4 v0, -0x1

    .line 111
    .local v0, "TRIKEY_NAVI_DEFAULT_MODE":I
    invoke-static {}, Lhuawei/android/provider/FrontFingerPrintSettings;->isSupportTrikey()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    sget v1, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

    if-nez v1, :cond_0

    .line 113
    const/4 v0, -0x1

    goto :goto_0

    .line 114
    :cond_0
    sget v1, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 115
    sget v1, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY_MODE:I

    if-ne v1, v2, :cond_1

    .line 116
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_1
    sget v1, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY_MODE:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 118
    const/4 v0, -0x1

    goto :goto_0

    .line 119
    :cond_2
    sget v1, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY_MODE:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 120
    invoke-static {}, Lhuawei/android/provider/FrontFingerPrintSettings;->isChinaArea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 126
    :cond_4
    invoke-static {}, Lhuawei/android/provider/FrontFingerPrintSettings;->isChinaArea()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    const/4 v0, -0x1

    goto :goto_0

    .line 129
    :cond_5
    const/4 v0, 0x0

    .line 134
    :cond_6
    :goto_0
    return v0
.end method

.method public static isChinaArea()Z
    .locals 2

    .line 154
    const-string v0, "ro.config.hw_optb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGestureNavigationMode(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 157
    const-string v0, "secure_gesture_navigation"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isNaviBarEnabled(Landroid/content/ContentResolver;)Z
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 51
    const/4 v0, 0x1

    .line 52
    .local v0, "NAVI_BAR_DEFAULT_STATUS":I
    sget-boolean v1, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 53
    return v2

    .line 55
    :cond_0
    sget v1, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 56
    invoke-static {}, Lhuawei/android/provider/FrontFingerPrintSettings;->isChinaArea()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    sget v1, Lhuawei/android/provider/FrontFingerPrintSettings;->SINGLE_VIRTUAL_NAVIGATION_MODE:I

    if-ne v1, v2, :cond_1

    .line 59
    nop

    .line 60
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    move v0, v1

    goto :goto_1

    .line 63
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 65
    :cond_3
    sget v1, Lhuawei/android/provider/FrontFingerPrintSettings;->FRONT_FINGERPRINT_NAVIGATION_TRIKEY:I

    if-ne v1, v2, :cond_4

    .line 66
    return v3

    .line 69
    :cond_4
    :goto_1
    const-string v1, "enable_navbar"

    .line 70
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 69
    invoke-static {p0, v1, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2
.end method

.method public static isSingleNavBarAIEnable(Landroid/content/ContentResolver;)Z
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 95
    invoke-static {p0}, Lhuawei/android/provider/FrontFingerPrintSettings;->isSingleVirtualNavbarEnable(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    return v1

    .line 99
    :cond_0
    sget v0, Lhuawei/android/provider/FrontFingerPrintSettings;->SINGLE_VIRTUAL_AI_MODE:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 101
    .local v0, "defaultValue":I
    :goto_0
    const-string v3, "ai_enable"

    .line 102
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 101
    invoke-static {p0, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public static isSingleVirtualNavbarEnable(Landroid/content/ContentResolver;)Z
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 78
    invoke-static {p0}, Lhuawei/android/provider/FrontFingerPrintSettings;->isNaviBarEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 79
    return v1

    .line 82
    :cond_0
    sget v0, Lhuawei/android/provider/FrontFingerPrintSettings;->SINGLE_VIRTUAL_NAVIGATION_MODE:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 83
    nop

    .line 84
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 86
    .local v0, "defaultValue":I
    :goto_0
    const-string v3, "ai_navigationbar"

    .line 87
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 86
    invoke-static {p0, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public static isSupportTrikey()Z
    .locals 1

    .line 150
    invoke-static {}, Lhuawei/android/os/HwGeneralManager;->getInstance()Lhuawei/android/os/HwGeneralManager;

    move-result-object v0

    invoke-virtual {v0}, Lhuawei/android/os/HwGeneralManager;->isSupportTrikey()Z

    move-result v0

    return v0
.end method
