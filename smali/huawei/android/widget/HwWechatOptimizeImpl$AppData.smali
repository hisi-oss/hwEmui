.class Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;
.super Ljava/lang/Object;
.source "HwWechatOptimizeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/widget/HwWechatOptimizeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppData"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mFlingVelocity:I

.field public mIdleVelocity:I

.field public mSupportVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "supportVersion"    # Ljava/lang/String;
    .param p3, "flingVelocity"    # I
    .param p4, "idleVelocity"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mAppName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mSupportVersion:Ljava/lang/String;

    .line 80
    iput p3, p0, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mFlingVelocity:I

    .line 81
    iput p4, p0, Lhuawei/android/widget/HwWechatOptimizeImpl$AppData;->mIdleVelocity:I

    .line 82
    return-void
.end method
