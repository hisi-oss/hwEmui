.class public Landroid/widget/sr/SRUtils;
.super Ljava/lang/Object;
.source "SRUtils.java"


# static fields
.field private static final BLACK_LIST:[Ljava/lang/String;

.field private static final SR_MAX_LONGSIDE:I = 0x320

.field private static final SR_MAX_SHORTSIDE:I = 0x258

.field private static final SR_MIN_FULLSCREEN_FACTOR:F = 0.95f

.field private static final SR_MIN_PIXELCOUNT:I = 0x15f90

.field private static final SR_MIN_SHORTSIDE:I = 0x96

.field private static final SR_TAG:Ljava/lang/String; = "SuperResolution"

.field private static final WHITE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    const-string v0, "com.tencent.mm"

    const-string v1, "com.ss.android.article.news"

    const-string v2, "jp.naver.line.android"

    const-string v3, "com.instagram.android"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/sr/SRUtils;->WHITE_LIST:[Ljava/lang/String;

    .line 66
    const-string v0, "com.tencent.mm.ui.chatting.ChattingImageBGView"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/sr/SRUtils;->BLACK_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIsFullScreen(Landroid/content/Context;II)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 93
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 94
    :cond_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 95
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 96
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 97
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 98
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 99
    .local v4, "screenWidth":I
    iget v5, v3, Landroid/graphics/Point;->y:I

    .line 101
    .local v5, "screenHeight":I
    move v6, v4

    .line 102
    .local v6, "maxWidth":I
    int-to-float v7, v4

    const v8, 0x3f733333    # 0.95f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 103
    .local v7, "minWidth":I
    move v9, v5

    .line 104
    .local v9, "maxHeight":I
    int-to-float v10, v5

    mul-float/2addr v10, v8

    float-to-int v8, v10

    .line 106
    .local v8, "minHeight":I
    if-gt v7, p1, :cond_1

    if-ge v6, p1, :cond_2

    :cond_1
    if-gt v8, p2, :cond_3

    if-lt v9, p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    nop

    :cond_3
    return v0
.end method

.method public static checkIsInSRBlackList(Ljava/lang/Object;)Z
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "className":Ljava/lang/String;
    sget-object v2, Landroid/widget/sr/SRUtils;->BLACK_LIST:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 79
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    const/4 v0, 0x1

    return v0

    .line 78
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    :cond_2
    return v0
.end method

.method public static checkIsInSRWhiteList(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "packageName":Ljava/lang/String;
    sget-object v2, Landroid/widget/sr/SRUtils;->WHITE_LIST:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 55
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    const/4 v0, 0x1

    return v0

    .line 54
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59
    :cond_2
    return v0
.end method

.method public static checkMatchResolution(Landroid/graphics/drawable/Drawable;)Z
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 116
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 118
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 119
    .local v2, "height":I
    if-le v1, v2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 120
    .local v3, "longSide":I
    :goto_0
    if-le v1, v2, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    .line 122
    .local v4, "shortSide":I
    :goto_1
    const/16 v5, 0x320

    if-gt v3, v5, :cond_3

    const/16 v5, 0x96

    if-lt v4, v5, :cond_3

    const/16 v5, 0x258

    if-gt v4, v5, :cond_3

    mul-int v5, v1, v2

    const v6, 0x15f90

    if-lt v5, v6, :cond_3

    const/4 v0, 0x1

    nop

    :cond_3
    return v0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 134
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 135
    return-object v0

    .line 138
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 140
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 141
    return-object v0

    .line 143
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 147
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 148
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 149
    .local v2, "h":I
    if-lez v1, :cond_4

    if-gtz v2, :cond_3

    goto :goto_0

    .line 152
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 157
    .local v4, "rect":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 158
    .local v5, "oldLeft":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 159
    .local v6, "oldTop":I
    iget v7, v4, Landroid/graphics/Rect;->right:I

    .line 160
    .local v7, "oldRight":I
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 163
    .local v8, "oldBottm":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v9, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 150
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "rect":Landroid/graphics/Rect;
    .end local v5    # "oldLeft":I
    .end local v6    # "oldTop":I
    .end local v7    # "oldRight":I
    .end local v8    # "oldBottm":I
    :cond_4
    :goto_0
    return-object v0
.end method
