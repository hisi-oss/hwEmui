.class public Lcom/huawei/agp/RenderEngine;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderEngine"

.field private static sPreloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/agp/RenderEngine;->sPreloaded:Z

    .line 29
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->preload()Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static DBG()V
    .locals 3

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VkRenderThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const-string v0, "DEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Current Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 37
    :cond_0
    return-void
.end method

.method public static allocateCommandBuffer()I
    .locals 1

    .line 503
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {}, Lcom/huawei/agp/RenderEngine;->nativeAGPAllocateCommandBuffer()I

    move-result v0

    return v0
.end method

.method public static allocateGPUMemory(I)J
    .locals 2
    .param p0, "size"    # I

    .line 308
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 309
    if-lez p0, :cond_0

    .line 310
    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPAllocateGPUMemory(I)J

    move-result-wide v0

    return-wide v0

    .line 312
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static beginCommandBuffer(I)V
    .locals 0
    .param p0, "handle"    # I

    .line 513
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPCommandBufferBegin(I)V

    .line 514
    return-void
.end method

.method public static beginRenderToTxture(I)V
    .locals 0
    .param p0, "handle"    # I

    .line 493
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPBeginRenderToTxture(I)V

    .line 494
    return-void
.end method

.method public static bindIndexBuffer(IILjava/lang/String;)V
    .locals 0
    .param p0, "bufferHandle"    # I
    .param p1, "offset"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 472
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 473
    invoke-static {p0, p1, p2}, Lcom/huawei/agp/RenderEngine;->nativeAGPBindIndexBuffer(IILjava/lang/String;)V

    .line 474
    return-void
.end method

.method public static bindVertexBuffers([III[I)V
    .locals 0
    .param p0, "bufferHandle"    # [I
    .param p1, "firstBind"    # I
    .param p2, "bindcount"    # I
    .param p3, "offset"    # [I

    .line 467
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 468
    invoke-static {p0, p1, p2, p3}, Lcom/huawei/agp/RenderEngine;->nativeAGPBindVertexBuffers([III[I)V

    .line 469
    return-void
.end method

.method public static createBuffer(Ljava/lang/String;I)I
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 322
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 323
    if-lez p1, :cond_0

    .line 324
    invoke-static {p1, p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPCreateBuffer(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 326
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createGraphicProgram(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)I
    .locals 1
    .param p0, "preCompiled"    # Z
    .param p1, "vert_shader"    # Ljava/lang/String;
    .param p2, "frag_shader"    # Ljava/lang/String;
    .param p3, "descriptorSetLayout"    # Ljava/lang/String;
    .param p4, "pushConstantLayout"    # Ljava/lang/String;
    .param p5, "assetMgr"    # Landroid/content/res/AssetManager;

    .line 89
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 90
    invoke-static/range {p0 .. p5}, Lcom/huawei/agp/RenderEngine;->nativeAGPCreateGraphicProgram(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)I

    move-result v0

    return v0
.end method

.method public static createImage(IILjava/util/Map;)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 292
    .local p2, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 293
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/huawei/agp/RenderEngine;->nativeVKCreateImage(II[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createImageFromFile(IILjava/lang/String;Ljava/util/Map;)I
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 194
    .local p3, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 195
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/huawei/agp/RenderEngine;->nativeVKCreateImageFromFile(IILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createSwapChain(Landroid/view/Surface;)I
    .locals 4
    .param p0, "surface"    # Landroid/view/Surface;

    .line 57
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/huawei/agp/RenderEngine;->nativeAGPCreateSwapChain(Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static createSwapChain(Landroid/view/Surface;Ljava/util/Map;)I
    .locals 3
    .param p0, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 64
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 65
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/huawei/agp/RenderEngine;->nativeAGPCreateSwapChain(Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createTextureArrayFromBitmaps([Landroid/graphics/Bitmap;Ljava/util/Map;)I
    .locals 3
    .param p0, "images"    # [Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 94
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 95
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/huawei/agp/RenderEngine;->nativeCreateTextureArrayFromBitmaps([Landroid/graphics/Bitmap;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static draw(IIII)V
    .locals 0
    .param p0, "vertexCount"    # I
    .param p1, "instanceCount"    # I
    .param p2, "firstVextex"    # I
    .param p3, "firstInstance"    # I

    .line 477
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 478
    invoke-static {p0, p1, p2, p3}, Lcom/huawei/agp/RenderEngine;->nativeAGPDraw(IIII)V

    .line 479
    return-void
.end method

.method public static drawIndexed(IIIII)V
    .locals 0
    .param p0, "indexCount"    # I
    .param p1, "instanceCount"    # I
    .param p2, "firstindex"    # I
    .param p3, "vertexOffset"    # I
    .param p4, "firstInstance"    # I

    .line 482
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 483
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPDrawIndexed(IIIII)V

    .line 484
    return-void
.end method

.method public static drawIndirect(IIII)V
    .locals 0
    .param p0, "bufferHandle"    # I
    .param p1, "offset"    # I
    .param p2, "drawCount"    # I
    .param p3, "stride"    # I

    .line 487
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 488
    invoke-static {p0, p1, p2, p3}, Lcom/huawei/agp/RenderEngine;->nativeAGPDrawIndirect(IIII)V

    .line 489
    return-void
.end method

.method public static endCommandBuffer(I)V
    .locals 0
    .param p0, "handle"    # I

    .line 518
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPFreeCommandBuffer(I)V

    .line 519
    return-void
.end method

.method public static endRenderToTxture(I)V
    .locals 0
    .param p0, "handle"    # I

    .line 498
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPEndRenderToTxture(I)V

    .line 499
    return-void
.end method

.method public static freeCommandBuffer(I)V
    .locals 0
    .param p0, "handle"    # I

    .line 508
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPFreeCommandBuffer(I)V

    .line 509
    return-void
.end method

.method public static freeGPUMemory(J)V
    .locals 2
    .param p0, "dataPtr"    # J

    .line 316
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 317
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 318
    invoke-static {p0, p1}, Lcom/huawei/agp/RenderEngine;->nativeAGPFreeGPUMemory(J)V

    .line 319
    :cond_0
    return-void
.end method

.method public static isSupportAGP()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/huawei/agp/RenderEngine;->sPreloaded:Z

    return v0
.end method

.method public static load2DImage(IJI)I
    .locals 1
    .param p0, "handle"    # I
    .param p1, "dataPtr"    # J
    .param p3, "stride"    # I

    .line 298
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 299
    invoke-static {p0, p1, p2, p3}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoad2DImage(IJI)I

    move-result v0

    return v0
.end method

.method public static loadBufferByte(IILjava/nio/ByteBuffer;II)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # Ljava/nio/ByteBuffer;
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 384
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 385
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferDirectByte(IILjava/nio/ByteBuffer;II)V

    .line 386
    return-void
.end method

.method public static loadBufferByte(II[BII)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 360
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 361
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferByte(II[BII)V

    .line 362
    return-void
.end method

.method public static loadBufferDouble(IILjava/nio/DoubleBuffer;II)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # Ljava/nio/DoubleBuffer;
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 379
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 380
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferDirectDouble(IILjava/nio/DoubleBuffer;II)V

    .line 381
    return-void
.end method

.method public static loadBufferDouble(II[DII)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # [D
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 355
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 356
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferDouble(II[DII)V

    .line 357
    return-void
.end method

.method public static loadBufferFloat(IILjava/nio/FloatBuffer;II)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # Ljava/nio/FloatBuffer;
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 364
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 365
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferDirectFloat(IILjava/nio/FloatBuffer;II)V

    .line 366
    return-void
.end method

.method public static loadBufferFloat(II[FII)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # [F
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 340
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 341
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferFloat(II[FII)V

    .line 342
    return-void
.end method

.method public static loadBufferInt(IILjava/nio/IntBuffer;II)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # Ljava/nio/IntBuffer;
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 369
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 370
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferDirectInt(IILjava/nio/IntBuffer;II)V

    .line 371
    return-void
.end method

.method public static loadBufferInt(II[III)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # [I
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 345
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 346
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferInt(II[III)V

    .line 347
    return-void
.end method

.method public static loadBufferShort(IILjava/nio/ShortBuffer;II)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # Ljava/nio/ShortBuffer;
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 374
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 375
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferDirectShort(IILjava/nio/ShortBuffer;II)V

    .line 376
    return-void
.end method

.method public static loadBufferShort(II[SII)V
    .locals 0
    .param p0, "handle"    # I
    .param p1, "offset"    # I
    .param p2, "data"    # [S
    .param p3, "start"    # I
    .param p4, "count"    # I

    .line 350
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 351
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPLoadBufferShort(II[SII)V

    .line 352
    return-void
.end method

.method public static mapBuffer(I)J
    .locals 2
    .param p0, "handle"    # I

    .line 331
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPMapBuffer(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeAGPAllocateCommandBuffer()I
.end method

.method private static native nativeAGPAllocateGPUMemory(I)J
.end method

.method private static native nativeAGPBeginRenderToTxture(I)V
.end method

.method private static native nativeAGPBindIndexBuffer(IILjava/lang/String;)V
.end method

.method private static native nativeAGPBindVertexBuffers([III[I)V
.end method

.method private static native nativeAGPCommandBufferBegin(I)V
.end method

.method private static native nativeAGPCreateBuffer(ILjava/lang/String;)I
.end method

.method private static native nativeAGPCreateGraphicProgram(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;)I
.end method

.method private static native nativeAGPCreateSwapChain(Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native nativeAGPDraw(IIII)V
.end method

.method private static native nativeAGPDrawIndexed(IIIII)V
.end method

.method private static native nativeAGPDrawIndirect(IIII)V
.end method

.method private static native nativeAGPEndRenderToTxture(I)V
.end method

.method private static native nativeAGPFreeCommandBuffer(I)V
.end method

.method private static native nativeAGPFreeGPUMemory(J)V
.end method

.method private static native nativeAGPLoad2DImage(IJI)I
.end method

.method private static native nativeAGPLoadBufferByte(II[BII)V
.end method

.method private static native nativeAGPLoadBufferDirectByte(IILjava/nio/ByteBuffer;II)V
.end method

.method private static native nativeAGPLoadBufferDirectDouble(IILjava/nio/DoubleBuffer;II)V
.end method

.method private static native nativeAGPLoadBufferDirectFloat(IILjava/nio/FloatBuffer;II)V
.end method

.method private static native nativeAGPLoadBufferDirectInt(IILjava/nio/IntBuffer;II)V
.end method

.method private static native nativeAGPLoadBufferDirectShort(IILjava/nio/ShortBuffer;II)V
.end method

.method private static native nativeAGPLoadBufferDouble(II[DII)V
.end method

.method private static native nativeAGPLoadBufferFloat(II[FII)V
.end method

.method private static native nativeAGPLoadBufferInt(II[III)V
.end method

.method private static native nativeAGPLoadBufferShort(II[SII)V
.end method

.method private static native nativeAGPMapBuffer(I)J
.end method

.method private static native nativeAGPProvisionPipeline(I[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native nativeAGPReleaseHandle(I)V
.end method

.method private static native nativeAGPReleaseHandles()V
.end method

.method private static native nativeAGPReleaseSwapChain()I
.end method

.method private static native nativeAGPSetWindowColor(IIII)V
.end method

.method private static native nativeAGPSwap()V
.end method

.method private static native nativeAGPUnmapBuffer(I)V
.end method

.method private static native nativeAGPUpdateUniform_Buffer(IIIIIII)I
.end method

.method private static native nativeAGPUpdateUniform_Image(IIIII)I
.end method

.method private static native nativeAGPUseProgram(I)V
.end method

.method private static native nativeAGPWindowResized(Landroid/view/Surface;)V
.end method

.method private static native nativeCreateTextureArrayFromBitmaps([Landroid/graphics/Bitmap;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native nativeVKCreateImage(II[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native nativeVKCreateImageFromFile(IILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public static preload()Z
    .locals 3

    .line 39
    sget-boolean v0, Lcom/huawei/agp/RenderEngine;->sPreloaded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 40
    return v1

    .line 42
    :cond_0
    const-string v0, "RenderEngine"

    const-string v2, "starting preload"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    const-string v0, "agp10"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    sput-boolean v1, Lcom/huawei/agp/RenderEngine;->sPreloaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/agp/RenderEngine;->sPreloaded:Z

    .line 50
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    sget-boolean v0, Lcom/huawei/agp/RenderEngine;->sPreloaded:Z

    return v0
.end method

.method public static provisionPipeline(ILjava/util/Map;)V
    .locals 3
    .param p0, "programHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 447
    .local p1, "pipelineConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 448
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/huawei/agp/RenderEngine;->nativeAGPProvisionPipeline(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public static releaseHandle(I)V
    .locals 0
    .param p0, "handle"    # I

    .line 304
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPReleaseHandle(I)V

    .line 305
    return-void
.end method

.method public static releaseHandles()V
    .locals 0

    .line 73
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {}, Lcom/huawei/agp/RenderEngine;->nativeAGPReleaseHandles()V

    .line 74
    return-void
.end method

.method public static releaseSwapChain()V
    .locals 0

    .line 68
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 69
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->nativeAGPReleaseSwapChain()I

    .line 70
    return-void
.end method

.method public static setActiveShaderProgram(I)V
    .locals 0
    .param p0, "programHandle"    # I

    .line 452
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 453
    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPUseProgram(I)V

    .line 454
    return-void
.end method

.method public static setWindowColor(IIII)V
    .locals 0
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "alpha"    # I

    .line 522
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 523
    invoke-static {p0, p1, p2, p3}, Lcom/huawei/agp/RenderEngine;->nativeAGPSetWindowColor(IIII)V

    .line 524
    return-void
.end method

.method public static swap()V
    .locals 0

    .line 78
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 79
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->nativeAGPSwap()V

    .line 80
    return-void
.end method

.method public static unMapBuffer(I)V
    .locals 0
    .param p0, "handle"    # I

    .line 336
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPUnmapBuffer(I)V

    .line 337
    return-void
.end method

.method public static updateUniformBuffer(IIIIIII)V
    .locals 0
    .param p0, "programHandle"    # I
    .param p1, "shaderType"    # I
    .param p2, "setId"    # I
    .param p3, "bind"    # I
    .param p4, "bufferHandle"    # I
    .param p5, "offset"    # I
    .param p6, "range"    # I

    .line 457
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 458
    invoke-static/range {p0 .. p6}, Lcom/huawei/agp/RenderEngine;->nativeAGPUpdateUniform_Buffer(IIIIIII)I

    .line 459
    return-void
.end method

.method public static updateUniformImage(IIIII)V
    .locals 0
    .param p0, "programHandle"    # I
    .param p1, "shaderType"    # I
    .param p2, "setId"    # I
    .param p3, "binding"    # I
    .param p4, "imageHandle"    # I

    .line 462
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 463
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/agp/RenderEngine;->nativeAGPUpdateUniform_Image(IIIII)I

    .line 464
    return-void
.end method

.method public static windowResized(Landroid/view/Surface;)V
    .locals 0
    .param p0, "surface"    # Landroid/view/Surface;

    .line 84
    invoke-static {}, Lcom/huawei/agp/RenderEngine;->DBG()V

    .line 85
    invoke-static {p0}, Lcom/huawei/agp/RenderEngine;->nativeAGPWindowResized(Landroid/view/Surface;)V

    .line 86
    return-void
.end method
