.class Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/ImageProcessorAlgoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformColorspaceAlgoParam"
.end annotation


# instance fields
.field private final mInBitmap:Landroid/graphics/Bitmap;

.field private final mInColorspace:I

.field private final mOutBitmap:Landroid/graphics/Bitmap;

.field private final mOutColorspace:I


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V
    .locals 1
    .param p1, "colorspaceParam"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;->mInBitmap:Landroid/graphics/Bitmap;

    .line 172
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;->mOutBitmap:Landroid/graphics/Bitmap;

    .line 173
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;->getAlgoColorspaceId(Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;)I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;->mInColorspace:I

    .line 174
    iget-object v0, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;->getAlgoColorspaceId(Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;)I

    move-result v0

    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;->mOutColorspace:I

    .line 175
    return-void
.end method

.method private getAlgoColorspaceId(Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;)I
    .locals 3
    .param p1, "colorspaceType"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    .line 178
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 179
    return v0

    .line 181
    :cond_0
    sget-object v1, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$1;->$SwitchMap$com$huawei$displayengine$ImageProcessor$ColorspaceType:[I

    invoke-virtual {p1}, Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 191
    return v0

    .line 189
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 187
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 185
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 183
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
