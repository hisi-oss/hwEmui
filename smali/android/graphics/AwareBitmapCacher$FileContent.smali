.class public Landroid/graphics/AwareBitmapCacher$FileContent;
.super Ljava/lang/Object;
.source "AwareBitmapCacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/AwareBitmapCacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileContent"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/BufferedReader;)V
    .locals 3
    .param p0, "br"    # Ljava/io/BufferedReader;

    .line 422
    if-eqz p0, :cond_0

    .line 423
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AwareBitmapCacher"

    const-string v2, "close exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 427
    :cond_0
    :goto_0
    nop

    .line 428
    :goto_1
    return-void
.end method

.method public static close(Ljava/io/FileInputStream;)V
    .locals 3
    .param p0, "fis"    # Ljava/io/FileInputStream;

    .line 442
    if-eqz p0, :cond_0

    .line 443
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AwareBitmapCacher"

    const-string v2, "close exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 447
    :cond_0
    :goto_0
    nop

    .line 448
    :goto_1
    return-void
.end method

.method public static close(Ljava/io/InputStreamReader;)V
    .locals 3
    .param p0, "isr"    # Ljava/io/InputStreamReader;

    .line 432
    if-eqz p0, :cond_0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AwareBitmapCacher"

    const-string v2, "close exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 437
    :cond_0
    :goto_0
    nop

    .line 438
    :goto_1
    return-void
.end method
