.class Lcom/huawei/displayengine/DisplayEngineLibraries;
.super Ljava/lang/Object;
.source "DisplayEngineLibraries.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DE J DisplayEngineLibraries"

.field private static mJniLoaded:Z


# instance fields
.field private volatile mBrightnessTrainingProcessor:Lcom/huawei/displayengine/BrightnessTrainingProcessor;

.field private mBrightnessTrainingeProcessorLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private volatile mImageProcessor:Lcom/huawei/displayengine/ImageProcessor;

.field private mImageProcessorLock:Ljava/lang/Object;

.field private final mInterface:Lcom/huawei/displayengine/DisplayEngineManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "loadLibrary displayengine-jni.so"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :try_start_0
    const-string v0, "displayengine-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mJniLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DE J DisplayEngineLibraries"

    const-string v2, "ERROR: could not load displayengine-jni natives"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "loadLibrary displayengine-jni.so done"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/huawei/displayengine/DisplayEngineManager;)V
    .locals 2
    .param p1, "context"    # Lcom/huawei/displayengine/DisplayEngineManager;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "DisplayEngineLibraries enter"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mInterface:Lcom/huawei/displayengine/DisplayEngineManager;

    .line 34
    sget-boolean v0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mJniLoaded:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeInit()V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mInterface:Lcom/huawei/displayengine/DisplayEngineManager;

    invoke-virtual {v0}, Lcom/huawei/displayengine/DisplayEngineManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mImageProcessorLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mBrightnessTrainingeProcessorLock:Ljava/lang/Object;

    .line 41
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "DisplayEngineLibraries exit"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method private getBrightnessTrainingProcessor()Lcom/huawei/displayengine/BrightnessTrainingProcessor;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mBrightnessTrainingProcessor:Lcom/huawei/displayengine/BrightnessTrainingProcessor;

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mBrightnessTrainingeProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mBrightnessTrainingProcessor:Lcom/huawei/displayengine/BrightnessTrainingProcessor;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/huawei/displayengine/BrightnessTrainingProcessor;

    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/huawei/displayengine/BrightnessTrainingProcessor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mBrightnessTrainingProcessor:Lcom/huawei/displayengine/BrightnessTrainingProcessor;

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mBrightnessTrainingProcessor:Lcom/huawei/displayengine/BrightnessTrainingProcessor;

    return-object v0
.end method

.method private getImageProcessor()Lcom/huawei/displayengine/ImageProcessor;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mImageProcessor:Lcom/huawei/displayengine/ImageProcessor;

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mImageProcessorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mImageProcessor:Lcom/huawei/displayengine/ImageProcessor;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/huawei/displayengine/ImageProcessor;

    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mInterface:Lcom/huawei/displayengine/DisplayEngineManager;

    invoke-virtual {v2}, Lcom/huawei/displayengine/DisplayEngineManager;->getService()Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/displayengine/ImageProcessor;-><init>(Lcom/huawei/displayengine/IDisplayEngineServiceEx;)V

    iput-object v1, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mImageProcessor:Lcom/huawei/displayengine/ImageProcessor;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 64
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mImageProcessor:Lcom/huawei/displayengine/ImageProcessor;

    return-object v0
.end method

.method public static nativeDeinitAlgorithm(II)I
    .locals 1
    .param p0, "algorithm"    # I
    .param p1, "handle"    # I

    .line 140
    invoke-static {p0, p1}, Lcom/huawei/displayengine/DisplayEngineLibraries;->native_deinitAlgorithm(II)I

    move-result v0

    return v0
.end method

.method public static nativeFinalize()V
    .locals 0

    .line 132
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineLibraries;->native_finalize()V

    .line 133
    return-void
.end method

.method public static nativeGetParamAlgorithm(IIILjava/lang/Object;[B)I
    .locals 1
    .param p0, "algorithm"    # I
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "param"    # [B

    .line 148
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/displayengine/DisplayEngineLibraries;->native_getParamAlgorithm(IIILjava/lang/Object;[B)I

    move-result v0

    return v0
.end method

.method public static nativeInit()V
    .locals 0

    .line 128
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineLibraries;->native_init()V

    .line 129
    return-void
.end method

.method public static nativeInitAlgorithm(I)I
    .locals 1
    .param p0, "algorithm"    # I

    .line 136
    invoke-static {p0}, Lcom/huawei/displayengine/DisplayEngineLibraries;->native_initAlgorithm(I)I

    move-result v0

    return v0
.end method

.method public static nativeProcessAlgorithm(IIILjava/lang/Object;[B)I
    .locals 1
    .param p0, "algorithm"    # I
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "param"    # [B

    .line 144
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/displayengine/DisplayEngineLibraries;->native_processAlgorithm(IIILjava/lang/Object;[B)I

    move-result v0

    return v0
.end method

.method public static nativeSetParamAlgorithm(IIILjava/lang/Object;[B)I
    .locals 1
    .param p0, "algorithm"    # I
    .param p1, "handle"    # I
    .param p2, "type"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "param"    # [B

    .line 152
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/displayengine/DisplayEngineLibraries;->native_setParamAlgorithm(IIILjava/lang/Object;[B)I

    move-result v0

    return v0
.end method

.method private static native native_deinitAlgorithm(II)I
.end method

.method private static native native_finalize()V
.end method

.method private static native native_getParamAlgorithm(IIILjava/lang/Object;[B)I
.end method

.method private static native native_init()V
.end method

.method private static native native_initAlgorithm(I)I
.end method

.method private static native native_processAlgorithm(IIILjava/lang/Object;[B)I
.end method

.method private static native native_setParamAlgorithm(IIILjava/lang/Object;[B)I
.end method


# virtual methods
.method public brightnessTrainingAbort()I
    .locals 2

    .line 106
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "brightnessTrainingAbort "

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-boolean v0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mJniLoaded:Z

    if-nez v0, :cond_0

    .line 108
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "jni load failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, -0x1

    return v0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/huawei/displayengine/DisplayEngineLibraries;->getBrightnessTrainingProcessor()Lcom/huawei/displayengine/BrightnessTrainingProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->brightnessTrainingAbort()I

    move-result v0

    return v0
.end method

.method public brightnessTrainingProcess(Ljava/lang/String;Ljava/util/Map;)I
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 96
    .local p2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "brightnessTrainingProcess "

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-boolean v0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mJniLoaded:Z

    if-nez v0, :cond_0

    .line 99
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "jni load failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, -0x1

    return v0

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/huawei/displayengine/DisplayEngineLibraries;->getBrightnessTrainingProcessor()Lcom/huawei/displayengine/BrightnessTrainingProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/huawei/displayengine/BrightnessTrainingProcessor;->brightnessTrainingProcess(Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    :try_start_0
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "call native_finalize()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-boolean v0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mJniLoaded:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 53
    nop

    .line 54
    return-void

    .line 52
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public imageProcess(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    .local p2, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mJniLoaded:Z

    if-eqz v0, :cond_2

    .line 72
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 73
    return-object v0

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/huawei/displayengine/ImageProcessor;->isCommandOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/huawei/displayengine/DisplayEngineLibraries;->getImageProcessor()Lcom/huawei/displayengine/ImageProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/huawei/displayengine/ImageProcessor;->imageProcess(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 78
    :cond_1
    const-string v1, "DE J DisplayEngineLibraries"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageProcess() error! undefine command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v0

    .line 69
    :cond_2
    const-string v0, "DE J DisplayEngineLibraries"

    const-string v1, "jni load failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "jni load failed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScene(II)V
    .locals 4
    .param p1, "scene"    # I
    .param p2, "action"    # I

    .line 115
    sget-boolean v0, Lcom/huawei/displayengine/DisplayEngineLibraries;->mJniLoaded:Z

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    invoke-static {p1, p2}, Lcom/huawei/displayengine/ImageProcessor;->isSceneSensitive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/displayengine/DisplayEngineLibraries;->getImageProcessor()Lcom/huawei/displayengine/ImageProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/huawei/displayengine/ImageProcessor;->setScene(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DE J DisplayEngineLibraries"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScene() error, RuntimeException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void
.end method
