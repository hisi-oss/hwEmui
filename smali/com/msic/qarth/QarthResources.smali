.class public Lcom/msic/qarth/QarthResources;
.super Ljava/lang/Object;
.source "QarthResources.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOriResources:Landroid/content/res/Resources;

.field private mQarthContext:Lcom/msic/qarth/QarthContext;

.field private mQarthPkgName:Ljava/lang/String;

.field private mQarthResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/msic/qarth/QarthResources;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msic/qarth/QarthResources;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/msic/qarth/QarthContext;)V
    .locals 4
    .param p1, "qarthContext"    # Lcom/msic/qarth/QarthContext;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_1

    .line 29
    iput-object p1, p0, Lcom/msic/qarth/QarthResources;->mQarthContext:Lcom/msic/qarth/QarthContext;

    .line 30
    iget-object v0, p1, Lcom/msic/qarth/QarthContext;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/msic/qarth/QarthResources;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v0}, Lcom/msic/qarth/PatchFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/msic/qarth/QarthResources;->getQarthPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msic/qarth/QarthResources;->mQarthPkgName:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/msic/qarth/QarthResources;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/msic/qarth/QarthResources;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/msic/qarth/QarthResources;->mOriResources:Landroid/content/res/Resources;

    .line 35
    :try_start_0
    iget-object v0, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v0}, Lcom/msic/qarth/PatchFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/msic/qarth/QarthResources;->createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 36
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/msic/qarth/QarthResources;->mOriResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/msic/qarth/QarthResources;->mOriResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/msic/qarth/QarthResources;->mOriResources:Landroid/content/res/Resources;

    .line 38
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/msic/qarth/QarthResources;->mQarthResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_0
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/msic/qarth/QarthResources;->TAG:Ljava/lang/String;

    const-string v2, "create qarth resource exception."

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method private createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;
    .locals 3
    .param p1, "patchFilePath"    # Ljava/lang/String;

    .line 63
    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 64
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object v0

    .line 68
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/msic/qarth/QarthResources;->TAG:Ljava/lang/String;

    const-string v2, "create asset manager IllegalAccessException."

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 66
    :catch_1
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/InstantiationException;
    sget-object v1, Lcom/msic/qarth/QarthResources;->TAG:Ljava/lang/String;

    const-string v2, "create asset manager InstantiationException."

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v0    # "ex":Ljava/lang/InstantiationException;
    nop

    .line 71
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getQarthPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "qarthFileName"    # Ljava/lang/String;

    .line 75
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 79
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getOriResources()Landroid/content/res/Resources;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/msic/qarth/QarthResources;->mOriResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getQarthResources()Landroid/content/res/Resources;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/msic/qarth/QarthResources;->mQarthResources:Landroid/content/res/Resources;

    return-object v0
.end method
