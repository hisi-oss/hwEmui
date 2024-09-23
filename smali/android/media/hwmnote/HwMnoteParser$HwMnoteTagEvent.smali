.class Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;
.super Ljava/lang/Object;
.source "HwMnoteParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/hwmnote/HwMnoteParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HwMnoteTagEvent"
.end annotation


# instance fields
.field private isRequested:Z

.field private tag:Landroid/media/hwmnote/HwMnoteTag;


# direct methods
.method constructor <init>(Landroid/media/hwmnote/HwMnoteTag;Z)V
    .locals 0
    .param p1, "tag"    # Landroid/media/hwmnote/HwMnoteTag;
    .param p2, "isRequireByUser"    # Z

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p1, p0, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;->tag:Landroid/media/hwmnote/HwMnoteTag;

    .line 654
    iput-boolean p2, p0, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;->isRequested:Z

    .line 655
    return-void
.end method

.method static synthetic access$000(Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;)Landroid/media/hwmnote/HwMnoteTag;
    .locals 1
    .param p0, "x0"    # Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;

    .line 647
    iget-object v0, p0, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;->tag:Landroid/media/hwmnote/HwMnoteTag;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;

    .line 647
    iget-boolean v0, p0, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;->isRequested:Z

    return v0
.end method


# virtual methods
.method public isRequested()Z
    .locals 1

    .line 663
    iget-boolean v0, p0, Landroid/media/hwmnote/HwMnoteParser$HwMnoteTagEvent;->isRequested:Z

    return v0
.end method
