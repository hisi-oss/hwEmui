.class public interface abstract Lcom/huawei/featurelayer/systemservicefeature/HwGestureAction/IHwSystemWideActionsListenerEx;
.super Ljava/lang/Object;
.source "IHwSystemWideActionsListenerEx.java"

# interfaces
.implements Lcom/huawei/featurelayer/featureframework/IFeature;


# static fields
.field public static final CLASS:Ljava/lang/String; = "IHwSystemWideActionsListenerEx"

.field public static final PACKAGE:Ljava/lang/String; = "com.huawei.featurelayer.systemservicefeature.HwGestureAction"


# virtual methods
.method public abstract create(Landroid/content/Context;)V
.end method

.method public abstract createPointerLocationView()V
.end method

.method public abstract destroyPointerLocationView()V
.end method

.method public abstract onPointerEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract updateConfiguration()V
.end method
