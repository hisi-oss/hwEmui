.class public interface abstract Lcom/huawei/android/hardware/HwSensorManager$SensorEventDetector;
.super Ljava/lang/Object;
.source "HwSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hardware/HwSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SensorEventDetector"
.end annotation


# virtual methods
.method public abstract onCorrect()V
.end method

.method public abstract onDirectionChanged(I)V
.end method

.method public abstract onSwing()V
.end method

.method public abstract onTiltToMove(FF)V
.end method
