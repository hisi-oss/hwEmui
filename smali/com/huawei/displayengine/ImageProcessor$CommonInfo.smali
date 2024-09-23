.class public Lcom/huawei/displayengine/ImageProcessor$CommonInfo;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonInfo"
.end annotation


# instance fields
.field private mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

.field public mCommonHandle:J


# direct methods
.method public constructor <init>(JLcom/huawei/displayengine/ImageProcessorAlgoImpl;)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "algo"    # Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-wide p1, p0, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    .line 703
    iput-object p3, p0, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    .line 704
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 709
    :try_start_0
    iget-wide v0, p0, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 710
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CommonInfo finalize() mCommonHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mAlgo:Lcom/huawei/displayengine/ImageProcessorAlgoImpl;

    invoke-virtual {v0, p0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->destroyCommonInfo(Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 717
    nop

    .line 718
    return-void

    .line 716
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
