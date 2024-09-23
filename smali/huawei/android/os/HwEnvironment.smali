.class public Lhuawei/android/os/HwEnvironment;
.super Ljava/lang/Object;
.source "HwEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;
    }
.end annotation


# static fields
.field private static final IS_SWITCH_SD_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "HwEnvironment"

.field private static sCurrentUserSd:Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    const-string v0, "true"

    const-string v1, "ro.config.switchPrimaryVolume"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/os/HwEnvironment;->IS_SWITCH_SD_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrimaryVolumeIsSD()Z
    .locals 3

    .line 83
    sget-boolean v0, Lhuawei/android/os/HwEnvironment;->IS_SWITCH_SD_ENABLED:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.primarysd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 3

    .line 53
    sget-object v0, Lhuawei/android/os/HwEnvironment;->sCurrentUserSd:Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;

    invoke-virtual {v0}, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->getExternalDirsForApp()[Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 55
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 57
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lhuawei/android/os/HwEnvironment;->sCurrentUserSd:Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;

    invoke-virtual {v0, p0}, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 63
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 64
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 66
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static getExternalStorageState()Ljava/io/File;
    .locals 3

    .line 71
    sget-object v0, Lhuawei/android/os/HwEnvironment;->sCurrentUserSd:Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;

    invoke-virtual {v0}, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    .line 72
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 73
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 75
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .line 49
    sget-object v0, Lhuawei/android/os/HwEnvironment;->sCurrentUserSd:Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;

    invoke-virtual {v0}, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->getMediaDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static initUserEnvironmentSD(I)V
    .locals 1
    .param p0, "userId"    # I

    .line 43
    sget-boolean v0, Lhuawei/android/os/HwEnvironment;->IS_SWITCH_SD_ENABLED:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;

    invoke-direct {v0, p0}, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;-><init>(I)V

    sput-object v0, Lhuawei/android/os/HwEnvironment;->sCurrentUserSd:Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;

    .line 46
    :cond_0
    return-void
.end method
