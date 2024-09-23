.class public Landroid/os/FeatureLayerLoader;
.super Ljava/lang/Object;
.source "FeatureLayerLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FeatureLayerLoader"


# instance fields
.field DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    :try_start_0
    const-string v0, "hwfeature_loader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "FeatureLayerLoader"

    const-string v2, "featurelayer_loader library not found!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/FeatureLayerLoader;->DEBUG:Z

    return-void
.end method

.method private native nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)I
.end method


# virtual methods
.method public loadFeature(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "libName"    # Ljava/lang/String;

    .line 26
    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "fullLibName":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/os/FeatureLayerLoader;->nativeLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)I

    .line 33
    iget-boolean v1, p0, Landroid/os/FeatureLayerLoader;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FeatureLayerLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after nativeLoad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "fullLibName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "FeatureLayerLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native load library["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 27
    :cond_2
    :goto_1
    const-string v0, "FeatureLayerLoader"

    const-string v1, "load feature failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
