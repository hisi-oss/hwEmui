.class public Lcom/msic/qarth/PatchFile$Builder;
.super Ljava/lang/Object;
.source "PatchFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msic/qarth/PatchFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/msic/qarth/PatchFile$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msic/qarth/PatchFile$Builder;

    .line 20
    iget-object v0, p0, Lcom/msic/qarth/PatchFile$Builder;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/msic/qarth/PatchFile$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msic/qarth/PatchFile$Builder;

    .line 20
    iget-object v0, p0, Lcom/msic/qarth/PatchFile$Builder;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/msic/qarth/PatchFile$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msic/qarth/PatchFile$Builder;

    .line 20
    iget-object v0, p0, Lcom/msic/qarth/PatchFile$Builder;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/msic/qarth/PatchFile$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/msic/qarth/PatchFile$Builder;

    .line 20
    iget-object v0, p0, Lcom/msic/qarth/PatchFile$Builder;->versionName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/msic/qarth/PatchFile;
    .locals 2

    .line 62
    new-instance v0, Lcom/msic/qarth/PatchFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/msic/qarth/PatchFile;-><init>(Lcom/msic/qarth/PatchFile$Builder;Lcom/msic/qarth/PatchFile$1;)V

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/msic/qarth/PatchFile$Builder;->fileName:Ljava/lang/String;

    .line 39
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/msic/qarth/PatchFile$Builder;->path:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public setVersionCode(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;
    .locals 0
    .param p1, "versionCode"    # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/msic/qarth/PatchFile$Builder;->versionCode:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/msic/qarth/PatchFile$Builder;
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/msic/qarth/PatchFile$Builder;->versionName:Ljava/lang/String;

    .line 55
    return-object p0
.end method
