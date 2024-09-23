.class final Landroid/util/ERecoveryNative;
.super Ljava/lang/Object;
.source "ERecoveryNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    :try_start_0
    const-string v0, "ERecovery"

    const-string v1, "Load library erecovery_jni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    const-string v0, "erecovery_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "ERecovery"

    const-string v2, "Library erecovery_jni not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native eRecoveryReport(Landroid/util/ERecoveryEvent;)J
.end method
