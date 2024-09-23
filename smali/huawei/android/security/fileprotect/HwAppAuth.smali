.class public Lhuawei/android/security/fileprotect/HwAppAuth;
.super Ljava/lang/Object;
.source "HwAppAuth.java"


# static fields
.field private static final NATIVE_FAILED:I = -0x1

.field private static final NATIVE_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HwAppAuth"

.field private static final VERSION_NOT_SUPPORTED:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    :try_start_0
    const-string v0, "hwaa_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwAppAuth"

    const-string v2, "hwaa_jni library not found!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static initTee()V
    .locals 3

    .line 59
    :try_start_0
    const-string v0, "HwAppAuth"

    const-string v1, "initTee"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lhuawei/android/security/fileprotect/HwAppAuth;->nativeInitTee()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwAppAuth"

    const-string v2, "error, initTee failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public static installPackage(Lhuawei/android/security/fileprotect/HwaaPackageInfo;)V
    .locals 3
    .param p0, "packageInfo"    # Lhuawei/android/security/fileprotect/HwaaPackageInfo;

    .line 107
    :try_start_0
    const-string v0, "HwAppAuth"

    const-string v1, "installPackage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {p0}, Lhuawei/android/security/fileprotect/HwAppAuth;->nativeInstallPackage(Lhuawei/android/security/fileprotect/HwaaPackageInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "HwAppAuth"

    const-string v1, "installPackage ret not ok"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwAppAuth"

    const-string v2, "error, installPackage failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public static isFeatureSupported()Z
    .locals 4

    .line 73
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lhuawei/android/security/fileprotect/HwAppAuth;->nativeGetHwaaVersion()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "HwAppAuth"

    const-string v3, "error, isFeatureSupported failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    return v0
.end method

.method private static native nativeGetHwaaVersion()I
.end method

.method private static native nativeHwAppAuthClassInit()I
.end method

.method private static native nativeInitTee()V
.end method

.method private static native nativeInstallPackage(Lhuawei/android/security/fileprotect/HwaaPackageInfo;)I
.end method

.method private static native nativeSyncInstalledPackages([Lhuawei/android/security/fileprotect/HwaaPackageInfo;)I
.end method

.method private static native nativeUninstallPackage(Lhuawei/android/security/fileprotect/HwaaPackageInfo;)I
.end method

.method public static prepare()Z
    .locals 4

    .line 46
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "HwAppAuth"

    const-string v2, "prepare jni"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lhuawei/android/security/fileprotect/HwAppAuth;->nativeHwAppAuthClassInit()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "HwAppAuth"

    const-string v3, "error, prepare failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    return v0
.end method

.method public static syncInstalledPackages([Lhuawei/android/security/fileprotect/HwaaPackageInfo;)V
    .locals 3
    .param p0, "packageInfos"    # [Lhuawei/android/security/fileprotect/HwaaPackageInfo;

    .line 89
    :try_start_0
    const-string v0, "HwAppAuth"

    const-string v1, "syncInstalledPackages"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {p0}, Lhuawei/android/security/fileprotect/HwAppAuth;->nativeSyncInstalledPackages([Lhuawei/android/security/fileprotect/HwaaPackageInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "HwAppAuth"

    const-string v1, "syncInstalledPackages ret not ok"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwAppAuth"

    const-string v2, "error, syncInstalledPackages failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public static uninstallPackage(Lhuawei/android/security/fileprotect/HwaaPackageInfo;)V
    .locals 3
    .param p0, "packageInfo"    # Lhuawei/android/security/fileprotect/HwaaPackageInfo;

    .line 125
    :try_start_0
    const-string v0, "HwAppAuth"

    const-string v1, "uninstallPackage"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p0}, Lhuawei/android/security/fileprotect/HwAppAuth;->nativeUninstallPackage(Lhuawei/android/security/fileprotect/HwaaPackageInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "HwAppAuth"

    const-string v1, "uninstallPackage ret not ok"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwAppAuth"

    const-string v2, "error, uninstallPackage failed:"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method
