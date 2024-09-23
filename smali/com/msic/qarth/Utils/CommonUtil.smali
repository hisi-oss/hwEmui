.class public Lcom/msic/qarth/Utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineCpuAbi(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    const-string v0, "ro.product.cpu.abi"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "cpuAbi":Ljava/lang/String;
    if-nez p0, :cond_2

    .line 23
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    :cond_0
    const-string v0, "armeabi-v7a"

    .line 26
    :cond_1
    return-object v0

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 30
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3

    .line 31
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 32
    if-nez v0, :cond_3

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 33
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 36
    :cond_3
    return-object v0
.end method
