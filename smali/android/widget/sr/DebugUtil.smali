.class public Landroid/widget/sr/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field private static BITMAP_PIXEL_COLOR:I = 0x0

.field private static final DEBUG_SWITCHER:Z = false

.field private static INFO_COLOR:I

.field private static PAINT_STROKE_WIDTH:I

.field private static TEXT_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/16 v0, 0xa

    sput v0, Landroid/widget/sr/DebugUtil;->PAINT_STROKE_WIDTH:I

    .line 16
    const/16 v0, 0x32

    sput v0, Landroid/widget/sr/DebugUtil;->TEXT_SIZE:I

    .line 17
    const/16 v0, -0x5b00

    sput v0, Landroid/widget/sr/DebugUtil;->BITMAP_PIXEL_COLOR:I

    .line 18
    const/high16 v0, -0x10000

    sput v0, Landroid/widget/sr/DebugUtil;->INFO_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugDone(Landroid/graphics/Bitmap;FJZ)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "startTime"    # J
    .param p4, "success"    # Z

    .line 74
    return-void
.end method

.method public static debugPixelFail(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 81
    return-void
.end method

.method public static debugTimeout(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "started"    # Z

    .line 65
    return-void
.end method

.method public static drawBitmapPixel(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 45
    return-void
.end method

.method public static drawCircle(Landroid/graphics/Bitmap;IF)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I
    .param p2, "r"    # F

    .line 31
    return-void
.end method

.method public static drawText(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "info"    # Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 49
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .local v1, "paint":Landroid/graphics/Paint;
    sget v2, Landroid/widget/sr/DebugUtil;->INFO_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    sget v2, Landroid/widget/sr/DebugUtil;->PAINT_STROKE_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    sget v2, Landroid/widget/sr/DebugUtil;->TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42a00000    # 80.0f

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 54
    return-void
.end method
