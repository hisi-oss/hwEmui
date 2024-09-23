.class public Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileStrategy"
.end annotation


# instance fields
.field public mAlgos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/displayengine/ImageProcessor$ImageType;",
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;)V
    .locals 1
    .param p1, "imageType"    # Lcom/huawei/displayengine/ImageProcessor$ImageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/displayengine/ImageProcessor$ImageType;",
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p2, "algos":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    .line 221
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$TileStrategy;->mAlgos:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void

    .line 218
    :cond_1
    :goto_0
    return-void
.end method
