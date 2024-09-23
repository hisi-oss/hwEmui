.class public Lcom/msic/qarth/PatchLoader;
.super Ljava/lang/Object;
.source "PatchLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;
    }
.end annotation


# static fields
.field private static final ENTRY_CLASS_NAME:Ljava/lang/String; = "QarthEntry"

.field private static final PATCH_LOADER_INSTANCE:Lcom/msic/qarth/PatchLoader;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisPatchFileObserver:Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/msic/qarth/PatchLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/msic/qarth/PatchLoader;

    invoke-direct {v0}, Lcom/msic/qarth/PatchLoader;-><init>()V

    sput-object v0, Lcom/msic/qarth/PatchLoader;->PATCH_LOADER_INSTANCE:Lcom/msic/qarth/PatchLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private disPatchFileWatching(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "disFilename"    # Ljava/lang/String;
    .param p2, "disableMethod"    # Ljava/lang/reflect/Method;

    .line 123
    iget-object v0, p0, Lcom/msic/qarth/PatchLoader;->mDisPatchFileObserver:Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;

    invoke-direct {v0, p0}, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;-><init>(Lcom/msic/qarth/PatchLoader;)V

    iput-object v0, p0, Lcom/msic/qarth/PatchLoader;->mDisPatchFileObserver:Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;

    .line 125
    iget-object v0, p0, Lcom/msic/qarth/PatchLoader;->mDisPatchFileObserver:Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;

    invoke-virtual {v0}, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->startWatching()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/msic/qarth/PatchLoader;->mDisPatchFileObserver:Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;

    invoke-static {v0, p1, p2}, Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;->access$000(Lcom/msic/qarth/PatchLoader$DisPatchFileObserver;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 129
    return-void
.end method

.method private genQarthClassLoader(Lcom/msic/qarth/QarthContext;)Ljava/lang/ClassLoader;
    .locals 4
    .param p1, "param"    # Lcom/msic/qarth/QarthContext;

    .line 117
    new-instance v0, Ldalvik/system/DexClassLoader;

    iget-object v1, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v1}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/msic/qarth/QarthContext;->qarthClassLoader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 119
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    return-object v0
.end method

.method public static getInstance()Lcom/msic/qarth/PatchLoader;
    .locals 1

    .line 30
    sget-object v0, Lcom/msic/qarth/PatchLoader;->PATCH_LOADER_INSTANCE:Lcom/msic/qarth/PatchLoader;

    return-object v0
.end method


# virtual methods
.method public load(Lcom/msic/qarth/QarthContext;)Z
    .locals 11
    .param p1, "qc"    # Lcom/msic/qarth/QarthContext;

    .line 37
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-object v1, p1, Lcom/msic/qarth/QarthContext;->context:Landroid/content/Context;

    if-eqz v1, :cond_a

    iget-object v1, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 41
    :cond_0
    sget-object v1, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v3}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] and update status file to downloaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 43
    .local v1, "start":J
    new-instance v3, Lcom/msic/qarth/RecordProcessUtil;

    invoke-direct {v3, p1}, Lcom/msic/qarth/RecordProcessUtil;-><init>(Lcom/msic/qarth/QarthContext;)V

    iput-object v3, p1, Lcom/msic/qarth/QarthContext;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    .line 44
    iget-object v3, p1, Lcom/msic/qarth/QarthContext;->recordProcessUtil:Lcom/msic/qarth/RecordProcessUtil;

    invoke-virtual {v3}, Lcom/msic/qarth/RecordProcessUtil;->updateRecordFileDownloaded()V

    .line 45
    const-string v3, "zygote"

    iget-object v4, p1, Lcom/msic/qarth/QarthContext;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "systemserver"

    iget-object v4, p1, Lcom/msic/qarth/QarthContext;->packageName:Ljava/lang/String;

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android"

    iget-object v4, p1, Lcom/msic/qarth/QarthContext;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    iget-object v3, p1, Lcom/msic/qarth/QarthContext;->context:Landroid/content/Context;

    iget-object v4, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v4}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/msic/qarth/Utils/SignatureUtil;->checkApkSignatureIsPlatform(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    sget-object v3, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v5}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] fail, signature can not be verified"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return v0

    .line 54
    :cond_1
    sget-boolean v3, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 55
    sget-object v3, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t==> elapse time 2.1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_2
    invoke-direct {p0, p1}, Lcom/msic/qarth/PatchLoader;->genQarthClassLoader(Lcom/msic/qarth/QarthContext;)Ljava/lang/ClassLoader;

    move-result-object v3

    iput-object v3, p1, Lcom/msic/qarth/QarthContext;->patchClassLoader:Ljava/lang/ClassLoader;

    .line 59
    iget-object v3, p1, Lcom/msic/qarth/QarthContext;->patchClassLoader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_3

    .line 60
    sget-object v3, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the patch class loader is null, load patch fail for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/msic/qarth/QarthContext;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v0

    .line 65
    :cond_3
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v4}, Lcom/msic/qarth/PatchFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "QarthEntry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "className":Ljava/lang/String;
    sget-boolean v4, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 67
    sget-object v4, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "class name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_4
    iget-object v4, p1, Lcom/msic/qarth/QarthContext;->patchClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 70
    .local v4, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v5, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 71
    sget-object v5, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t==> elapse time 2.2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_5
    if-nez v4, :cond_6

    .line 75
    sget-object v5, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the patch entry class is null, load patch fail for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/msic/qarth/QarthContext;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return v0

    .line 79
    :cond_6
    const-string v5, "init"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Lcom/msic/qarth/QarthContext;

    aput-object v8, v7, v0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 80
    .local v5, "entryMethod":Ljava/lang/reflect/Method;
    if-nez v5, :cond_7

    .line 81
    sget-object v6, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the patch init method is null, load patch fail for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/msic/qarth/QarthContext;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return v0

    .line 85
    :cond_7
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    const/4 v7, 0x0

    new-array v8, v6, [Ljava/lang/Object;

    aput-object p1, v8, v0

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-boolean v7, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 88
    sget-object v7, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t==> elapse time 2.3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_8
    const-string v7, "disable"

    new-array v8, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 91
    .local v7, "disableMethod":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_9

    .line 92
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 93
    sget-object v8, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    iget-object v9, p1, Lcom/msic/qarth/QarthContext;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 94
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v10}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".disable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "disFilename":Ljava/lang/String;
    invoke-direct {p0, v8, v7}, Lcom/msic/qarth/PatchLoader;->disPatchFileWatching(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "entryMethod":Ljava/lang/reflect/Method;
    .end local v7    # "disableMethod":Ljava/lang/reflect/Method;
    .end local v8    # "disFilename":Ljava/lang/String;
    :cond_9
    nop

    .line 112
    return v6

    .line 108
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    const-string v5, "load fwk hot patch IllegalAccessException"

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v0

    .line 105
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    const-string v5, "load fwk hot patch InvocationTargetException"

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return v0

    .line 102
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v4, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    const-string v5, "load fwk hot patch NoSuchMethodException"

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return v0

    .line 99
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    const-string v5, "load fwk hot patch ClassNotFoundException"

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v0

    .line 38
    .end local v1    # "start":J
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :cond_a
    :goto_0
    sget-object v1, Lcom/msic/qarth/PatchLoader;->TAG:Ljava/lang/String;

    const-string v2, "qarth context or patch file is null"

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return v0
.end method
