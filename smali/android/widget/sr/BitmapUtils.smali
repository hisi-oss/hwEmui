.class public Landroid/widget/sr/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final ILLEGAL_PTR:J = 0x0L

.field private static final MAX_LEN0:I = 0x3c0

.field private static final MAX_LEN1:I = 0x500

.field private static final MIN_SIZE:I = 0x96

.field public static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAshBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 23
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 24
    return-object v0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    .local v1, "ashBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 30
    .local v2, "bitmapClsName":Ljava/lang/Class;
    const-string v3, "createAshmemBitmap"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 31
    .local v3, "ashmemMethod":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 32
    .end local v1    # "ashBitmap":Landroid/graphics/Bitmap;
    .local v0, "ashBitmap":Landroid/graphics/Bitmap;
    return-object v0

    .line 39
    .end local v0    # "ashBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "bitmapClsName":Ljava/lang/Class;
    .end local v3    # "ashmemMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "BitmapUtils"

    const-string v3, "BitmapUtils.createAshBitmap InvocationTargetException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 37
    :catch_1
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "BitmapUtils"

    const-string v3, "BitmapUtils.createAshBitmap IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 35
    :catch_2
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BitmapUtils"

    const-string v3, "BitmapUtils.createAshBitmap IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 33
    :catch_3
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "BitmapUtils"

    const-string v3, "BitmapUtils.createAshBitmap NoSuchMethodException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 42
    :goto_1
    return-object v0
.end method

.method public static getAshBitmapPtr(Landroid/graphics/Bitmap;)J
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 52
    const-wide/16 v0, 0x0

    .line 53
    .local v0, "ashBitmapPtr":J
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 54
    .local v2, "bitmapClsName":Ljava/lang/Class;
    const-string v3, "getNativeInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 55
    .local v3, "ashmemMethod":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 56
    return-wide v0

    .line 63
    .end local v0    # "ashBitmapPtr":J
    .end local v2    # "bitmapClsName":Ljava/lang/Class;
    .end local v3    # "ashmemMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "BitmapUtils"

    const-string v2, "BitmapUtils.createAshBitmap InvocationTargetException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "BitmapUtils"

    const-string v2, "BitmapUtils.createAshBitmap IllegalAccessException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 59
    :catch_2
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BitmapUtils"

    const-string v2, "BitmapUtils.createAshBitmap IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 57
    :catch_3
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "BitmapUtils"

    const-string v2, "BitmapUtils.createAshBitmap NoSuchMethodException"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 67
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static isBitmapIllegalSize(Landroid/graphics/Bitmap;)I
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 76
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 80
    .local v1, "minLen":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 81
    .local v2, "maxLen":I
    if-le v1, v2, :cond_1

    .line 82
    move v3, v1

    .line 83
    .local v3, "tmp":I
    move v1, v2

    .line 84
    move v2, v3

    .line 86
    .end local v3    # "tmp":I
    :cond_1
    const/16 v3, 0x96

    if-lt v1, v3, :cond_3

    const/16 v3, 0x3c0

    if-gt v1, v3, :cond_3

    const/16 v3, 0x500

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_3
    :goto_0
    return v0
.end method
