.class Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
.super Ljava/lang/Object;
.source "HwMtpDatabaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/HwMtpDatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MtpObjectColumnInfo"
.end annotation


# instance fields
.field private album:Ljava/lang/String;

.field private albumArtist:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private composer:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private dateAdded:J

.field private dateModified:J

.field private description:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private duration:I

.field private format:I

.field private handle:I

.field private height:I

.field private isDrm:I

.field private lockObject:Ljava/lang/Object;

.field private mediaType:I

.field private mimeType:I

.field private name:Ljava/lang/String;

.field private parent:I

.field private size:J

.field private storageId:I

.field private title:Ljava/lang/String;

.field private track:I

.field private types:[I

.field private width:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const/16 v0, 0x18

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->types:[I

    .line 435
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->lockObject:Ljava/lang/Object;

    .line 441
    const/4 v0, -0x1

    iput v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->handle:I

    .line 442
    return-void
.end method

.method static synthetic access$000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)[I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->types:[I

    return-object v0
.end method

.method static synthetic access$100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->handle:I

    return v0
.end method

.method static synthetic access$1000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->handle:I

    return p1
.end method

.method static synthetic access$1100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->displayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->mediaType:I

    return v0
.end method

.method static synthetic access$1202(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->mediaType:I

    return p1
.end method

.method static synthetic access$1302(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->isDrm:I

    return p1
.end method

.method static synthetic access$1402(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->width:I

    return p1
.end method

.method static synthetic access$1502(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->height:I

    return p1
.end method

.method static synthetic access$1600(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->description:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->album:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->albumArtist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->albumArtist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->storageId:I

    return v0
.end method

.method static synthetic access$2000(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->duration:I

    return v0
.end method

.method static synthetic access$2002(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->duration:I

    return p1
.end method

.method static synthetic access$202(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->storageId:I

    return p1
.end method

.method static synthetic access$2100(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->track:I

    return v0
.end method

.method static synthetic access$2102(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->track:I

    return p1
.end method

.method static synthetic access$2200(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->year:I

    return v0
.end method

.method static synthetic access$2202(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->year:I

    return p1
.end method

.method static synthetic access$2300(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->composer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->composer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->format:I

    return v0
.end method

.method static synthetic access$302(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->format:I

    return p1
.end method

.method static synthetic access$400(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->parent:I

    return v0
.end method

.method static synthetic access$402(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->parent:I

    return p1
.end method

.method static synthetic access$500(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 384
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->data:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)J
    .locals 2
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-wide v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->size:J

    return-wide v0
.end method

.method static synthetic access$602(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;J)J
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # J

    .line 384
    iput-wide p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->size:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)J
    .locals 2
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-wide v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->dateAdded:J

    return-wide v0
.end method

.method static synthetic access$702(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;J)J
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # J

    .line 384
    iput-wide p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->dateAdded:J

    return-wide p1
.end method

.method static synthetic access$800(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;)J
    .locals 2
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;

    .line 384
    iget-wide v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->dateModified:J

    return-wide v0
.end method

.method static synthetic access$802(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;J)J
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # J

    .line 384
    iput-wide p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->dateModified:J

    return-wide p1
.end method

.method static synthetic access$902(Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;
    .param p1, "x1"    # I

    .line 384
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->mimeType:I

    return p1
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 778
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumArtist()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->albumArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .line 868
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->composer:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDateAdded()J
    .locals 2

    .line 580
    iget-wide v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->dateAdded:J

    return-wide v0
.end method

.method public getDateModified()J
    .locals 2

    .line 598
    iget-wide v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->dateModified:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 742
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 652
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 814
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->duration:I

    return v0
.end method

.method public getFormat()I
    .locals 1

    .line 490
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->format:I

    return v0
.end method

.method public getHandle()I
    .locals 2

    .line 450
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget v1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->handle:I

    monitor-exit v0

    return v1

    .line 452
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHeight()I
    .locals 1

    .line 724
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->height:I

    return v0
.end method

.method public getIsDrm()I
    .locals 1

    .line 688
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->isDrm:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .line 670
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->mediaType:I

    return v0
.end method

.method public getMimeType()I
    .locals 1

    .line 616
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->mimeType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()I
    .locals 1

    .line 508
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->parent:I

    return v0
.end method

.method public getSize()J
    .locals 2

    .line 562
    iget-wide v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->size:J

    return-wide v0
.end method

.method public getStorageId()I
    .locals 1

    .line 472
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->storageId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 634
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack()I
    .locals 1

    .line 832
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->track:I

    return v0
.end method

.method public getTypes()[I
    .locals 1

    .line 886
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->types:[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 706
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->width:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 850
    iget v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->year:I

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;

    .line 787
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->album:Ljava/lang/String;

    .line 788
    return-void
.end method

.method public setAlbumArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumArtist"    # Ljava/lang/String;

    .line 805
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->albumArtist:Ljava/lang/String;

    .line 806
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;

    .line 769
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->artist:Ljava/lang/String;

    .line 770
    return-void
.end method

.method public setComposer(Ljava/lang/String;)V
    .locals 0
    .param p1, "composer"    # Ljava/lang/String;

    .line 877
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->composer:Ljava/lang/String;

    .line 878
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 535
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->data:Ljava/lang/String;

    .line 536
    return-void
.end method

.method public setDateAdded(J)V
    .locals 0
    .param p1, "dateAdded"    # J

    .line 589
    iput-wide p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->dateAdded:J

    .line 590
    return-void
.end method

.method public setDateModified(J)V
    .locals 0
    .param p1, "dateModified"    # J

    .line 607
    iput-wide p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->dateModified:J

    .line 608
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 751
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->description:Ljava/lang/String;

    .line 752
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .line 661
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->displayName:Ljava/lang/String;

    .line 662
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 823
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->duration:I

    .line 824
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .line 499
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->format:I

    .line 500
    return-void
.end method

.method public setHandle(I)V
    .locals 2
    .param p1, "handle"    # I

    .line 461
    iget-object v0, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_0
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->handle:I

    .line 463
    monitor-exit v0

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 733
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->height:I

    .line 734
    return-void
.end method

.method public setIsDrm(I)V
    .locals 0
    .param p1, "isDrm"    # I

    .line 697
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->isDrm:I

    .line 698
    return-void
.end method

.method public setMediaType(I)V
    .locals 0
    .param p1, "mediaType"    # I

    .line 679
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->mediaType:I

    .line 680
    return-void
.end method

.method public setMimeType(I)V
    .locals 0
    .param p1, "mimeType"    # I

    .line 625
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->mimeType:I

    .line 626
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 553
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->name:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public setParent(I)V
    .locals 0
    .param p1, "parent"    # I

    .line 517
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->parent:I

    .line 518
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .line 571
    iput-wide p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->size:J

    .line 572
    return-void
.end method

.method public setStorageId(I)V
    .locals 0
    .param p1, "storageId"    # I

    .line 481
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->storageId:I

    .line 482
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 643
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->title:Ljava/lang/String;

    .line 644
    return-void
.end method

.method public setTrack(I)V
    .locals 0
    .param p1, "track"    # I

    .line 841
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->track:I

    .line 842
    return-void
.end method

.method public setTypes([I)V
    .locals 0
    .param p1, "types"    # [I

    .line 895
    iput-object p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->types:[I

    .line 896
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 715
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->width:I

    .line 716
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .line 859
    iput p1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->year:I

    .line 860
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MtpObjectColumnInfo[mimeType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->mimeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDrm : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->isDrm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/mtp/HwMtpDatabaseImpl$MtpObjectColumnInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
