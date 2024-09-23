.class public final Landroid/rms/resource/PidsResource;
.super Landroid/rms/HwSysResImpl;
.source "PidsResource.java"


# static fields
.field private static final DAEMON_PIDS_CGROUP:Ljava/lang/String; = "/sys/fs/cgroup/pids/daemon_proc/cgroup.procs"

.field private static final DAEMON_PIDS_CGROUP_LIMIT:Ljava/lang/String; = "/sys/fs/cgroup/pids/daemon_proc/pids.group_limit"

.field private static final PIDS_CGROUP:Ljava/lang/String; = "/sys/fs/cgroup/pids/unconfirm_app/cgroup.procs"

.field private static final PIDS_CGROUP_LIMIT:Ljava/lang/String; = "/sys/fs/cgroup/pids/unconfirm_app/pids.group_limit"

.field private static final PIDS_HISTORY:Ljava/lang/String; = "/data/log/reliability/rms_log/"

.field private static final TAG:Ljava/lang/String; = "RMS.PidsResource"

.field private static mPidsCgroupLimitList:[Ljava/lang/String;

.field private static mPidsResource:Landroid/rms/resource/PidsResource;

.field private static final mWhiteListTypes:[I


# instance fields
.field private volatile mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-string v0, "/sys/fs/cgroup/pids/unconfirm_app/pids.group_limit"

    const-string v1, "/sys/fs/cgroup/pids/daemon_proc/pids.group_limit"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/rms/resource/PidsResource;->mPidsCgroupLimitList:[Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sput-object v0, Landroid/rms/resource/PidsResource;->mWhiteListTypes:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 55
    const-string v0, "RMS.PidsResource"

    sget-object v1, Landroid/rms/resource/PidsResource;->mWhiteListTypes:[I

    const/16 v2, 0xf

    invoke-direct {p0, v2, v0, v1}, Landroid/rms/HwSysResImpl;-><init>(ILjava/lang/String;[I)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/rms/resource/PidsResource;->mValid:Z

    .line 56
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/rms/resource/PidsResource;
    .locals 3

    const-class v0, Landroid/rms/resource/PidsResource;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Landroid/rms/resource/PidsResource;->mPidsResource:Landroid/rms/resource/PidsResource;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Landroid/rms/resource/PidsResource;

    invoke-direct {v1}, Landroid/rms/resource/PidsResource;-><init>()V

    sput-object v1, Landroid/rms/resource/PidsResource;->mPidsResource:Landroid/rms/resource/PidsResource;

    .line 61
    sget-object v1, Landroid/rms/resource/PidsResource;->mPidsResource:Landroid/rms/resource/PidsResource;

    invoke-virtual {v1}, Landroid/rms/resource/PidsResource;->getConfig()Z

    .line 62
    sget-boolean v1, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "RMS.PidsResource"

    const-string v2, "PidsResource create new resource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    sget-object v1, Landroid/rms/resource/PidsResource;->mPidsResource:Landroid/rms/resource/PidsResource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public acquire(ILjava/lang/String;I)I
    .locals 3
    .param p1, "tgid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "processTpye"    # I

    .line 72
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RMS.PidsResource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquire valid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/rms/resource/PidsResource;->mValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "tgid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-boolean v0, p0, Landroid/rms/resource/PidsResource;->mValid:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/rms/resource/PidsResource;->isInWhiteList(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const-string v0, "/sys/fs/cgroup/pids/unconfirm_app/cgroup.procs"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/utils/Utils;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 75
    :cond_1
    iget-boolean v0, p0, Landroid/rms/resource/PidsResource;->mValid:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne v0, p3, :cond_2

    .line 76
    const-string v0, "/sys/fs/cgroup/pids/daemon_proc/cgroup.procs"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/utils/Utils;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final init([Ljava/lang/String;)V
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;

    .line 84
    array-length v0, p1

    .line 85
    .local v0, "count":I
    if-gtz v0, :cond_0

    return-void

    .line 89
    :cond_0
    const-string v1, "/data/log/reliability/rms_log/"

    invoke-static {v1}, Landroid/rms/utils/Utils;->generateDirectory(Ljava/lang/String;)Z

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 91
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/rms/resource/PidsResource;->mPidsCgroupLimitList:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "cgroup":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    iput-boolean v3, p0, Landroid/rms/resource/PidsResource;->mValid:Z

    .line 93
    iget-boolean v3, p0, Landroid/rms/resource/PidsResource;->mValid:Z

    if-eqz v3, :cond_1

    .line 94
    sget-object v3, Landroid/rms/resource/PidsResource;->mPidsCgroupLimitList:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Landroid/rms/utils/Utils;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    .end local v2    # "cgroup":Ljava/io/File;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
