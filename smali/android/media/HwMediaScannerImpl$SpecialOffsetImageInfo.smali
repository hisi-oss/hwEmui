.class Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;
.super Landroid/media/HwMediaScannerImpl$CustomImageInfo;
.source "HwMediaScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HwMediaScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialOffsetImageInfo"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "customImageTag"    # Ljava/lang/String;
    .param p2, "tagLength"    # I
    .param p3, "tagCharsetName"    # Ljava/lang/String;
    .param p4, "databaseColumn"    # Ljava/lang/String;
    .param p5, "databaseType"    # I

    .line 1391
    invoke-direct/range {p0 .. p5}, Landroid/media/HwMediaScannerImpl$CustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1392
    return-void
.end method


# virtual methods
.method protected checkTag([BLandroid/content/ContentValues;)Z
    .locals 8
    .param p1, "fileEndBytes"    # [B
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1401
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    iget v2, p0, Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;->tagLength:I

    if-ge v1, v2, :cond_0

    goto/16 :goto_1

    .line 1405
    :cond_0
    array-length v1, p1

    iget v2, p0, Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;->tagLength:I

    sub-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1408
    .local v1, "buffer":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;->tagCharsetName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1409
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1410
    iget-object v3, p0, Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;->customImageTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1411
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1413
    .local v3, "split":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 1414
    return v0

    .line 1416
    :cond_1
    iget-object v4, p0, Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;->databaseColumn:Ljava/lang/String;

    iget v5, p0, Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;->databaseType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1417
    const-string v4, "special_file_offset"

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1418
    const-string v4, "HwMediaScannerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find a live tag. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    return v5

    .line 1423
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1424
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "fail to Long.valueOf"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1421
    :catch_1
    move-exception v2

    .line 1422
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, "HwMediaScannerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail tddo check custom image tag, throws UnsupportedEncodingException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/media/HwMediaScannerImpl$SpecialOffsetImageInfo;->databaseType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    nop

    .line 1426
    :goto_0
    return v0

    .line 1402
    .end local v1    # "buffer":[B
    :cond_3
    :goto_1
    return v0
.end method
