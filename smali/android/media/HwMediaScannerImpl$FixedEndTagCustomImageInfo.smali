.class Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;
.super Landroid/media/HwMediaScannerImpl$CustomImageInfo;
.source "HwMediaScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HwMediaScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedEndTagCustomImageInfo"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "customImageTag"    # Ljava/lang/String;
    .param p2, "tagLength"    # I
    .param p3, "tagCharsetName"    # Ljava/lang/String;
    .param p4, "databaseColumn"    # Ljava/lang/String;
    .param p5, "databaseType"    # I

    .line 1293
    invoke-direct/range {p0 .. p5}, Landroid/media/HwMediaScannerImpl$CustomImageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1294
    return-void
.end method


# virtual methods
.method protected checkTag([BLandroid/content/ContentValues;)Z
    .locals 4
    .param p1, "fileEndBytes"    # [B
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1302
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    array-length v1, p1

    iget v2, p0, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;->tagLength:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    array-length v1, p1

    iget v2, p0, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;->tagLength:I

    sub-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1307
    .local v1, "buffer":[B
    iget-object v2, p0, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;->customImageTag:Ljava/lang/String;

    iget-object v3, p0, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;->tagCharsetName:Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1308
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;->databaseColumn:Ljava/lang/String;

    iget v2, p0, Landroid/media/HwMediaScannerImpl$FixedEndTagCustomImageInfo;->databaseType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    const/4 v0, 0x1

    return v0

    .line 1311
    :cond_1
    return v0

    .line 1303
    .end local v1    # "buffer":[B
    :cond_2
    :goto_0
    return v0
.end method
