.class public Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageEngine"
.end annotation


# instance fields
.field public mAlgoHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "handle"    # J

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-wide p1, p0, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    .line 750
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

    .line 754
    iget-wide v0, p0, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 755
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageEngine finalize() error! haven\'t destroyed yet, mAlgoHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 758
    return-void
.end method
