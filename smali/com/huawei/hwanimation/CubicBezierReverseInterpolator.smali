.class public Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;
.super Lcom/huawei/hwanimation/CubicBezierInterpolator;
.source "CubicBezierReverseInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CubicBezierReverseInterpolator"


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "cx1"    # F
    .param p2, "cy1"    # F
    .param p3, "cx2"    # F
    .param p4, "cy2"    # F

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hwanimation/CubicBezierInterpolator;-><init>(FFFF)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/huawei/hwanimation/CubicBezierInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hwanimation/CubicBezierInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "input"    # F

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    invoke-virtual {p0, v1}, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;->binarySearch(F)J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3983126f    # 2.5E-4f

    mul-float/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;->getCubicBezierY(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method
