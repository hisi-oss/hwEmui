.class Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;
.super Ljava/lang/Object;
.source "HwEyeProtectionSplineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/utils/HwEyeProtectionSplineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Point"
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "inx"    # F
    .param p2, "iny"    # F

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->x:F

    .line 89
    iput p2, p0, Lhuawei/android/utils/HwEyeProtectionSplineImpl$Point;->y:F

    .line 90
    return-void
.end method
