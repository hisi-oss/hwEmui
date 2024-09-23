.class public Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorspaceParam"
.end annotation


# static fields
.field protected static final PARAM_IN_BITMAP:Ljava/lang/String; = "inBitmap"

.field protected static final PARAM_OUT_BITMAP:Ljava/lang/String; = "outBitmap"


# instance fields
.field public mInBitmap:Landroid/graphics/Bitmap;

.field public mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

.field public mOutBitmap:Landroid/graphics/Bitmap;

.field public mOutColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;)V
    .locals 0
    .param p1, "inBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "inColorspace"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    .param p4, "outColorspace"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    .line 255
    iput-object p2, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 256
    iput-object p3, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 257
    iput-object p4, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const-string v0, "inBitmap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    .line 262
    const-string v0, "outBitmap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 264
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->isParamInvalid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->getEnum(Landroid/graphics/ColorSpace;)Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 269
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    if-nez v0, :cond_0

    .line 270
    sget-object v0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->SRGB:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 271
    const-string v0, "DE J ImageProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorspaceParam() error! unsupport inColorspace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", treat as SRGB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->needNormallizeColorSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-static {}, Lcom/huawei/displayengine/ImageProcessor;->access$000()Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoStrategy;->getNormallizeColorGamut()Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    :goto_0
    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 276
    return-void

    .line 265
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ColorspaceParam input param invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;)V
    .locals 2
    .param p2, "inColorspace"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    .param p3, "outColorspace"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;",
            "Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;",
            ")V"
        }
    .end annotation

    .line 278
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const-string v0, "inBitmap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    .line 280
    const-string v0, "outBitmap"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 281
    iput-object p2, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 282
    iput-object p3, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 284
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->isParamInvalid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ColorspaceParam input param invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isParamInvalid()Z
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 291
    const-string v0, "DE J ImageProcessor"

    const-string v2, "isParamInvalid() error! mInBitmap is null"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 295
    .local v0, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_1

    .line 297
    const-string v2, "DE J ImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isParamInvalid() error! unsupported mInBitmap format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v1

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 301
    const-string v2, "DE J ImageProcessor"

    const-string v3, "isParamInvalid() error! mOutBitmap is null"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v1

    .line 304
    :cond_2
    iget-object v2, p0, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 305
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_3

    .line 307
    const-string v2, "DE J ImageProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isParamInvalid() error! unsupported mOutBitmap format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v1

    .line 310
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
