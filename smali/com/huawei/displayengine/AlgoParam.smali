.class Lcom/huawei/displayengine/AlgoParam;
.super Ljava/lang/Object;
.source "BrigntnessTrainingAlgoImpl.java"


# instance fields
.field public mBLCurveTypeDefaultLuma:Ljava/lang/String;

.field public mBLCurveTypeHighLuma:Ljava/lang/String;

.field public mBLCurveTypeLowLuma:Ljava/lang/String;

.field public mBLCurveTypeMedialLuma:Ljava/lang/String;

.field public mDefaultLumaCount:I

.field public mDefaultLumaSize:I

.field public mDragCount:I

.field public mDragInfo:Ljava/lang/String;

.field public mDragSize:I

.field public mESCW:Ljava/lang/String;

.field public mESCWCount:I

.field public mESCWSize:I

.field public mFirstInital:I

.field public mHighLumaCount:I

.field public mHighLumaSize:I

.field public mLowLumaCount:I

.field public mLowLumaSize:I

.field public mMedialLumaCount:I

.field public mMedialLumaSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/displayengine/AlgoParam;->mDragInfo:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/displayengine/AlgoParam;->mESCW:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeLowLuma:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeMedialLuma:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/displayengine/AlgoParam;->mBLCurveTypeHighLuma:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/displayengine/AlgoParam;->mDragSize:I

    .line 76
    iput v0, p0, Lcom/huawei/displayengine/AlgoParam;->mDragCount:I

    .line 77
    iput v0, p0, Lcom/huawei/displayengine/AlgoParam;->mESCWCount:I

    .line 78
    iput v0, p0, Lcom/huawei/displayengine/AlgoParam;->mLowLumaCount:I

    .line 79
    iput v0, p0, Lcom/huawei/displayengine/AlgoParam;->mMedialLumaCount:I

    .line 80
    iput v0, p0, Lcom/huawei/displayengine/AlgoParam;->mHighLumaCount:I

    .line 81
    iput v0, p0, Lcom/huawei/displayengine/AlgoParam;->mDefaultLumaCount:I

    .line 83
    iput v0, p0, Lcom/huawei/displayengine/AlgoParam;->mFirstInital:I

    .line 84
    return-void
.end method
