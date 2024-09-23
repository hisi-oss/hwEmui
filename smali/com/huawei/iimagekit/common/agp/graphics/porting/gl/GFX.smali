.class public Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;
.super Ljava/lang/Object;
.source "GFX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;,
        Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;,
        Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;,
        Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;,
        Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;,
        Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;,
        Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;,
        Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;
    }
.end annotation


# static fields
.field public static final COLOR_BUFFER_BIT:I = 0x4000

.field public static final FLOAT_SIZE_BYTES:I = 0x4

.field public static final PRIMARY_FRAMEBUFFER_ID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native beginCommandBuffer(I)V
.end method

.method public static native bindCommandBuffer(I)V
.end method

.method public static native bindExternalTexture(I)V
.end method

.method public static native bindFramebuffer(I)V
.end method

.method public static native bindFramebufferToTexture(II)V
.end method

.method private static native bindFramebufferToTexture(III)V
.end method

.method public static bindFramebufferToTexture(IILcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;)V
    .locals 1
    .param p0, "fbId"    # I
    .param p1, "texId"    # I
    .param p2, "target"    # Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;

    .line 296
    iget v0, p2, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FramebufferTarget;->v:I

    invoke-static {p0, p1, v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->bindFramebufferToTexture(III)V

    .line 297
    return-void
.end method

.method public static native bindIndexBuffer(IILjava/nio/FloatBuffer;III)V
.end method

.method public static native bindProgram(I)V
.end method

.method public static native bindShaderStorageBuffer(IILjava/nio/FloatBuffer;III)V
.end method

.method public static native bindTexture(I)V
.end method

.method public static native bindTexture(II)V
.end method

.method public static native bindUniformBuffer(II)V
.end method

.method public static native bindUniformBuffer(IILjava/nio/FloatBuffer;III)V
.end method

.method public static native bindVertexBuffer(IILjava/nio/FloatBuffer;I)V
.end method

.method public static native bindVertexBuffer(IILjava/nio/FloatBuffer;II)V
.end method

.method public static native bindVertexBuffer(ILjava/nio/FloatBuffer;I)V
.end method

.method public static native clear(I)V
.end method

.method public static native clearColor(FFFF)V
.end method

.method public static native destroyBuffer(I)V
.end method

.method public static native destroyCommandBuffer(I)V
.end method

.method public static native destroyFramebuffer(I)V
.end method

.method public static native destroyProgram(I)V
.end method

.method public static native destroyTexture(I)V
.end method

.method public static native destroyUniformBuffer(I)V
.end method

.method public static native disable(Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;)V
.end method

.method public static native drawArrays(Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$PrimitiveType;II)V
.end method

.method public static native drawBegin()V
.end method

.method public static native drawBegin(III)V
.end method

.method public static native drawEnd()V
.end method

.method public static native enable(Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$State;)V
.end method

.method public static native endCommandBuffer(I)V
.end method

.method public static native getCurrentFramebuffer()I
.end method

.method public static native getExternalTextureSize(I[I)V
.end method

.method public static getTextureSize(I[I)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "size"    # [I

    .line 233
    const/16 v0, 0xde1

    invoke-static {p0, p1, v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->getTextureSize(I[II)V

    .line 234
    return-void
.end method

.method public static native getTextureSize(I[II)V
.end method

.method public static native getWindowHeight()I
.end method

.method public static native getWindowWidth()I
.end method

.method public static native initBuffer(IILjava/nio/Buffer;I)I
.end method

.method private static native initCommandBuffer(I)I
.end method

.method public static initCommandBuffer(Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;)I
    .locals 1
    .param p0, "level"    # Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;

    .line 158
    iget v0, p0, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CommandBufferLevel;->v:I

    invoke-static {v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->initCommandBuffer(I)I

    move-result v0

    return v0
.end method

.method public static native initExternalTexture()I
.end method

.method public static native initExternalTexture(II)I
.end method

.method public static initFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 1
    .param p0, "data"    # [F

    .line 338
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->initFloatBuffer([FI)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static initFloatBuffer([FI)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "data"    # [F
    .param p1, "offset"    # I

    .line 350
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 351
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 352
    .local v0, "buffer":Ljava/nio/FloatBuffer;
    invoke-static {v0, p0, p1}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->updateFloatBuffer(Ljava/nio/FloatBuffer;[FI)V

    .line 353
    return-object v0
.end method

.method public static native initFramebuffer()I
.end method

.method public static native initFramebuffer(I)I
.end method

.method public static native initProgram(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native initTexture(II)I
.end method

.method public static native initTexture(IIIII)I
.end method

.method public static initTexture(IIILjava/nio/FloatBuffer;I)I
    .locals 1
    .param p0, "format"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # Ljava/nio/FloatBuffer;
    .param p4, "size"    # I

    .line 192
    const-string v0, "TODO"

    invoke-static {v0}, Lcom/huawei/iimagekit/blur/util/DebugUtil;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static native initTextureArray(IIIILjava/nio/FloatBuffer;I)I
.end method

.method public static native initUniformBuffer(I)I
.end method

.method public static native initUniformBuffer(ILjava/nio/Buffer;)I
.end method

.method public static native initUniformBuffer(ILjava/nio/Buffer;I)I
.end method

.method public static native setBlendColor(FFFF)V
.end method

.method public static native setBlendFunc(Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$BlendFactor;)V
.end method

.method public static native setColorMask(ZZZZ)V
.end method

.method public static native setDepthMask(Z)V
.end method

.method public static native setStencilFunc(Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$CompareOp;II)V
.end method

.method public static native setStencilMask(I)V
.end method

.method public static native setStencilOp(Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$StencilOp;)V
.end method

.method public static setTextureFilter(ILcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "minFilter"    # Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;
    .param p2, "magFilter"    # Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;

    .line 256
    iget v0, p1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->v:I

    iget v1, p2, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->v:I

    invoke-static {p0, v0, v1}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->setTextureFilter1(III)V

    .line 257
    return-void
.end method

.method public static setTextureFilter(ILcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;I)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "minFilter"    # Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;
    .param p2, "magFilter"    # Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;
    .param p3, "target"    # I

    .line 270
    iget v0, p1, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->v:I

    iget v1, p2, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX$FilterType;->v:I

    invoke-static {p0, v0, v1, p3}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->setTextureFilter2(IIII)V

    .line 271
    return-void
.end method

.method private static native setTextureFilter1(III)V
.end method

.method private static native setTextureFilter2(IIII)V
.end method

.method public static native setTextureWrap(III)V
.end method

.method public static native setViewport(II)V
.end method

.method public static native submitCommandBuffer(I)V
.end method

.method public static native updateBuffer(ILjava/nio/Buffer;III)V
.end method

.method public static native updateExternalTexture(IJ)V
.end method

.method public static updateFloatBuffer(Ljava/nio/FloatBuffer;[F)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/FloatBuffer;
    .param p1, "data"    # [F

    .line 357
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huawei/iimagekit/common/agp/graphics/porting/gl/GFX;->updateFloatBuffer(Ljava/nio/FloatBuffer;[FI)V

    .line 358
    return-void
.end method

.method public static updateFloatBuffer(Ljava/nio/FloatBuffer;[FI)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/FloatBuffer;
    .param p1, "data"    # [F
    .param p2, "offset"    # I

    .line 361
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 363
    return-void
.end method

.method public static native updateIndexBuffer(ILjava/nio/FloatBuffer;II)V
.end method

.method public static native updateShaderStorageBuffer(ILjava/nio/FloatBuffer;II)V
.end method

.method public static native updateTexture(ILjava/nio/FloatBuffer;I)V
.end method

.method public static native updateTexture(ILjava/nio/FloatBuffer;IIIII)V
.end method

.method public static native updateUniformBuffer(ILjava/nio/FloatBuffer;II)V
.end method

.method public static native updateVertexBuffer(ILjava/nio/FloatBuffer;II)V
.end method
