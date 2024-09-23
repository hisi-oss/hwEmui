.class public final Landroid/hwouc/HwOucNative;
.super Ljava/lang/Object;
.source "HwOucNative.java"


# static fields
.field private static final LIB_JNI_NAME:Ljava/lang/String; = "hwouc_jni"

.field private static SINGLETON:Landroid/hwouc/HwOucNative; = null

.field private static final TAG:Ljava/lang/String; = "HwOucNative"

.field private static mIsJNILoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hwouc/HwOucNative;->mIsJNILoaded:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0}, Landroid/hwouc/HwOucNative;->isJNILoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    const-string v0, "hwouc_jni"

    invoke-direct {p0, v0}, Landroid/hwouc/HwOucNative;->loadLibrary(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/hwouc/HwOucNative;->mIsJNILoaded:Z

    .line 18
    :cond_0
    return-void
.end method

.method private native checkScript(Ljava/lang/String;)I
.end method

.method public static getInstance()Landroid/hwouc/HwOucNative;
    .locals 1

    .line 61
    sget-object v0, Landroid/hwouc/HwOucNative;->SINGLETON:Landroid/hwouc/HwOucNative;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/hwouc/HwOucNative;

    invoke-direct {v0}, Landroid/hwouc/HwOucNative;-><init>()V

    sput-object v0, Landroid/hwouc/HwOucNative;->SINGLETON:Landroid/hwouc/HwOucNative;

    .line 65
    :cond_0
    sget-object v0, Landroid/hwouc/HwOucNative;->SINGLETON:Landroid/hwouc/HwOucNative;

    return-object v0
.end method

.method private native isCheckScriptSupport()Z
.end method

.method private isJNILoaded()Z
    .locals 1

    .line 21
    sget-boolean v0, Landroid/hwouc/HwOucNative;->mIsJNILoaded:Z

    return v0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 25
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadLibrary(Ljava/lang/String;)Z
    .locals 4
    .param p1, "library"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "ret":Z
    invoke-direct {p0, p1}, Landroid/hwouc/HwOucNative;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "HwOucNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary, library = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v0, 0x1

    .line 46
    :goto_0
    goto :goto_1

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HwOucNative"

    const-string v3, "loadLibrary"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v2, "HwOucNative"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 40
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "HwOucNative"

    const-string v3, "loadLibrary, not allow be loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v2, "HwOucNative"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 37
    :catch_2
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "HwOucNative"

    const-string v3, "loadLibrary, could not be loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v2, "HwOucNative"

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0

    .line 49
    :cond_0
    :goto_1
    return v0
.end method


# virtual methods
.method public executeVerifyScript(Ljava/lang/String;)I
    .locals 4
    .param p1, "verifyFile"    # Ljava/lang/String;

    .line 74
    const/4 v0, -0x1

    .line 76
    .local v0, "ret":I
    invoke-direct {p0, p1}, Landroid/hwouc/HwOucNative;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/hwouc/HwOucNative;->isVerifyScriptSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "HwOucNative"

    const-string v2, "executeVerifyScript, checkScript"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hwouc/HwOucNative;->checkScript(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 82
    :cond_0
    const-string v1, "HwOucNative"

    const-string v2, "executeVerifyScript, isVerifyScriptSupport = false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_1
    const-string v1, "HwOucNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeVerifyScript, isValid verifyFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return v0
.end method

.method public native getUpdateAuthParams()Ljava/lang/String;
.end method

.method public isVerifyScriptSupport()Z
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/hwouc/HwOucNative;->isJNILoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Landroid/hwouc/HwOucNative;->isCheckScriptSupport()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0
.end method

.method public native saveUpdateAuth(Ljava/lang/String;Ljava/lang/String;)I
.end method
