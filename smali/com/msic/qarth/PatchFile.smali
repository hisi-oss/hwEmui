.class public Lcom/msic/qarth/PatchFile;
.super Ljava/lang/Object;
.source "PatchFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msic/qarth/PatchFile$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final versionCode:Ljava/lang/String;

.field private final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/msic/qarth/PatchFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msic/qarth/PatchFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/msic/qarth/PatchFile$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/msic/qarth/PatchFile$Builder;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/msic/qarth/PatchFile$Builder;->access$100(Lcom/msic/qarth/PatchFile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/msic/qarth/PatchFile$Builder;->access$200(Lcom/msic/qarth/PatchFile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msic/qarth/PatchFile;->fileName:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/msic/qarth/PatchFile$Builder;->access$300(Lcom/msic/qarth/PatchFile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msic/qarth/PatchFile;->versionCode:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/msic/qarth/PatchFile$Builder;->access$400(Lcom/msic/qarth/PatchFile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msic/qarth/PatchFile;->versionName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Lcom/msic/qarth/PatchFile$Builder;Lcom/msic/qarth/PatchFile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/msic/qarth/PatchFile$Builder;
    .param p2, "x1"    # Lcom/msic/qarth/PatchFile$1;

    .line 12
    invoke-direct {p0, p1}, Lcom/msic/qarth/PatchFile;-><init>(Lcom/msic/qarth/PatchFile$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 120
    instance-of v0, p1, Lcom/msic/qarth/PatchFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/msic/qarth/PatchFile;

    .line 122
    .local v0, "other":Lcom/msic/qarth/PatchFile;
    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    iget-object v3, v0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/msic/qarth/PatchFile;->fileName:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->fileName:Ljava/lang/String;

    iget-object v3, v0, Lcom/msic/qarth/PatchFile;->fileName:Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->versionCode:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/msic/qarth/PatchFile;->versionCode:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->versionCode:Ljava/lang/String;

    iget-object v3, v0, Lcom/msic/qarth/PatchFile;->versionCode:Ljava/lang/String;

    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->versionName:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/msic/qarth/PatchFile;->versionName:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->versionName:Ljava/lang/String;

    iget-object v3, v0, Lcom/msic/qarth/PatchFile;->versionName:Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    const/4 v1, 0x1

    nop

    .line 122
    :cond_4
    return v1

    .line 132
    .end local v0    # "other":Lcom/msic/qarth/PatchFile;
    :cond_5
    return v1
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/msic/qarth/PatchFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/msic/qarth/PatchFile;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/msic/qarth/PatchFile;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->fileName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->versionCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 145
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->versionCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 148
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/msic/qarth/PatchFile;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 150
    :cond_3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PatchFile:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", FileName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", VersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", VersionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msic/qarth/PatchFile;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
