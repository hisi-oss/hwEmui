.class public Landroid/camera/HwCameraUtil;
.super Ljava/lang/Object;
.source "HwCameraUtil.java"

# interfaces
.implements Landroid/camera/IHwCameraUtil;


# static fields
.field private static final AUX_CAMERA_ID_DEFAULT_QCOM:I = 0x2

.field private static final NOTIFY_SURFACEFLINGER_FRONT_CAMERA_CLOSE:I = 0x1f4c

.field private static final NOTIFY_SURFACEFLINGER_FRONT_CAMERA_OPEN:I = 0x1f4b

.field private static final TAG:Ljava/lang/String; = "HwCameraUtil"

.field private static mInstance:Landroid/camera/HwCameraUtil;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/camera/HwCameraUtil;->mLock:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Landroid/camera/HwCameraUtil;->mInstance:Landroid/camera/HwCameraUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getDefault()Landroid/camera/HwCameraUtil;
    .locals 2

    .line 25
    sget-object v0, Landroid/camera/HwCameraUtil;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Landroid/camera/HwCameraUtil;->mInstance:Landroid/camera/HwCameraUtil;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Landroid/camera/HwCameraUtil;

    invoke-direct {v1}, Landroid/camera/HwCameraUtil;-><init>()V

    sput-object v1, Landroid/camera/HwCameraUtil;->mInstance:Landroid/camera/HwCameraUtil;

    .line 29
    :cond_0
    sget-object v1, Landroid/camera/HwCameraUtil;->mInstance:Landroid/camera/HwCameraUtil;

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public isIllegalAccessAuxCamera(ILjava/lang/String;)Z
    .locals 2
    .param p1, "deviceNum"    # I
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Landroid/camera/HwCameraUtil;->needHideAuxCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needHideAuxCamera(I)Z
    .locals 6
    .param p1, "deviceNum"    # I

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    .line 63
    return v0

    .line 66
    :cond_0
    const-string v1, "ro.camera.aux.packagelist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "specialList":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 68
    return v0

    .line 70
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    return v0

    .line 73
    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 75
    const-string v3, "HwCameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalide package name, device number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0

    .line 79
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 80
    const-string v0, "HwCameraUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide aux camera for app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_4
    const-string v3, "HwCameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v0
.end method

.method public notifySurfaceFlingerCameraStatus(ZZ)Z
    .locals 7
    .param p1, "isFront"    # Z
    .param p2, "isOpend"    # Z

    .line 34
    const-string v0, "HwCameraUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySurfaceFlingerCameraStatus : isFront = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , isOpend = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "isTransactSuccess":Z
    if-nez p1, :cond_0

    .line 37
    return v0

    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 41
    .local v1, "dataIn":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 42
    .local v2, "sfBinder":Landroid/os/IBinder;
    if-eqz p2, :cond_1

    const/16 v3, 0x1f4b

    goto :goto_0

    :cond_1
    const/16 v3, 0x1f4c

    .line 43
    .local v3, "status":I
    :goto_0
    if-eqz v2, :cond_3

    .line 44
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 45
    const/4 v0, 0x1

    .line 46
    const-string v4, "HwCameraUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifySurfaceFlingerFrontCameraStatus "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " transact success!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 48
    :cond_2
    const-string v4, "HwCameraUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifySurfaceFlingerFrontCameraStatus "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " transact failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 51
    :cond_3
    const-string v4, "HwCameraUtil"

    const-string v5, "sfBinder == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v0    # "isTransactSuccess":Z
    .end local v1    # "dataIn":Landroid/os/Parcel;
    .end local v2    # "sfBinder":Landroid/os/IBinder;
    .end local v3    # "status":I
    .end local p0    # "this":Landroid/camera/HwCameraUtil;
    .end local p1    # "isFront":Z
    .end local p2    # "isOpend":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    return v0

    .line 56
    .restart local v0    # "isTransactSuccess":Z
    .restart local v1    # "dataIn":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/camera/HwCameraUtil;
    .restart local p1    # "isFront":Z
    .restart local p2    # "isOpend":Z
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "HwCameraUtil"

    const-string v4, "RemoteException notifySurfaceFlingerFrontCameraStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
