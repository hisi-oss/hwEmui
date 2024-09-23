.class Landroid/media/HwMediaScannerImpl$DataFlagMap;
.super Ljava/lang/Object;
.source "HwMediaScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/HwMediaScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataFlagMap"
.end annotation


# instance fields
.field private final tagData:Ljava/lang/String;

.field private final tagFlag:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "tagData"    # Ljava/lang/String;
    .param p2, "tagFlag"    # I

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Landroid/media/HwMediaScannerImpl$DataFlagMap;->tagData:Ljava/lang/String;

    .line 269
    iput p2, p0, Landroid/media/HwMediaScannerImpl$DataFlagMap;->tagFlag:I

    .line 270
    return-void
.end method

.method static synthetic access$000(Landroid/media/HwMediaScannerImpl$DataFlagMap;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/HwMediaScannerImpl$DataFlagMap;

    .line 262
    iget v0, p0, Landroid/media/HwMediaScannerImpl$DataFlagMap;->tagFlag:I

    return v0
.end method

.method static synthetic access$100(Landroid/media/HwMediaScannerImpl$DataFlagMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/HwMediaScannerImpl$DataFlagMap;

    .line 262
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl$DataFlagMap;->tagData:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getTagData()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/media/HwMediaScannerImpl$DataFlagMap;->tagData:Ljava/lang/String;

    return-object v0
.end method

.method public getTagFlag()I
    .locals 1

    .line 287
    iget v0, p0, Landroid/media/HwMediaScannerImpl$DataFlagMap;->tagFlag:I

    return v0
.end method
