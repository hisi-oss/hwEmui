.class public Lcom/huawei/iimagekit/shadow/ShadowUtil;
.super Ljava/lang/Object;
.source "ShadowUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processAlphaChannelAfter([I)V
    .locals 9
    .param p0, "pixels"    # [I

    .line 25
    const/4 v0, 0x0

    .local v0, "pi":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 26
    aget v1, p0, v0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    .line 27
    .local v1, "pa":F
    aget v2, p0, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    .line 28
    .local v2, "pr":F
    aget v3, p0, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    .line 29
    .local v3, "pg":F
    aget v4, p0, v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    .line 31
    .local v4, "pb":F
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v6, v2, v5

    div-float/2addr v6, v1

    .line 32
    .end local v2    # "pr":F
    .local v6, "pr":F
    mul-float v2, v3, v5

    div-float/2addr v2, v1

    .line 33
    .end local v3    # "pg":F
    .local v2, "pg":F
    mul-float/2addr v5, v4

    div-float/2addr v5, v1

    .line 35
    .end local v4    # "pb":F
    .local v5, "pb":F
    float-to-int v3, v1

    float-to-int v4, v6

    float-to-int v7, v2

    float-to-int v8, v5

    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, p0, v0

    .line 25
    .end local v1    # "pa":F
    .end local v2    # "pg":F
    .end local v5    # "pb":F
    .end local v6    # "pr":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "pi":I
    :cond_0
    return-void
.end method

.method public static processAlphaChannelBefore([I)V
    .locals 9
    .param p0, "pixels"    # [I

    .line 10
    const/4 v0, 0x0

    .local v0, "pi":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 11
    aget v1, p0, v0

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    .line 12
    .local v1, "pa":F
    aget v2, p0, v0

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    .line 13
    .local v2, "pr":F
    aget v3, p0, v0

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    .line 14
    .local v3, "pg":F
    aget v4, p0, v0

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    .line 16
    .local v4, "pb":F
    mul-float v5, v2, v1

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    .line 17
    .end local v2    # "pr":F
    .local v5, "pr":F
    mul-float v2, v3, v1

    div-float/2addr v2, v6

    .line 18
    .end local v3    # "pg":F
    .local v2, "pg":F
    mul-float v3, v4, v1

    div-float/2addr v3, v6

    .line 20
    .end local v4    # "pb":F
    .local v3, "pb":F
    float-to-int v4, v1

    float-to-int v6, v5

    float-to-int v7, v2

    float-to-int v8, v3

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, p0, v0

    .line 10
    .end local v1    # "pa":F
    .end local v2    # "pg":F
    .end local v3    # "pb":F
    .end local v5    # "pr":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "pi":I
    :cond_0
    return-void
.end method
