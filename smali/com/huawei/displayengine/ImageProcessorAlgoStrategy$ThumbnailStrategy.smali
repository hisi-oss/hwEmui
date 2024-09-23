.class Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailStrategy"
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

.field public mCommonInfoAlgos:Ljava/util/Map;
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

.field public mIsSaveCommonInfo:Z


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

    .line 147
    .local p2, "algos":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/huawei/displayengine/ImageProcessor$ImageType;Ljava/util/Set;Z)V
    .locals 2
    .param p1, "imageType"    # Lcom/huawei/displayengine/ImageProcessor$ImageType;
    .param p3, "isSaveCommonInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/displayengine/ImageProcessor$ImageType;",
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;Z)V"
        }
    .end annotation

    .line 149
    .local p2, "algos":Ljava/util/Set;, "Ljava/util/Set<Lcom/huawei/displayengine/ImageProcessor$AlgoType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-boolean p3, p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mIsSaveCommonInfo:Z

    .line 151
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    .line 155
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mAlgos:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    if-eqz p3, :cond_1

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    .line 158
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy$ThumbnailStrategy;->mCommonInfoAlgos:Ljava/util/Map;

    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    return-void

    .line 152
    :cond_2
    :goto_0
    return-void
.end method
