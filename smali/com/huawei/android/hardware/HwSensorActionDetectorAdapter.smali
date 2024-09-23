.class public Lcom/huawei/android/hardware/HwSensorActionDetectorAdapter;
.super Ljava/lang/Object;
.source "HwSensorActionDetectorAdapter.java"

# interfaces
.implements Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorrect()V
    .locals 0

    .line 16
    return-void
.end method

.method public onDirectionChanged(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 8
    return-void
.end method

.method public onSwing()V
    .locals 0

    .line 20
    return-void
.end method

.method public onTiltToMove(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 12
    return-void
.end method
