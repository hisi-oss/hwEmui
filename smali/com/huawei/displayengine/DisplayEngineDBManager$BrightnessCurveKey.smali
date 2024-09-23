.class public Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveKey;
.super Ljava/lang/Object;
.source "DisplayEngineDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrightnessCurveKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveKey$Default;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveKey$High;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveKey$Middle;,
        Lcom/huawei/displayengine/DisplayEngineDBManager$BrightnessCurveKey$Low;
    }
.end annotation


# static fields
.field public static final AL:Ljava/lang/String; = "AmbientLight"

.field public static final BL:Ljava/lang/String; = "BackLight"

.field public static final USERID:Ljava/lang/String; = "UserID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
