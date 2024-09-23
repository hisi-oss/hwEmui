.class abstract Landroid/media/HwMediaScannerImpl$CustomImageInfo;
.super Ljava/lang/Object;
.source "HwMediaScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HwMediaScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CustomImageInfo"
.end annotation


# instance fields
.field protected customImageTag:Ljava/lang/String;

.field protected databaseColumn:Ljava/lang/String;

.field protected databaseType:I

.field protected tagCharsetName:Ljava/lang/String;

.field protected tagLength:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "customImageTag"    # Ljava/lang/String;
    .param p2, "tagLength"    # I
    .param p3, "tagCharsetName"    # Ljava/lang/String;
    .param p4, "databaseColumn"    # Ljava/lang/String;
    .param p5, "databaseType"    # I

    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    iput-object p1, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->customImageTag:Ljava/lang/String;

    .line 1170
    iput p2, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->tagLength:I

    .line 1171
    iput-object p3, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->tagCharsetName:Ljava/lang/String;

    .line 1172
    iput-object p4, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->databaseColumn:Ljava/lang/String;

    .line 1173
    iput p5, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->databaseType:I

    .line 1174
    return-void
.end method


# virtual methods
.method protected abstract checkTag([BLandroid/content/ContentValues;)Z
.end method

.method public getCustomImageTag()Ljava/lang/String;
    .locals 1

    .line 1182
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->customImageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseColumn()Ljava/lang/String;
    .locals 1

    .line 1236
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->databaseColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseType()I
    .locals 1

    .line 1254
    iget v0, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->databaseType:I

    return v0
.end method

.method public getTagCharsetName()Ljava/lang/String;
    .locals 1

    .line 1218
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->tagCharsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagLength()I
    .locals 1

    .line 1200
    iget v0, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->tagLength:I

    return v0
.end method

.method public setCustomImageTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "customImageTag"    # Ljava/lang/String;

    .line 1191
    iput-object p1, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->customImageTag:Ljava/lang/String;

    .line 1192
    return-void
.end method

.method public setDatabaseColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "databaseColumn"    # Ljava/lang/String;

    .line 1245
    iput-object p1, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->databaseColumn:Ljava/lang/String;

    .line 1246
    return-void
.end method

.method public setDatabaseType(I)V
    .locals 0
    .param p1, "databaseType"    # I

    .line 1263
    iput p1, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->databaseType:I

    .line 1264
    return-void
.end method

.method public setTagCharsetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tagCharsetName"    # Ljava/lang/String;

    .line 1227
    iput-object p1, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->tagCharsetName:Ljava/lang/String;

    .line 1228
    return-void
.end method

.method public setTagLength(I)V
    .locals 0
    .param p1, "tagLength"    # I

    .line 1209
    iput p1, p0, Landroid/media/HwMediaScannerImpl$CustomImageInfo;->tagLength:I

    .line 1210
    return-void
.end method
