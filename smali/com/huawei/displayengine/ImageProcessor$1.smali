.class Lcom/huawei/displayengine/ImageProcessor$1;
.super Ljava/util/LinkedHashMap;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/displayengine/ImageProcessor;-><init>(Lcom/huawei/displayengine/IDisplayEngineServiceEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/huawei/displayengine/ImageProcessor$CommonInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/displayengine/ImageProcessor;


# direct methods
.method constructor <init>(Lcom/huawei/displayengine/ImageProcessor;IFZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/displayengine/ImageProcessor;
    .param p2, "x0"    # I
    .param p3, "x1"    # F
    .param p4, "x2"    # Z

    .line 89
    iput-object p1, p0, Lcom/huawei/displayengine/ImageProcessor$1;->this$0:Lcom/huawei/displayengine/ImageProcessor;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/huawei/displayengine/ImageProcessor$CommonInfo;",
            ">;)Z"
        }
    .end annotation

    .line 92
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;>;"
    invoke-virtual {p0}, Lcom/huawei/displayengine/ImageProcessor$1;->size()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 93
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
