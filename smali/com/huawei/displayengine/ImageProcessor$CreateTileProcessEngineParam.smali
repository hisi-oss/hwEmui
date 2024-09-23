.class public Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateTileProcessEngineParam"
.end annotation


# static fields
.field private static final PARAM_ENGINE_TYPE:Ljava/lang/String; = "engineType"

.field private static final PARAM_TILE_BORDER:Ljava/lang/String; = "tileBorder"

.field private static final PARAM_TILE_SIZE:Ljava/lang/String; = "tileSize"


# instance fields
.field public mAlgos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/huawei/displayengine/ImageProcessor$AlgoType;",
            ">;"
        }
    .end annotation
.end field

.field public mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

.field public mTileBorder:I

.field public mTileSize:I


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 771
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    const-string v0, "engineType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$TileEngineType;->valueOf(Ljava/lang/String;)Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    .line 773
    const-string v0, "tileSize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mTileSize:I

    .line 774
    const-string v0, "tileBorder"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mTileBorder:I

    .line 775
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mEngineType:Lcom/huawei/displayengine/ImageProcessor$TileEngineType;

    invoke-virtual {v0, v1}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getTileEngineAlgos(Lcom/huawei/displayengine/ImageProcessor$TileEngineType;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;->mAlgos:Ljava/util/Set;

    .line 776
    return-void
.end method
