.class public Lhuawei/android/hwgallerycache/HwGalleryCacheNative;
.super Ljava/lang/Object;
.source "HwGalleryCacheNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwGalleryCacheNative"

.field private static sLoadLibraryFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    :try_start_0
    const-string v0, "hwgallerycache_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x1

    sput-boolean v1, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;->sLoadLibraryFailed:Z

    .line 28
    const-string v1, "HwGalleryCacheNative"

    const-string v2, "loadLibrary hwgallerycache_jni failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;->sLoadLibraryFailed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeFD2ID(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private static native nativeFD2Path(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method


# virtual methods
.method public getFileID(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 43
    sget-boolean v0, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;->sLoadLibraryFailed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;->nativeFD2ID(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 36
    sget-boolean v0, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;->sLoadLibraryFailed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Lhuawei/android/hwgallerycache/HwGalleryCacheNative;->nativeFD2Path(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
