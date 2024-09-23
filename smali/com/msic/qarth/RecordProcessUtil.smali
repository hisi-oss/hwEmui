.class public Lcom/msic/qarth/RecordProcessUtil;
.super Ljava/lang/Object;
.source "RecordProcessUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static invokeResultSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FILE_LOG_SUFFIX:Ljava/lang/String;

.field private final FILE_NAME_SEPARATOR:Ljava/lang/String;

.field private final FILE_SUC_SUFFIX:Ljava/lang/String;

.field public final NO_ERROR:I

.field public final QARTH_FIND_CLASS_ERR:I

.field public final QARTH_FIND_METHOD_ERR:I

.field public final QARTH_HOOK_UNAUTHORIZED:I

.field public final QARTH_ORIGINAL_METHOD:I

.field private final RECORD_DIR:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPatchFileName:Ljava/lang/String;

.field private mRecordFileDir:Ljava/lang/String;

.field private mRecordFileName:Ljava/lang/String;

.field private mRecordFileNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/msic/qarth/RecordProcessUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/msic/qarth/RecordProcessUtil;->invokeResultSet:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lcom/msic/qarth/QarthContext;)V
    .locals 2
    .param p1, "qc"    # Lcom/msic/qarth/QarthContext;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ".log"

    iput-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->FILE_LOG_SUFFIX:Ljava/lang/String;

    .line 26
    const-string v0, ".success"

    iput-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->FILE_SUC_SUFFIX:Ljava/lang/String;

    .line 27
    const-string v0, "_"

    iput-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->FILE_NAME_SEPARATOR:Ljava/lang/String;

    .line 28
    const-string v0, "/data/hotpatch/fwkpatchdir"

    iput-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->RECORD_DIR:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/msic/qarth/RecordProcessUtil;->NO_ERROR:I

    .line 31
    const/4 v1, 0x1

    iput v1, p0, Lcom/msic/qarth/RecordProcessUtil;->QARTH_HOOK_UNAUTHORIZED:I

    .line 32
    const/4 v1, 0x2

    iput v1, p0, Lcom/msic/qarth/RecordProcessUtil;->QARTH_ORIGINAL_METHOD:I

    .line 33
    const/4 v1, 0x3

    iput v1, p0, Lcom/msic/qarth/RecordProcessUtil;->QARTH_FIND_CLASS_ERR:I

    .line 34
    const/4 v1, 0x4

    iput v1, p0, Lcom/msic/qarth/RecordProcessUtil;->QARTH_FIND_METHOD_ERR:I

    .line 42
    iput v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I

    .line 52
    iget-object v0, p1, Lcom/msic/qarth/QarthContext;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    .line 53
    iget-object v0, p1, Lcom/msic/qarth/QarthContext;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mPackageName:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/msic/qarth/QarthContext;->patchFile:Lcom/msic/qarth/PatchFile;

    invoke-virtual {v0}, Lcom/msic/qarth/PatchFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mPatchFileName:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/msic/qarth/RecordProcessUtil;->getRecordFileDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private createRecordFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "mPath"    # Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 116
    :cond_0
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil;->invokeResultSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    return-void

    .line 120
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_2

    .line 125
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e4

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 129
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Landroid/system/ErrnoException;
    :try_start_2
    sget-object v2, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createRecordFile exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 131
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_2
    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    const-string v2, "create file failed, parent file error!!!"

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void

    .line 136
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    const-string v1, ".success"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->invokeResultSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 138
    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->invokeResultSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_4
    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    const-string v2, "create file failed, the file already exists!!!"

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 144
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_7

    .line 146
    :try_start_3
    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create status file success, and change the permission for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, ".success"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 148
    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->invokeResultSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-static {v1, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 153
    goto :goto_1

    .line 151
    :catch_1
    move-exception v1

    .line 152
    .restart local v1    # "e":Landroid/system/ErrnoException;
    :try_start_4
    sget-object v2, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createRecordFile chmod exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 157
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_7
    :goto_1
    goto :goto_2

    .line 155
    :catch_2
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create file failed, Exception!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_2
    return-void

    .line 113
    :cond_8
    :goto_3
    return-void
.end method

.method private getRecordFileDir()Ljava/lang/String;
    .locals 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/hotpatch/fwkpatchdir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "dir":Ljava/lang/String;
    const-string v1, "COMMON_HOOK"

    iget-object v2, p0, Lcom/msic/qarth/RecordProcessUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v0, "/data/hotpatch/fwkpatchdir/system/all"

    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mPackageName:Ljava/lang/String;

    const-string v2, "systemserver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v0, "/data/hotpatch/fwkpatchdir/system/systemserver"

    goto :goto_0

    .line 65
    :cond_1
    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecordFileDir PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-object v0
.end method

.method private getRecordFileInfo()Z
    .locals 12

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "([a-zA-Z]+)_([0-9])_("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mPatchFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")_([0-9]).log$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "fileRegex":Ljava/lang/String;
    sget-object v1, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/msic/qarth/RecordProcessUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    const-string v1, "android"

    iget-object v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/hotpatch/fwkpatchdir"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    .line 81
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 83
    sget-object v2, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the recorded dir is not exist:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return v4

    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 87
    .local v3, "mRecordFiles":[Ljava/io/File;
    if-eqz v3, :cond_5

    array-length v5, v3

    if-nez v5, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    array-length v5, v3

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v3, v6

    .line 92
    .local v7, "f":Ljava/io/File;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 93
    .local v8, "mFileMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 94
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileName:Ljava/lang/String;

    .line 96
    const/4 v9, 0x4

    :try_start_0
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return v2

    .line 98
    :catch_0
    move-exception v9

    .line 99
    .local v9, "ex":Ljava/lang/NumberFormatException;
    sget-object v10, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    const-string v11, "parse record number exception"

    invoke-static {v10, v11}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "mFileMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    :cond_4
    iput v4, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I

    .line 106
    return v4

    .line 88
    :cond_5
    :goto_1
    sget-object v2, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    const-string v5, "there is no recorded file in the dir"

    invoke-static {v2, v5}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return v4
.end method

.method private renameRecordFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .line 161
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the renamed status file name is same:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/msic/qarth/QarthLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return v1

    .line 166
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "oldFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    sget-object v3, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename file success, old name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " new name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return v1

    .line 169
    :cond_2
    :goto_0
    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    const-string v3, "rename recorded file failed."

    invoke-static {v1, v3}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v1, 0x0

    return v1
.end method

.method private updateRecordFile(Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;I)V
    .locals 7
    .param p1, "recordStatusEnum"    # Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;
    .param p2, "errorCode"    # I

    .line 177
    invoke-direct {p0}, Lcom/msic/qarth/RecordProcessUtil;->getRecordFileInfo()Z

    move-result v0

    .line 179
    .local v0, "isRecorded":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I

    if-lt v2, v1, :cond_0

    .line 180
    sget-object v1, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the status file count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " file name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .line 184
    :cond_0
    const-string v2, ""

    .line 185
    .local v2, "recordFileStatus":Ljava/lang/String;
    sget-object v3, Lcom/msic/qarth/RecordProcessUtil$1;->$SwitchMap$com$msic$qarth$RecordProcessUtil$RecordStatusEnum:[I

    invoke-virtual {p1}, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    const-string v2, "success"

    .line 198
    iget v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I

    .line 199
    goto :goto_0

    .line 193
    :pswitch_1
    const-string v2, "failed"

    .line 194
    iget v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I

    .line 195
    goto :goto_0

    .line 190
    :pswitch_2
    const-string v2, "loading"

    .line 191
    goto :goto_0

    .line 187
    :pswitch_3
    const-string v2, "downloaded"

    .line 188
    nop

    .line 203
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/msic/qarth/RecordProcessUtil;->mPatchFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileNum:I

    .line 205
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "fileName":Ljava/lang/String;
    sget-object v4, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    iget-object v5, p0, Lcom/msic/qarth/RecordProcessUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    const-string v4, "android"

    iget-object v5, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/hotpatch/fwkpatchdir"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    .line 214
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "path":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 216
    sget-object v4, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the dir is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " rename file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    iget-object v5, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v3}, Lcom/msic/qarth/RecordProcessUtil;->renameRecordFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 219
    :cond_2
    sget-object v4, Lcom/msic/qarth/RecordProcessUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create new recorded file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/msic/qarth/QarthLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v1}, Lcom/msic/qarth/RecordProcessUtil;->createRecordFile(Ljava/lang/String;)V

    .line 222
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createInvokeFileSuccess()V
    .locals 3

    .line 241
    sget-object v0, Lcom/msic/qarth/Constants;->COMMON_PATCH_PKG_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "android"

    iget-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    .line 244
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/hotpatch/fwkpatchdir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/msic/qarth/RecordProcessUtil;->mPatchFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/msic/qarth/RecordProcessUtil;->mRecordFileDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/msic/qarth/RecordProcessUtil;->createRecordFile(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public updateRecordFileDownloaded()V
    .locals 2

    .line 225
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_DOWNLOADED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/msic/qarth/RecordProcessUtil;->updateRecordFile(Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;I)V

    .line 226
    return-void
.end method

.method public updateRecordFileHookStatus(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 233
    if-nez p1, :cond_0

    .line 234
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_SUCCESS:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/msic/qarth/RecordProcessUtil;->updateRecordFile(Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;I)V

    goto :goto_0

    .line 236
    :cond_0
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_FAILED:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    invoke-direct {p0, v0, p1}, Lcom/msic/qarth/RecordProcessUtil;->updateRecordFile(Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;I)V

    .line 238
    :goto_0
    return-void
.end method

.method public updateRecordFileLoading()V
    .locals 2

    .line 229
    sget-object v0, Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;->PATCH_STATUS_LOADING:Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/msic/qarth/RecordProcessUtil;->updateRecordFile(Lcom/msic/qarth/RecordProcessUtil$RecordStatusEnum;I)V

    .line 230
    return-void
.end method
