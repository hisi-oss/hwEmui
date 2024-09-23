.class public Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;
.super Ljava/lang/Object;
.source "HwEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/os/HwEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironmentSD"
.end annotation


# instance fields
.field private final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->mUserId:I

    .line 92
    return-void
.end method


# virtual methods
.method public buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPaths([Ljava/io/File;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalDirs()[Ljava/io/File;
    .locals 4

    .line 95
    iget v0, p0, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->mUserId:I

    const/16 v1, 0x100

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 97
    .local v0, "volumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    new-array v1, v1, [Ljava/io/File;

    .line 98
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 99
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getExternalDirsForApp()[Ljava/io/File;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-virtual {p0}, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->getExternalDirs()[Ljava/io/File;

    move-result-object v0

    .line 107
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 108
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 110
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-virtual {p0, p1}, Lhuawei/android/os/HwEnvironment$UserEnvironmentSD;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 117
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 118
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 120
    :cond_0
    aget-object v1, v0, v2

    return-object v1
.end method

.method public getMediaDir()Ljava/io/File;
    .locals 1

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method
