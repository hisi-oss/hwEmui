.class public Lcom/msic/qarth/PatchStore;
.super Ljava/lang/Object;
.source "PatchStore.java"


# static fields
.field private static final INVALID_UID:I = -0x1

.field private static final PACKAGE_DISABLE_PATCH_OVERLAY_ROOT:Ljava/lang/String; = "/data/hotpatch/fwkpatchdir/"

.field private static final PACKAGE_PATCH_OVERLAY_ROOT:Ljava/lang/String;

.field private static final SYSTEM_DISABLE_PATCH_OVERLAY_ROOT:Ljava/lang/String; = "/data/hotpatch/fwkpatchdir/system/"

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_PATCH_STORE:Ljava/lang/String; = "THREAD_PATCH_STORE"

.field private static loadedPatchPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/msic/qarth/Constants;->FWK_HOT_PATCH_PATH:Ljava/lang/String;

    sput-object v0, Lcom/msic/qarth/PatchStore;->PACKAGE_PATCH_OVERLAY_ROOT:Ljava/lang/String;

    .line 33
    const-class v0, Lcom/msic/qarth/PatchStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/msic/qarth/PatchStore;->loadedPatchPaths:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Qarth check app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1}, Lcom/msic/qarth/PatchStore;->checkOrRunAll(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static check(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 60
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Qarth check System server : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {p0, p1, p2}, Lcom/msic/qarth/PatchStore;->checkSystemRunAll(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 62
    return-void
.end method

.method private static checkAndLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 106
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    const-string v4, "------------------------------------------------------"

    invoke-static {v0, v4}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start load patch. packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", patchPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    const-string v4, "------------------------------------------------------"

    invoke-static {v0, v4}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 111
    .local v4, "start":J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 112
    .local v6, "pkgDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "patch path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return v7

    .line 118
    :cond_0
    const/4 v0, 0x0

    move-object v8, v0

    .line 120
    .local v8, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    .line 121
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    sget-object v9, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "systemserver"

    .line 123
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 124
    const/16 v9, 0x80

    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    .line 129
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .local v0, "info":Landroid/content/pm/PackageInfo;
    move-object v8, v0

    goto :goto_0

    .line 127
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "not find in system"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    nop

    .line 131
    :goto_1
    if-eqz v8, :cond_2

    .line 132
    sget-boolean v0, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 133
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", versionName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", versionCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    const-string v9, "empty patch path"

    invoke-static {v0, v9}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return v7

    .line 144
    :cond_3
    sget-boolean v0, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 145
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t==> elapse time 1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_4
    if-nez v8, :cond_5

    new-instance v0, Lcom/msic/qarth/PatchFileFilter;

    invoke-direct {v0}, Lcom/msic/qarth/PatchFileFilter;-><init>()V

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/msic/qarth/PatchFileFilter;

    invoke-direct {v0, v8}, Lcom/msic/qarth/PatchFileFilter;-><init>(Landroid/content/pm/PackageInfo;)V

    .line 149
    .local v0, "fileFilter":Lcom/msic/qarth/PatchFileFilter;
    :goto_2
    invoke-virtual {v6, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 150
    invoke-virtual {v0}, Lcom/msic/qarth/PatchFileFilter;->getPatchFiles()Ljava/util/List;

    move-result-object v9

    .line 152
    .local v9, "patchFiles":Ljava/util/List;, "Ljava/util/List<Lcom/msic/qarth/PatchFile;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/hotpatch/fwkpatchdir/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, "pkgDisPath":Ljava/lang/String;
    sget-object v11, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 154
    const-string v10, "/data/hotpatch/fwkpatchdir/system/all"

    goto :goto_3

    .line 155
    :cond_6
    const-string v11, "systemserver"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 156
    const-string v10, "/data/hotpatch/fwkpatchdir/system/systemserver"

    goto :goto_3

    .line 158
    :cond_7
    sget-object v11, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkAndLoad single package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_3
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v11, "pkgDisDir":Ljava/io/File;
    if-nez v8, :cond_8

    new-instance v12, Lcom/msic/qarth/PatchDisFileFilter;

    invoke-direct {v12, v2}, Lcom/msic/qarth/PatchDisFileFilter;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 163
    :cond_8
    new-instance v12, Lcom/msic/qarth/PatchDisFileFilter;

    invoke-direct {v12, v8, v2}, Lcom/msic/qarth/PatchDisFileFilter;-><init>(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 165
    .local v12, "disFileFilter":Lcom/msic/qarth/PatchDisFileFilter;
    :goto_4
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_b

    .line 166
    invoke-virtual {v11, v12}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 167
    invoke-virtual {v12}, Lcom/msic/qarth/PatchDisFileFilter;->getDisPatchFiles()Ljava/util/List;

    move-result-object v13

    .line 168
    .local v13, "disPatchFiles":Ljava/util/List;, "Ljava/util/List<Lcom/msic/qarth/PatchFile;>;"
    sget-object v15, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v1, :cond_a

    const-string v15, "android"

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v14

    if-nez v7, :cond_a

    .line 172
    new-instance v7, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/data/hotpatch/fwkpatchdir/"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v7, "pkgDisDirOwn":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 174
    if-nez v8, :cond_9

    new-instance v14, Lcom/msic/qarth/PatchDisFileFilter;

    invoke-direct {v14, v2}, Lcom/msic/qarth/PatchDisFileFilter;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 175
    :cond_9
    new-instance v14, Lcom/msic/qarth/PatchDisFileFilter;

    invoke-direct {v14, v8, v2}, Lcom/msic/qarth/PatchDisFileFilter;-><init>(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 176
    .local v14, "disFileFilterOwn":Lcom/msic/qarth/PatchDisFileFilter;
    :goto_5
    invoke-virtual {v7, v14}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 177
    invoke-virtual {v14}, Lcom/msic/qarth/PatchDisFileFilter;->getDisPatchFiles()Ljava/util/List;

    move-result-object v15

    .line 178
    .local v15, "disPatchFilesOwn":Ljava/util/List;, "Ljava/util/List<Lcom/msic/qarth/PatchFile;>;"
    invoke-interface {v13, v15}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 179
    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    .end local v7    # "pkgDisDirOwn":Ljava/io/File;
    .end local v14    # "disFileFilterOwn":Lcom/msic/qarth/PatchDisFileFilter;
    .end local v15    # "disPatchFilesOwn":Ljava/util/List;, "Ljava/util/List<Lcom/msic/qarth/PatchFile;>;"
    :cond_a
    invoke-interface {v9, v13}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 185
    .end local v13    # "disPatchFiles":Ljava/util/List;, "Ljava/util/List<Lcom/msic/qarth/PatchFile;>;"
    :cond_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c

    .line 186
    sget-object v7, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no patch file in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v7, 0x0

    return v7

    .line 190
    :cond_c
    sget-boolean v7, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v7, :cond_d

    .line 191
    sget-object v7, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\t==> elapse time 1.1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v4

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_d
    sget-boolean v7, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v7, :cond_e

    .line 195
    sget-object v7, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "patch files : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v7, "loadList":Ljava/util/List;, "Ljava/util/List<Lcom/msic/qarth/QarthContext;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/msic/qarth/PatchFile;

    .line 202
    .local v14, "patchFile":Lcom/msic/qarth/PatchFile;
    new-instance v15, Lcom/msic/qarth/QarthContext;

    invoke-direct {v15}, Lcom/msic/qarth/QarthContext;-><init>()V

    .line 203
    .local v15, "qc":Lcom/msic/qarth/QarthContext;
    iput-object v2, v15, Lcom/msic/qarth/QarthContext;->packageName:Ljava/lang/String;

    .line 204
    iput-object v1, v15, Lcom/msic/qarth/QarthContext;->context:Landroid/content/Context;

    .line 205
    move-object/from16 v16, v0

    invoke-static/range {p0 .. p0}, Lcom/msic/qarth/Utils/CommonUtil;->determineCpuAbi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "fileFilter":Lcom/msic/qarth/PatchFileFilter;
    .local v16, "fileFilter":Lcom/msic/qarth/PatchFileFilter;
    iput-object v0, v15, Lcom/msic/qarth/QarthContext;->cpuAbi:Ljava/lang/String;

    .line 206
    move-object/from16 v1, p3

    iput-object v1, v15, Lcom/msic/qarth/QarthContext;->qarthClassLoader:Ljava/lang/ClassLoader;

    .line 207
    iput-object v14, v15, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    .line 208
    iget-object v0, v15, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v0}, Lcom/msic/qarth/PatchFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, v15, Lcom/msic/qarth/QarthContext;->qarthFile:Ljava/io/File;

    .line 210
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v14    # "patchFile":Lcom/msic/qarth/PatchFile;
    .end local v15    # "qc":Lcom/msic/qarth/QarthContext;
    nop

    .line 200
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    goto :goto_6

    .line 212
    .end local v16    # "fileFilter":Lcom/msic/qarth/PatchFileFilter;
    .restart local v0    # "fileFilter":Lcom/msic/qarth/PatchFileFilter;
    :cond_f
    move-object/from16 v1, p3

    move-object/from16 v16, v0

    .end local v0    # "fileFilter":Lcom/msic/qarth/PatchFileFilter;
    .restart local v16    # "fileFilter":Lcom/msic/qarth/PatchFileFilter;
    sget-boolean v0, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 213
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\t==> elapse time 2: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v4

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/msic/qarth/QarthContext;

    .line 217
    .local v13, "qc":Lcom/msic/qarth/QarthContext;
    sget-object v14, Lcom/msic/qarth/PatchStore;->loadedPatchPaths:Ljava/util/Set;

    iget-object v15, v13, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v15}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    .line 218
    sget-object v14, Lcom/msic/qarth/PatchStore;->loadedPatchPaths:Ljava/util/Set;

    iget-object v15, v13, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v15}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 219
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add patch ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/msic/qarth/QarthContext;->qarthFile:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] to set failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v14, 0x0

    return v14

    .line 222
    :cond_11
    const/4 v14, 0x0

    invoke-static {}, Lcom/msic/qarth/PatchLoader;->getInstance()Lcom/msic/qarth/PatchLoader;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/msic/qarth/PatchLoader;->load(Lcom/msic/qarth/QarthContext;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 223
    sget-object v15, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "load patch ["

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/msic/qarth/QarthContext;->qarthFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] failed"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/msic/qarth/PatchStore;->loadedPatchPaths:Ljava/util/Set;

    iget-object v14, v13, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v14}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 229
    .end local v13    # "qc":Lcom/msic/qarth/QarthContext;
    :cond_12
    move-object/from16 v17, v0

    goto :goto_8

    .line 227
    .restart local v13    # "qc":Lcom/msic/qarth/QarthContext;
    :cond_13
    move-object/from16 v17, v0

    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "patch file : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v13, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v15}, Lcom/msic/qarth/PatchFile;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", repeated loading"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v13    # "qc":Lcom/msic/qarth/QarthContext;
    :goto_8
    nop

    .line 216
    move-object/from16 v0, v17

    goto/16 :goto_7

    .line 231
    :cond_14
    sget-boolean v0, Lcom/msic/qarth/Constants;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 232
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\t==> elapse time 3: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v4

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private static checkOrRunAll(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/msic/qarth/PatchStore;->PACKAGE_PATCH_OVERLAY_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "qarthPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "qarthPathFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 76
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 77
    sget-object v3, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {p0, v3, v0, v4}, Lcom/msic/qarth/PatchStore;->checkAndLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 81
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/msic/qarth/PatchStore;->PACKAGE_PATCH_OVERLAY_ROOT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p0, p1, v0, v2}, Lcom/msic/qarth/PatchStore;->checkAndLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 83
    return-void
.end method

.method private static checkSystemRunAll(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/msic/qarth/PatchStore;->PACKAGE_PATCH_OVERLAY_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "path":Ljava/lang/String;
    invoke-static {p0, p1, v0, p2}, Lcom/msic/qarth/PatchStore;->checkAndLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/msic/qarth/PatchStore;->PACKAGE_PATCH_OVERLAY_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {p0, p1, v0, p2}, Lcom/msic/qarth/PatchStore;->checkAndLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/msic/qarth/PatchStore;->PACKAGE_PATCH_OVERLAY_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "allPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, "qarthPathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 99
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-eqz v4, :cond_1

    .line 100
    sget-object v4, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    invoke-static {p0, v4, v1, p2}, Lcom/msic/qarth/PatchStore;->checkAndLoad(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    .line 103
    .end local v3    # "files":[Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static createDisableExceptionQarthFile(Ljava/lang/Throwable;)Z
    .locals 6
    .param p0, "throwInfor"    # Ljava/lang/Throwable;

    .line 245
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    const-string v1, "createDisableExceptionQarthFile"

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 247
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 252
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 253
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    return v1

    .line 256
    :cond_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2

    .line 257
    sget-object v3, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create disable file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return v1

    .line 261
    :cond_2
    invoke-static {}, Lcom/msic/qarth/QarthDisFileCreator;->getQarthDisFileCreator()Lcom/msic/qarth/QarthDisFileCreator;

    move-result-object v3

    .line 262
    .local v3, "qarthDisFileCreator":Lcom/msic/qarth/QarthDisFileCreator;
    if-eqz v3, :cond_3

    .line 263
    invoke-virtual {v3, p0, v2}, Lcom/msic/qarth/QarthDisFileCreator;->disableExceptionQarthPatch(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 265
    :cond_3
    return v1

    .line 248
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "qarthDisFileCreator":Lcom/msic/qarth/QarthDisFileCreator;
    :cond_4
    :goto_0
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    const-string v2, "current thread application info is null"

    invoke-static {v0, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return v1
.end method

.method public static handleApplicationCrashForThirdParty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "exceptionMessage"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 284
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {}, Lcom/msic/qarth/QarthDisFileCreator;->getQarthDisFileCreator()Lcom/msic/qarth/QarthDisFileCreator;

    move-result-object v0

    .line 290
    .local v0, "qarthDisFileCreator":Lcom/msic/qarth/QarthDisFileCreator;
    if-nez v0, :cond_1

    .line 291
    sget-object v1, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    const-string v2, "the qarth creator is null"

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/msic/qarth/PatchStore$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/msic/qarth/PatchStore$1;-><init>(Lcom/msic/qarth/QarthDisFileCreator;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "THREAD_PATCH_STORE"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 301
    return-void

    .line 285
    .end local v0    # "qarthDisFileCreator":Lcom/msic/qarth/QarthDisFileCreator;
    :cond_2
    :goto_0
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    const-string v1, "the parameter is invalid to create disable file for third party"

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public static isSystemApp(Ljava/lang/String;)Z
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "isSystem":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 312
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 317
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 318
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 319
    return v2

    .line 322
    :cond_1
    :try_start_0
    invoke-virtual {v3, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 323
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    move v2, v6

    nop

    :cond_2
    return v2

    .line 324
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .line 325
    .local v4, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package info is not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to judge is system app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .end local v4    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2

    .line 313
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_0
    return v2
.end method

.method public static killCrashApplication()V
    .locals 2

    .line 272
    sget-object v0, Lcom/msic/qarth/PatchStore;->TAG:Ljava/lang/String;

    const-string v1, "killCrashApplication"

    invoke-static {v0, v1}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 274
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 275
    return-void
.end method
