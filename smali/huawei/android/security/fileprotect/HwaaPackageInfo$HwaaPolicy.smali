.class Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;
.super Ljava/lang/Object;
.source "HwaaPackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/fileprotect/HwaaPackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HwaaPolicy"
.end annotation


# static fields
.field private static final DEFAULT_FILE_EXTS:Ljava/lang/String; = ".db|.db-shm|.db-wal"


# instance fields
.field private mDataDir:Ljava/lang/String;

.field private mFileExt:Ljava/lang/String;

.field private mIsSubDirsIncluded:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "dataDir"    # Ljava/lang/String;

    .line 224
    const-string v0, ".db|.db-shm|.db-wal"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 225
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lhuawei/android/security/fileprotect/HwaaPackageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lhuawei/android/security/fileprotect/HwaaPackageInfo$1;

    .line 214
    invoke-direct {p0, p1}, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "dataDir"    # Ljava/lang/String;
    .param p2, "fileExt"    # Ljava/lang/String;
    .param p3, "isSubDirsIncluded"    # Z

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mDataDir:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mFileExt:Ljava/lang/String;

    .line 230
    iput-boolean p3, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mIsSubDirsIncluded:Z

    .line 231
    iget-object v0, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mDataDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mDataDir:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mDataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mDataDir:Ljava/lang/String;

    .line 234
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;

    .line 214
    iget-object v0, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;

    .line 214
    iget-object v0, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mFileExt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;

    .line 214
    iget-boolean v0, p0, Lhuawei/android/security/fileprotect/HwaaPackageInfo$HwaaPolicy;->mIsSubDirsIncluded:Z

    return v0
.end method
