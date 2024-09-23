.class Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;
.super Landroid/media/HwMediaScannerImpl$CustomImageInfo;
.source "HwMediaScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HwMediaScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HwVoiceOrRectifyImageInfo"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "customImageTag"    # Ljava/lang/String;
    .param p2, "tagLength"    # I
    .param p3, "tagCharsetName"    # Ljava/lang/String;
    .param p4, "databaseColumn"    # Ljava/lang/String;

    .line 1333
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/HwMediaScannerImpl$CustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1334
    return-void
.end method


# virtual methods
.method protected checkTag([BLandroid/content/ContentValues;)Z
    .locals 7
    .param p1, "fileEndBytes"    # [B
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1343
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    iget v2, p0, Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;->tagLength:I

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 1347
    :cond_0
    array-length v1, p1

    iget v2, p0, Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;->tagLength:I

    sub-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1350
    .local v1, "buffer":[B
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;->tagCharsetName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1351
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;->customImageTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1352
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1354
    .local v3, "split":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 1355
    return v0

    .line 1358
    :cond_1
    iget-object v4, p0, Landroid/media/HwMediaScannerImpl$HwVoiceOrRectifyImageInfo;->databaseColumn:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    return v5

    .line 1365
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1366
    .local v2, "ex":Ljava/nio/charset/UnsupportedCharsetException;
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "fail to check custom image tag, throws UnsupportedCharsetException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Ljava/nio/charset/UnsupportedCharsetException;
    goto :goto_1

    .line 1363
    :catch_1
    move-exception v2

    .line 1364
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "fail to check custom image tag, throws NumberFormatException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 1361
    :catch_2
    move-exception v2

    .line 1362
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, "HwMediaScannerImpl"

    const-string v4, "fail to check custom image tag, throws UnsupportedEncodingException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_0
    nop

    .line 1368
    :goto_1
    return v0

    .line 1344
    .end local v1    # "buffer":[B
    :cond_3
    :goto_2
    return v0
.end method
