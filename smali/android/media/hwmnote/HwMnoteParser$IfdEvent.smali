.class Landroid/media/hwmnote/HwMnoteParser$IfdEvent;
.super Ljava/lang/Object;
.source "HwMnoteParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/hwmnote/HwMnoteParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field private ifd:I

.field private isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "ifd"    # I
    .param p2, "isInterestedIfd"    # Z

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput p1, p0, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->ifd:I

    .line 609
    iput-boolean p2, p0, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->isRequested:Z

    .line 610
    return-void
.end method

.method static synthetic access$200(Landroid/media/hwmnote/HwMnoteParser$IfdEvent;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/hwmnote/HwMnoteParser$IfdEvent;

    .line 602
    iget v0, p0, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->ifd:I

    return v0
.end method

.method static synthetic access$300(Landroid/media/hwmnote/HwMnoteParser$IfdEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/hwmnote/HwMnoteParser$IfdEvent;

    .line 602
    iget-boolean v0, p0, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->isRequested:Z

    return v0
.end method


# virtual methods
.method public getIfd()I
    .locals 1

    .line 618
    iget v0, p0, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->ifd:I

    return v0
.end method

.method public isRequested()Z
    .locals 1

    .line 636
    iget-boolean v0, p0, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->isRequested:Z

    return v0
.end method

.method public setIfd(I)V
    .locals 0
    .param p1, "ifd"    # I

    .line 627
    iput p1, p0, Landroid/media/hwmnote/HwMnoteParser$IfdEvent;->ifd:I

    .line 628
    return-void
.end method
