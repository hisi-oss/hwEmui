.class public Lhuawei/android/app/HwAlarmManagerEx;
.super Ljava/lang/Object;
.source "HwAlarmManagerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwAlarmManagerEx"

.field private static volatile mInstance:Lhuawei/android/app/HwAlarmManagerEx;


# instance fields
.field mService:Lhuawei/android/app/IHwAlarmManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/app/HwAlarmManagerEx;->mInstance:Lhuawei/android/app/HwAlarmManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/app/HwAlarmManagerEx;->mService:Lhuawei/android/app/IHwAlarmManagerEx;

    .line 28
    const-string v0, "hwAlarmService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 29
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lhuawei/android/app/IHwAlarmManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/app/IHwAlarmManagerEx;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/app/HwAlarmManagerEx;->mService:Lhuawei/android/app/IHwAlarmManagerEx;

    .line 30
    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/app/HwAlarmManagerEx;
    .locals 2

    const-class v0, Lhuawei/android/app/HwAlarmManagerEx;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lhuawei/android/app/HwAlarmManagerEx;->mInstance:Lhuawei/android/app/HwAlarmManagerEx;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lhuawei/android/app/HwAlarmManagerEx;

    invoke-direct {v1}, Lhuawei/android/app/HwAlarmManagerEx;-><init>()V

    sput-object v1, Lhuawei/android/app/HwAlarmManagerEx;->mInstance:Lhuawei/android/app/HwAlarmManagerEx;

    .line 23
    :cond_0
    sget-object v1, Lhuawei/android/app/HwAlarmManagerEx;->mInstance:Lhuawei/android/app/HwAlarmManagerEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public removeAllAdjustAlarms()V
    .locals 1

    .line 58
    :try_start_0
    iget-object v0, p0, Lhuawei/android/app/HwAlarmManagerEx;->mService:Lhuawei/android/app/IHwAlarmManagerEx;

    invoke-interface {v0}, Lhuawei/android/app/IHwAlarmManagerEx;->removeAllAdjustAlarms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    :goto_0
    return-void
.end method

.method public removeAllPendingAlarms()V
    .locals 1

    .line 41
    :try_start_0
    iget-object v0, p0, Lhuawei/android/app/HwAlarmManagerEx;->mService:Lhuawei/android/app/IHwAlarmManagerEx;

    invoke-interface {v0}, Lhuawei/android/app/IHwAlarmManagerEx;->removeAllPendingAlarms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    :goto_0
    return-void
.end method

.method public setAlarmsAdjust(Ljava/util/List;Ljava/util/List;ZIJI)V
    .locals 8
    .param p3, "adjust"    # Z
    .param p4, "type"    # I
    .param p5, "interval"    # J
    .param p7, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZIJI)V"
        }
    .end annotation

    .line 51
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lhuawei/android/app/HwAlarmManagerEx;->mService:Lhuawei/android/app/IHwAlarmManagerEx;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lhuawei/android/app/IHwAlarmManagerEx;->setAlarmsAdjust(Ljava/util/List;Ljava/util/List;ZIJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    :goto_0
    return-void
.end method

.method public setAlarmsPending(Ljava/util/List;Ljava/util/List;ZI)V
    .locals 1
    .param p3, "pending"    # Z
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 34
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lhuawei/android/app/HwAlarmManagerEx;->mService:Lhuawei/android/app/IHwAlarmManagerEx;

    invoke-interface {v0, p1, p2, p3, p4}, Lhuawei/android/app/IHwAlarmManagerEx;->setAlarmsPending(Ljava/util/List;Ljava/util/List;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 37
    :goto_0
    return-void
.end method
