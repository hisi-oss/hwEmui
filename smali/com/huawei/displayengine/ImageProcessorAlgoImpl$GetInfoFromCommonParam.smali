.class Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetInfoFromCommonParam"
.end annotation


# instance fields
.field private final mCommonHandle:J

.field private mHardwareSharpnessLevel:I


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V
    .locals 2
    .param p1, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iget-wide v0, p1, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    iput-wide v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;->mCommonHandle:J

    .line 291
    return-void
.end method


# virtual methods
.method public getHardwareSharpnessLevel()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;->mHardwareSharpnessLevel:I

    return v0
.end method
