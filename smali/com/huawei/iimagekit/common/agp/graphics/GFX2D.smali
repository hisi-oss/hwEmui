.class public Lcom/huawei/iimagekit/common/agp/graphics/GFX2D;
.super Ljava/lang/Object;
.source "GFX2D.java"


# static fields
.field public static final FLIP_Y:I = 0x2

.field public static final SRC_TEXTURE_EXTERNAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blit(II)V
    .locals 1
    .param p0, "srcTextureID"    # I
    .param p1, "dstTextureID"    # I

    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huawei/iimagekit/common/agp/graphics/GFX2D;->blit(III)V

    .line 45
    return-void
.end method

.method public static native blit(III)V
.end method

.method public static blit(IIIIIIIIII)V
    .locals 11
    .param p0, "srcTextureID"    # I
    .param p1, "srcX"    # I
    .param p2, "srcY"    # I
    .param p3, "srcWidth"    # I
    .param p4, "srcHeight"    # I
    .param p5, "dstTextureID"    # I
    .param p6, "dstX"    # I
    .param p7, "dstY"    # I
    .param p8, "dstWidth"    # I
    .param p9, "dstHeight"    # I

    .line 38
    const/4 v10, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/huawei/iimagekit/common/agp/graphics/GFX2D;->blit(IIIIIIIIIII)V

    .line 39
    return-void
.end method

.method public static native blit(IIIIIIIIIII)V
.end method

.method public static native destroy()V
.end method

.method public static native drawColor(I)V
.end method

.method public static native drawRect(IIIII)V
.end method

.method public static native drawRect(IIIIII)V
.end method

.method public static native drawTexture(I)V
.end method

.method public static native drawTexture(III)V
.end method

.method public static native drawTexture(IIIII)V
.end method

.method public static native drawTextureColorBalance(IFF)V
.end method

.method public static native init()V
.end method
