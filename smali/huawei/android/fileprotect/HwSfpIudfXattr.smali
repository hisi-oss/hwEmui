.class public Lhuawei/android/fileprotect/HwSfpIudfXattr;
.super Ljava/lang/Object;
.source "HwSfpIudfXattr.java"


# static fields
.field private static final LINK_ERROR:I = -0x2

.field private static final TAG:Ljava/lang/String; = "HwSfpIudfXattr"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    :try_start_0
    const-string v0, "iudf_xattr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "HwSfpIudfXattr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jni, loadLibrary error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const-string v1, "HwSfpIudfXattr"

    const-string v2, "error, load libisecurity failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native getFileXattr(Ljava/lang/String;I)I
.end method

.method public static final getFileXattrEx(Ljava/lang/String;I)I
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 33
    const/4 v0, -0x2

    .line 35
    .local v0, "result":I
    :try_start_0
    invoke-static {p0, p1}, Lhuawei/android/fileprotect/HwSfpIudfXattr;->getFileXattr(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 38
    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "HwSfpIudfXattr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error, nativeGetFileXattr failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v0
.end method

.method public static final native setFileXattr(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public static final setFileXattrEx(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "storageType"    # I
    .param p3, "fileType"    # I

    .line 23
    const/4 v0, -0x2

    .line 25
    .local v0, "result":I
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lhuawei/android/fileprotect/HwSfpIudfXattr;->setFileXattr(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 28
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "HwSfpIudfXattr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error, nativeSetFileXattr failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v0
.end method
