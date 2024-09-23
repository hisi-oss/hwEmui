.class public Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;
.super Ljava/lang/Object;
.source "FaceRecognizeManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$SingletonInstance;
    }
.end annotation


# static fields
.field public static final HAS_ALTERNATE_APPEARANCE:I = 0x1

.field public static final NOT_HAVE_ALTERNATE_APPEARANCE:I = 0x0

.field public static final OP_FAILED:I = -0x1

.field public static final OP_OK:I

.field public static final RANDOM_FAILED:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

.field private mService:Lhuawei/android/security/facerecognition/IFaceRecognizeService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    .line 213
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$1;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mReceiver:Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    .line 272
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$1;

    .line 202
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;
    .param p1, "x1"    # Landroid/content/Context;

    .line 202
    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getCurrentUserId()I
    .locals 1

    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    .locals 5

    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mService:Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    if-nez v0, :cond_2

    .line 636
    const-string v0, "facerecognition"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 637
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 638
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getService binder null"

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 641
    :cond_0
    :try_start_1
    invoke-static {v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mService:Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    .line 642
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mService:Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    if-nez v1, :cond_1

    .line 643
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getService Service null"

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 646
    :cond_1
    :try_start_2
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mService:Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    invoke-interface {v1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 649
    goto :goto_0

    .line 647
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to linkToDeath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mService:Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;
    throw v0
.end method

.method public static getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;
    .locals 1

    .line 280
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$SingletonInstance;->access$100()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 276
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mContext:Landroid/content/Context;

    .line 277
    return-void
.end method


# virtual methods
.method public authenticate(JI)I
    .locals 10
    .param p1, "opId"    # J
    .param p3, "flags"    # I

    .line 288
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v8

    .line 289
    .local v8, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v9, -0x1

    if-nez v8, :cond_0

    .line 290
    return v9

    .line 293
    :cond_0
    :try_start_0
    const-string v0, "auth receiver"

    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mReceiver:Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getCurrentUserId()I

    move-result v5

    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mReceiver:Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mContext:Landroid/content/Context;

    .line 295
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 294
    move-object v0, v8

    move-wide v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v7}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->authenticate(Landroid/os/IBinder;JIILhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    const/4 v0, 0x0

    return v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Landroid/os/RemoteException;
    return v9
.end method

.method public binderDied()V
    .locals 2

    .line 624
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceService died"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    monitor-enter p0

    .line 626
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mService:Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    .line 627
    monitor-exit p0

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelAuthentication()I
    .locals 4

    .line 304
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 305
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 306
    return v1

    .line 309
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    const/4 v1, 0x0

    return v1

    .line 311
    :catch_0
    move-exception v2

    .line 312
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public cancelEnrollment()I
    .locals 3

    .line 378
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 379
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 380
    return v1

    .line 383
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    const/4 v1, 0x0

    return v1

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public enroll([BI)I
    .locals 9
    .param p1, "authToken"    # [B
    .param p2, "flags"    # I

    .line 364
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v7

    .line 365
    .local v7, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v8, -0x1

    if-nez v7, :cond_0

    .line 366
    return v8

    .line 369
    :cond_0
    :try_start_0
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mReceiver:Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mContext:Landroid/content/Context;

    .line 370
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 369
    move-object v0, v7

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v6}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->enroll(Landroid/os/IBinder;[BIILhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    const/4 v0, 0x0

    return v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "ex":Landroid/os/RemoteException;
    return v8
.end method

.method getAngleDim()I
    .locals 5

    .line 529
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 530
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 531
    return v1

    .line 534
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->getAngleDim(Landroid/os/IBinder;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 535
    :catch_0
    move-exception v2

    .line 536
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .end local v2    # "ex":Landroid/os/RemoteException;
    return v1
.end method

.method getEnrolledFaceRecognizes()[I
    .locals 6

    .line 442
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 443
    .local v1, "ret":[I
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v2

    .line 444
    .local v2, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    if-nez v2, :cond_0

    .line 445
    return-object v1

    .line 448
    :cond_0
    nop

    .line 449
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getCurrentUserId()I

    move-result v3

    iget-object v4, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-interface {v2, v3, v4}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->getEnrolledFaceRecognizes(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 450
    .local v3, "faces":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/security/facerecognition/FaceRecognition;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 451
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 452
    .local v4, "size":I
    new-array v5, v4, [I

    move-object v1, v5

    .line 453
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 454
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhuawei/android/security/facerecognition/FaceRecognition;

    invoke-virtual {v5}, Lhuawei/android/security/facerecognition/FaceRecognition;->getFaceId()I

    move-result v5

    aput v5, v1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "i":I
    .end local v3    # "faces":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/security/facerecognition/FaceRecognition;>;"
    .end local v4    # "size":I
    :cond_1
    goto :goto_1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-object v1
.end method

.method getFaceInfo(I)Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;
    .locals 6
    .param p1, "faceId"    # I

    .line 464
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 465
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 466
    const-string v2, ""

    const-string v3, "get face recognize service fail"

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-object v1

    .line 470
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, p1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->hasAlternateAppearance(Landroid/os/IBinder;I)I

    move-result v2

    .line 471
    .local v2, "result":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_1

    .line 472
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasAlternateAppearance fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-object v1

    .line 475
    :cond_1
    new-instance v4, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;

    invoke-direct {v4}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;-><init>()V

    .line 476
    .local v4, "faceInfo":Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;
    iput p1, v4, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;->faceId:I

    .line 477
    if-ne v2, v3, :cond_2

    .line 478
    iput-boolean v3, v4, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;->hasAlternateAppearance:Z

    goto :goto_0

    .line 480
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, v4, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;->hasAlternateAppearance:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :goto_0
    return-object v4

    .line 484
    .end local v2    # "result":I
    .end local v4    # "faceInfo":Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceInfo;
    :catch_0
    move-exception v2

    .line 485
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-object v1
.end method

.method getFaceRecognitionAbility()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;
    .locals 7

    .line 491
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 492
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 493
    const-string v2, ""

    const-string v3, "get face recognize service fail"

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-object v1

    .line 497
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->getHardwareSupportType()I

    move-result v2

    .line 498
    .local v2, "result":I
    new-instance v3, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;

    invoke-direct {v3}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;-><init>()V

    .line 499
    .local v3, "ability":Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;
    shr-int/lit8 v4, v2, 0x0

    and-int/lit8 v4, v4, 0xf

    iput v4, v3, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;->secureLevel:I

    .line 500
    shr-int/lit8 v4, v2, 0x4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    .line 501
    .local v4, "faceSupport":I
    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    iput-boolean v5, v3, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;->isFaceRecognitionSupport:Z

    .line 502
    shr-int/lit8 v5, v2, 0x5

    and-int/lit8 v5, v5, -0x1

    iput v5, v3, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;->faceMode:I

    .line 503
    iput v6, v3, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;->reserve:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    return-object v3

    .line 505
    .end local v2    # "result":I
    .end local v3    # "ability":Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$FaceRecognitionAbility;
    .end local v4    # "faceSupport":I
    :catch_0
    move-exception v2

    .line 506
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-object v1
.end method

.method getHardwareSupportType()I
    .locals 5

    .line 513
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 514
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 515
    return v1

    .line 518
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->getHardwareSupportType()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 519
    .local v1, "result":I
    ushr-int/lit8 v1, v1, 0x4

    .line 520
    return v1

    .line 521
    .end local v1    # "result":I
    :catch_0
    move-exception v2

    .line 522
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .end local v2    # "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public getPayResult([I[B[I[B)I
    .locals 8
    .param p1, "faceId"    # [I
    .param p2, "token"    # [B
    .param p3, "tokenLen"    # [I
    .param p4, "reserve"    # [B

    .line 342
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v6

    .line 343
    .local v6, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v7, -0x1

    if-nez v6, :cond_0

    .line 344
    return v7

    .line 347
    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    .line 352
    :cond_1
    if-nez p4, :cond_2

    .line 353
    const/4 v0, 0x0

    new-array p4, v0, [B

    .line 357
    :cond_2
    :try_start_0
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->getPayResult(Landroid/os/IBinder;[I[B[I[B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "ex":Landroid/os/RemoteException;
    return v7

    .line 348
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    const-string v0, "getPayResult"

    const-string v1, "param null"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return v7
.end method

.method getRemainingNum()I
    .locals 5

    .line 584
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 585
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 586
    return v1

    .line 589
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->getRemainingNum()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 590
    :catch_0
    move-exception v2

    .line 591
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .end local v2    # "ex":Landroid/os/RemoteException;
    return v1
.end method

.method getRemainingTime()J
    .locals 6

    .line 598
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 599
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 600
    return-wide v1

    .line 603
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->getRemainingTime()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 604
    :catch_0
    move-exception v3

    .line 605
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, ""

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .end local v3    # "ex":Landroid/os/RemoteException;
    return-wide v1
.end method

.method getTotalAuthFailedTimes()I
    .locals 5

    .line 611
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 612
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 613
    return v1

    .line 616
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->getTotalAuthFailedTimes()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 617
    :catch_0
    move-exception v2

    .line 618
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .end local v2    # "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public initAlgo()I
    .locals 4

    .line 404
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 405
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 406
    return v1

    .line 409
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->init(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 410
    :catch_0
    move-exception v2

    .line 411
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method postEnroll()I
    .locals 5

    .line 557
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 558
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 559
    return v1

    .line 562
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->postEnroll(Landroid/os/IBinder;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 563
    :catch_0
    move-exception v2

    .line 564
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .end local v2    # "ex":Landroid/os/RemoteException;
    return v1
.end method

.method preEnroll()J
    .locals 6

    .line 543
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 544
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 545
    return-wide v1

    .line 548
    :cond_0
    :try_start_0
    iget-object v3, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    .line 549
    :catch_0
    move-exception v3

    .line 550
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, ""

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v3    # "ex":Landroid/os/RemoteException;
    return-wide v1
.end method

.method public preparePayInfo([B[B[B)I
    .locals 3
    .param p1, "aaid"    # [B
    .param p2, "nonce"    # [B
    .param p3, "extra"    # [B

    .line 317
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 318
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 319
    return v1

    .line 322
    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 323
    new-array p1, v2, [B

    .line 326
    :cond_1
    if-nez p2, :cond_2

    .line 327
    new-array p2, v2, [B

    .line 330
    :cond_2
    if-nez p3, :cond_3

    .line 331
    new-array p3, v2, [B

    .line 335
    :cond_3
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, p1, p2, p3}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->preparePayInfo(Landroid/os/IBinder;[B[B[B)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public releaseAlgo()I
    .locals 4

    .line 416
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 417
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 418
    return v1

    .line 421
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->release(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 422
    :catch_0
    move-exception v2

    .line 423
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public remove(I)I
    .locals 5
    .param p1, "faceId"    # I

    .line 391
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 392
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 393
    return v1

    .line 396
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getCurrentUserId()I

    move-result v3

    iget-object v4, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mReceiver:Lhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;

    invoke-interface {v0, v2, p1, v3, v4}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->remove(Landroid/os/IBinder;IILhuawei/android/security/facerecognition/IFaceRecognizeServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    const/4 v1, 0x0

    return v1

    .line 398
    :catch_0
    move-exception v2

    .line 399
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method resetTimeout()V
    .locals 4

    .line 571
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 572
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    if-nez v0, :cond_0

    .line 573
    return-void

    .line 576
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, ""

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setSecureFaceMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 428
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getFRService()Lhuawei/android/security/facerecognition/IFaceRecognizeService;

    move-result-object v0

    .line 429
    .local v0, "service":Lhuawei/android/security/facerecognition/IFaceRecognizeService;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 430
    return v1

    .line 433
    :cond_0
    :try_start_0
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, p1}, Lhuawei/android/security/facerecognition/IFaceRecognizeService;->setSecureFaceMode(Landroid/os/IBinder;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 434
    :catch_0
    move-exception v2

    .line 435
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method
