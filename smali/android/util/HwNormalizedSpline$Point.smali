.class Landroid/util/HwNormalizedSpline$Point;
.super Ljava/lang/Object;
.source "HwNormalizedSpline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HwNormalizedSpline;
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

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "inx"    # F
    .param p2, "iny"    # F

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Landroid/util/HwNormalizedSpline$Point;->x:F

    .line 159
    iput p2, p0, Landroid/util/HwNormalizedSpline$Point;->y:F

    .line 160
    return-void
.end method
