.class public Lhuawei/android/utils/HwEyeProtectionSpline;
.super Ljava/lang/Object;
.source "HwEyeProtectionSpline.java"


# static fields
.field private static final DEFAULT_BRIGHTNESS:F = 100.0f

.field private static final TAG:Ljava/lang/String; = "HwEyeProtectionSpline"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEyeProtectionControlFlag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhuawei/android/utils/HwEyeProtectionSpline;->mEyeProtectionControlFlag:Z

    .line 40
    iput-object p1, p0, Lhuawei/android/utils/HwEyeProtectionSpline;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public getEyeProtectionBrightnessLevel(F)F
    .locals 1
    .param p1, "lux"    # F

    .line 58
    const/high16 v0, 0x42c80000    # 100.0f

    return v0
.end method

.method public getEyeProtectionControlFlag()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lhuawei/android/utils/HwEyeProtectionSpline;->mEyeProtectionControlFlag:Z

    return v0
.end method

.method public isEyeProtectionMode()Z
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public setEyeProtectionControlFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 65
    iput-boolean p1, p0, Lhuawei/android/utils/HwEyeProtectionSpline;->mEyeProtectionControlFlag:Z

    .line 66
    return-void
.end method
