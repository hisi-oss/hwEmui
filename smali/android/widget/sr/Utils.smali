.class public Landroid/widget/sr/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final LIB_SR_CLIENT_SO:Ljava/lang/String; = "sr_client"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static sAlreadyChecked:Z

.field private static sIsSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/sr/Utils;->sIsSupport:Z

    .line 11
    sput-boolean v0, Landroid/widget/sr/Utils;->sAlreadyChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeviceOwner()Z
    .locals 2

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 39
    .local v0, "id":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSuperResolutionSupport()Z
    .locals 5

    .line 19
    sget-boolean v0, Landroid/widget/sr/Utils;->sAlreadyChecked:Z

    if-eqz v0, :cond_0

    .line 20
    sget-boolean v0, Landroid/widget/sr/Utils;->sIsSupport:Z

    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 25
    .local v0, "ret":Z
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "sr_client"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string v2, "Utils"

    const-string v3, "Utils_isSuperResolutionSupport [load libsr_client.success]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    const-string v3, "Utils"

    const-string v4, "Utils_isSuperResolutionSupport [load libsr_client.so failed]"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    sput-boolean v0, Landroid/widget/sr/Utils;->sIsSupport:Z

    .line 32
    sput-boolean v1, Landroid/widget/sr/Utils;->sAlreadyChecked:Z

    .line 33
    nop

    .line 34
    sget-boolean v1, Landroid/widget/sr/Utils;->sIsSupport:Z

    return v1

    .line 31
    :goto_1
    sput-boolean v0, Landroid/widget/sr/Utils;->sIsSupport:Z

    .line 32
    sput-boolean v1, Landroid/widget/sr/Utils;->sAlreadyChecked:Z

    throw v2
.end method
