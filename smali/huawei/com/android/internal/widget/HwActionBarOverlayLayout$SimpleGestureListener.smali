.class Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$SimpleGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HwActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;


# direct methods
.method private constructor <init>(Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$SimpleGestureListener;->this$0:Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;
    .param p2, "x1"    # Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$1;

    .line 314
    invoke-direct {p0, p1}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$SimpleGestureListener;-><init>(Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 316
    move v0, p4

    .line 317
    .local v0, "velocity":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x45098000    # 2200.0f

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 318
    iget-object v1, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$SimpleGestureListener;->this$0:Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;

    iget-object v3, p0, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout$SimpleGestureListener;->this$0:Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;

    invoke-static {v3}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->access$100(Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    const/4 v5, 0x1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    invoke-static {v1, v3, v2}, Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;->access$200(Lhuawei/com/android/internal/widget/HwActionBarOverlayLayout;IZ)V

    .line 319
    return v5

    .line 321
    :cond_1
    return v2
.end method
