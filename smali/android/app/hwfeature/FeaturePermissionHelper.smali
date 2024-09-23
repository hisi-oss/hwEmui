.class public Landroid/app/hwfeature/FeaturePermissionHelper;
.super Ljava/lang/Object;
.source "FeaturePermissionHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FeaturePermissionHelper"

.field private static mInstance:Landroid/app/hwfeature/FeaturePermissionHelper;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final isPermission:Z

.field private mFeatureManager:Landroid/app/hwfeature/HwFeatureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Landroid/app/hwfeature/FeaturePermissionHelper;->mInstance:Landroid/app/hwfeature/FeaturePermissionHelper;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/hwfeature/FeaturePermissionHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/hwfeature/FeaturePermissionHelper;->mFeatureManager:Landroid/app/hwfeature/HwFeatureManager;

    .line 17
    invoke-static {}, Landroid/app/hwfeature/HwFeatureManager;->getInstance()Landroid/app/hwfeature/HwFeatureManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/hwfeature/FeaturePermissionHelper;->mFeatureManager:Landroid/app/hwfeature/HwFeatureManager;

    .line 19
    iget-object v0, p0, Landroid/app/hwfeature/FeaturePermissionHelper;->mFeatureManager:Landroid/app/hwfeature/HwFeatureManager;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Landroid/app/hwfeature/FeaturePermissionHelper;->mFeatureManager:Landroid/app/hwfeature/HwFeatureManager;

    invoke-virtual {v0, p1}, Landroid/app/hwfeature/HwFeatureManager;->requestPermission(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/hwfeature/FeaturePermissionHelper;->isPermission:Z

    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/hwfeature/FeaturePermissionHelper;->isPermission:Z

    .line 27
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/hwfeature/FeaturePermissionHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 30
    sget-object v0, Landroid/app/hwfeature/FeaturePermissionHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Landroid/app/hwfeature/FeaturePermissionHelper;->mInstance:Landroid/app/hwfeature/FeaturePermissionHelper;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Landroid/app/hwfeature/FeaturePermissionHelper;

    invoke-direct {v1, p0}, Landroid/app/hwfeature/FeaturePermissionHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/app/hwfeature/FeaturePermissionHelper;->mInstance:Landroid/app/hwfeature/FeaturePermissionHelper;

    .line 34
    :cond_0
    sget-object v1, Landroid/app/hwfeature/FeaturePermissionHelper;->mInstance:Landroid/app/hwfeature/FeaturePermissionHelper;

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static setInstacnece()V
    .locals 2

    .line 53
    sget-object v0, Landroid/app/hwfeature/FeaturePermissionHelper;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/app/hwfeature/FeaturePermissionHelper;->mInstance:Landroid/app/hwfeature/FeaturePermissionHelper;

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkPermission()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Landroid/app/hwfeature/FeaturePermissionHelper;->isPermission:Z

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    invoke-static {}, Landroid/app/hwfeature/FeaturePermissionHelper;->setInstacnece()V

    .line 48
    const/4 v0, 0x0

    return v0
.end method
