.class public Lhuawei/android/security/panpay/PanPayImpl;
.super Ljava/lang/Object;
.source "PanPayImpl.java"


# static fields
.field private static final FAILED:I = -0x1

.field private static final PAN_PAY_PLUGIN_ID:I = 0xc

.field private static final SECURITY_SERVICE:Ljava/lang/String; = "securityserver"

.field private static final TAG:Ljava/lang/String; = "PanPayImpl"

.field private static final mInstanceSync:Ljava/lang/Object;

.field private static mSecurityService:Lhuawei/android/security/IHwSecurityService;

.field private static sPanPayManager:Lhuawei/android/security/panpay/IPanPay;

.field private static volatile sSelf:Lhuawei/android/security/panpay/PanPayImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/security/panpay/PanPayImpl;->sSelf:Lhuawei/android/security/panpay/PanPayImpl;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getInstance()Lhuawei/android/security/panpay/PanPayImpl;
    .locals 4

    .line 31
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->sSelf:Lhuawei/android/security/panpay/PanPayImpl;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lhuawei/android/security/panpay/PanPayImpl;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lhuawei/android/security/panpay/PanPayImpl;->sSelf:Lhuawei/android/security/panpay/PanPayImpl;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lhuawei/android/security/panpay/PanPayImpl;

    invoke-direct {v1}, Lhuawei/android/security/panpay/PanPayImpl;-><init>()V

    sput-object v1, Lhuawei/android/security/panpay/PanPayImpl;->sSelf:Lhuawei/android/security/panpay/PanPayImpl;

    .line 35
    const-string v1, "securityserver"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 36
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lhuawei/android/security/IHwSecurityService$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IHwSecurityService;

    move-result-object v2

    sput-object v2, Lhuawei/android/security/panpay/PanPayImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;

    .line 37
    sget-object v2, Lhuawei/android/security/panpay/PanPayImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;

    if-nez v2, :cond_0

    .line 38
    const-string v2, "PanPayImpl"

    const-string v3, "error, securityserver was null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->sSelf:Lhuawei/android/security/panpay/PanPayImpl;

    return-object v0
.end method

.method private getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;
    .locals 4

    .line 47
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lhuawei/android/security/panpay/PanPayImpl;->sPanPayManager:Lhuawei/android/security/panpay/IPanPay;

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lhuawei/android/security/panpay/PanPayImpl;->sPanPayManager:Lhuawei/android/security/panpay/IPanPay;

    monitor-exit v0

    return-object v1

    .line 51
    :cond_0
    sget-object v1, Lhuawei/android/security/panpay/PanPayImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 53
    :try_start_1
    sget-object v1, Lhuawei/android/security/panpay/PanPayImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lhuawei/android/security/IHwSecurityService;->querySecurityInterface(I)Landroid/os/IBinder;

    move-result-object v1

    .line 54
    .local v1, "secPlugin":Landroid/os/IBinder;
    invoke-static {v1}, Lhuawei/android/security/panpay/IPanPay$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/panpay/IPanPay;

    move-result-object v2

    sput-object v2, Lhuawei/android/security/panpay/PanPayImpl;->sPanPayManager:Lhuawei/android/security/panpay/IPanPay;

    .line 55
    sget-object v2, Lhuawei/android/security/panpay/PanPayImpl;->sPanPayManager:Lhuawei/android/security/panpay/IPanPay;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 56
    .end local v1    # "secPlugin":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PanPayImpl"

    const-string v3, "Get getPanPayManagerService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public activateApplet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "funCallId"    # Ljava/lang/String;
    .param p3, "appletAid"    # Ljava/lang/String;

    .line 258
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateApplet...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appletAid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 263
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lhuawei/android/security/panpay/IPanPay;->activateApplet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 264
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when activateApplet is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 269
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkEligibility(Ljava/lang/String;)I
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;

    .line 65
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEligibility...spID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 70
    :try_start_1
    invoke-interface {v1, p1}, Lhuawei/android/security/panpay/IPanPay;->checkEligibility(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when checkEligibility is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 76
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkEligibilityEx(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "funCallId"    # Ljava/lang/String;

    .line 131
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEligibility...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 136
    :try_start_1
    invoke-interface {v1, p1, p2}, Lhuawei/android/security/panpay/IPanPay;->checkEligibilityEx(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when createSSD is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 142
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public commonExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "funCallId"    # Ljava/lang/String;

    .line 274
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commonExecute...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 279
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lhuawei/android/security/panpay/IPanPay;->commonExecute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when commonExecute is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 285
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public createSSD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Ljava/lang/String;
    .param p4, "ssdAid"    # Ljava/lang/String;

    .line 98
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSSD...spID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ssdAid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 103
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lhuawei/android/security/panpay/IPanPay;->createSSD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when createSSD is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 110
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public createSSDEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "funCallId"    # Ljava/lang/String;
    .param p3, "ssdAid"    # Ljava/lang/String;

    .line 163
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSSD...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ssdAid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 168
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lhuawei/android/security/panpay/IPanPay;->createSSDEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when createSSD is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 174
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public deleteApplet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "funCallId"    # Ljava/lang/String;
    .param p3, "appletAid"    # Ljava/lang/String;
    .param p4, "appletVersion"    # Ljava/lang/String;

    .line 210
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteApplet...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appletAid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 215
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p3}, Lhuawei/android/security/panpay/IPanPay;->deleteSSD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when deleteApplet is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 221
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public deleteSSD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Ljava/lang/String;
    .param p4, "ssdAid"    # Ljava/lang/String;

    .line 115
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteSSD...spID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ssdAid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 120
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lhuawei/android/security/panpay/IPanPay;->deleteSSD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when createSSD is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 126
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public deleteSSDEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "funCallId"    # Ljava/lang/String;
    .param p3, "ssdAid"    # Ljava/lang/String;

    .line 179
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteSSD...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ssdAid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 184
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lhuawei/android/security/panpay/IPanPay;->deleteSSDEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when deleteSSD is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 190
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCIN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;

    .line 306
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    const-string v1, "PanPayImpl"

    const-string v2, "getCIN..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 311
    :try_start_1
    invoke-interface {v1, p1}, Lhuawei/android/security/panpay/IPanPay;->getCIN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 312
    :catch_0
    move-exception v2

    .line 313
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when getCIN is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 317
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCPLC(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;

    .line 290
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    const-string v1, "PanPayImpl"

    const-string v2, "getCPLC..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 295
    :try_start_1
    invoke-interface {v1, p1}, Lhuawei/android/security/panpay/IPanPay;->getCPLC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 296
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when getCPLC is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 301
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getIIN(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;

    .line 321
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    const-string v1, "PanPayImpl"

    const-string v2, "getIIN..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 326
    :try_start_1
    invoke-interface {v1, p1}, Lhuawei/android/security/panpay/IPanPay;->getIIN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when getIIN is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 332
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getLastErrorInfo(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;

    .line 366
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    const-string v1, "PanPayImpl"

    const-string v2, "getLastErrorInfo..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 371
    :try_start_1
    invoke-interface {v1, p1}, Lhuawei/android/security/panpay/IPanPay;->getLastErrorInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 372
    :catch_0
    move-exception v2

    .line 373
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when getLastErrorInfo is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 378
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSwitch(Ljava/lang/String;)Z
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;

    .line 336
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    const-string v1, "PanPayImpl"

    const-string v2, "getSwitch..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 341
    :try_start_1
    invoke-interface {v1, p1}, Lhuawei/android/security/panpay/IPanPay;->getSwitch(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 342
    :catch_0
    move-exception v2

    .line 343
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when getSwitch is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 347
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public installApplet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "funCallId"    # Ljava/lang/String;
    .param p3, "appletAid"    # Ljava/lang/String;
    .param p4, "appletVersion"    # Ljava/lang/String;

    .line 195
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installApplet...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appletAid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 200
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lhuawei/android/security/panpay/IPanPay;->installApplet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when installApplet is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 206
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public lockApplet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "funCallId"    # Ljava/lang/String;
    .param p3, "appletAid"    # Ljava/lang/String;
    .param p4, "appletVersion"    # Ljava/lang/String;

    .line 226
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockApplet...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appletAid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 231
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lhuawei/android/security/panpay/IPanPay;->lockApplet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 232
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when lockApplet is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 237
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setConfig(Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/util/HashMap;

    .line 382
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    const-string v1, "PanPayImpl"

    const-string v2, "setConfig..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 387
    :try_start_1
    invoke-interface {v1, p1, p2}, Lhuawei/android/security/panpay/IPanPay;->setConfig(Ljava/lang/String;Ljava/util/Map;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when getSwitch is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 393
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSwitch(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;
    .param p2, "choice"    # Z

    .line 351
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    const-string v1, "PanPayImpl"

    const-string v2, "setSwitch..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 356
    :try_start_1
    invoke-interface {v1, p1, p2}, Lhuawei/android/security/panpay/IPanPay;->setSwitch(Ljava/lang/String;Z)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 357
    :catch_0
    move-exception v2

    .line 358
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when getSwitch is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 362
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public syncSeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "spID"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Ljava/lang/String;

    .line 81
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncSeInfo...spID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 86
    :try_start_1
    invoke-interface {v1, p1, p2, p3}, Lhuawei/android/security/panpay/IPanPay;->syncSeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when syncSeInfo is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 92
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public syncSeInfoEx(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "funCallId"    # Ljava/lang/String;

    .line 147
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncSeInfoX...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 152
    :try_start_1
    invoke-interface {v1, p1, p2}, Lhuawei/android/security/panpay/IPanPay;->syncSeInfoEx(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when createSSD is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 158
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public unlockApplet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "funCallId"    # Ljava/lang/String;
    .param p3, "appletAid"    # Ljava/lang/String;
    .param p4, "appletVersion"    # Ljava/lang/String;

    .line 242
    sget-object v0, Lhuawei/android/security/panpay/PanPayImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    const-string v1, "PanPayImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlockApplet...serviceId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " funCallId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appletAid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lhuawei/android/security/panpay/PanPayImpl;->getPanPayManagerService()Lhuawei/android/security/panpay/IPanPay;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .local v1, "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    if-eqz v1, :cond_0

    .line 247
    :try_start_1
    invoke-interface {v1, p1, p2, p3, p4}, Lhuawei/android/security/panpay/IPanPay;->unlockApplet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PanPayImpl"

    const-string v4, "RemoteException when unlockApplet is invoked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 253
    .end local v1    # "panpayManager":Lhuawei/android/security/panpay/IPanPay;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
