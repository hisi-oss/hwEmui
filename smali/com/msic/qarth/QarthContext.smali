.class public Lcom/msic/qarth/QarthContext;
.super Ljava/lang/Object;
.source "QarthContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QarthContext"


# instance fields
.field public context:Landroid/content/Context;

.field public cpuAbi:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public patchClassLoader:Ljava/lang/ClassLoader;

.field public patchFile:Lcom/msic/qarth/PatchFile;

.field public qarthClassLoader:Ljava/lang/ClassLoader;

.field public qarthFile:Ljava/io/File;

.field public qarthVersion:Ljava/lang/String;

.field public recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 66
    const-string v0, ""

    .line 68
    .local v0, "canonicalPath":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/msic/qarth/QarthContext;->qarthFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/msic/qarth/QarthContext;->qarthFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 73
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "ioEx":Ljava/io/IOException;
    const-string v2, "QarthContext"

    const-string v3, "get patch file path exception"

    invoke-static {v2, v3}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v1    # "ioEx":Ljava/io/IOException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/msic/qarth/QarthContext;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", qarthFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
