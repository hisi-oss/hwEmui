.class Lcom/huawei/displayengine/ImageProcessor$3;
.super Ljava/util/HashSet;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 461
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 462
    const-string v0, "vivid"

    invoke-virtual {p0, v0}, Lcom/huawei/displayengine/ImageProcessor$3;->add(Ljava/lang/Object;)Z

    const-string v0, "HDRBFace"

    invoke-virtual {p0, v0}, Lcom/huawei/displayengine/ImageProcessor$3;->add(Ljava/lang/Object;)Z

    const-string v0, "HDRB"

    invoke-virtual {p0, v0}, Lcom/huawei/displayengine/ImageProcessor$3;->add(Ljava/lang/Object;)Z

    const-string v0, "BFace"

    invoke-virtual {p0, v0}, Lcom/huawei/displayengine/ImageProcessor$3;->add(Ljava/lang/Object;)Z

    const-string v0, "Bright"

    invoke-virtual {p0, v0}, Lcom/huawei/displayengine/ImageProcessor$3;->add(Ljava/lang/Object;)Z

    .line 463
    return-void
.end method
