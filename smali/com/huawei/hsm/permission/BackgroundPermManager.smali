.class public Lcom/huawei/hsm/permission/BackgroundPermManager;
.super Ljava/lang/Object;
.source "BackgroundPermManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackgroundPermManager"

.field private static mInstance:Lcom/huawei/hsm/permission/BackgroundPermManager;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hsm/permission/BackgroundPermManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/huawei/hsm/permission/BackgroundPermManager;
    .locals 2

    .line 21
    sget-object v0, Lcom/huawei/hsm/permission/BackgroundPermManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/huawei/hsm/permission/BackgroundPermManager;->mInstance:Lcom/huawei/hsm/permission/BackgroundPermManager;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/huawei/hsm/permission/BackgroundPermManager;

    invoke-direct {v1}, Lcom/huawei/hsm/permission/BackgroundPermManager;-><init>()V

    sput-object v1, Lcom/huawei/hsm/permission/BackgroundPermManager;->mInstance:Lcom/huawei/hsm/permission/BackgroundPermManager;

    .line 25
    :cond_0
    sget-object v1, Lcom/huawei/hsm/permission/BackgroundPermManager;->mInstance:Lcom/huawei/hsm/permission/BackgroundPermManager;

    monitor-exit v0

    return-object v1

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public notifyBackgroundMgr(Ljava/lang/String;IIII)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uidOf3RdApk"    # I
    .param p4, "permType"    # I
    .param p5, "permCfg"    # I

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 32
    .local v0, "identify":J
    :try_start_0
    const-string v2, "BackgroundPermManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,uidOf3RdApk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,permType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,permCfg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p1, p2, p3, p4, p5}, Lcom/huawei/hsm/permission/StubController;->notifyBackgroundMgr(Ljava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    nop

    .line 39
    return-void

    .line 37
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
