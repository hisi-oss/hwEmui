.class public Lcom/huawei/hsm/permission/StubController;
.super Ljava/lang/Object;
.source "StubController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;,
        Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;
    }
.end annotation


# static fields
.field public static final AGGRESSIVE_DEFENSE_OFF:I = 0x1

.field public static final AGGRESSIVE_DEFENSE_ON:I = 0x0

.field public static final ANR_FILTER_FIFO:I = 0x1f6

.field public static final APP_GOOGLE:Ljava/lang/String; = "com.android"

.field public static final APP_HUAWEI:Ljava/lang/String; = "com.huawei"

.field private static final CACHE_SIZE:I = 0x5

.field public static final COMMON_VALUE_INTENT_KEY:I = 0x1330615

.field public static final CONTENT_COMMON_URI:Ljava/lang/String; = "content://com.huawei.permissionmanager.provider.PermissionDataProvider/common"

.field public static final CONTENT_LOG_URI:Ljava/lang/String; = "content://com.huawei.permissionmanager.provider.PermissionDataProvider/log"

.field public static final CONTENT_NOTIFICATIONMGR_URI:Ljava/lang/String; = "content://com.huawei.systemmanager.NotificationDBProvider/notificationCfg"

.field public static final CONTENT_URI:Ljava/lang/String; = "content://com.huawei.permissionmanager.provider.PermissionDataProvider/permission"

.field public static final CUST_URL:Ljava/lang/String; = "/data/cust"

.field private static final DBG:Z = false

.field private static final HOLDSERVICE_METHOD:Ljava/lang/String; = "record_permission_method"

.field public static final MIN_APPLICATION_UID:I = 0x2710

.field private static final MOST_BINDER_COUNT_FOR_BOTH_LOCATION_AND_PHONE:I = 0x6

.field private static final MOST_BINDER_COUNT_FOR_PHONE:I = 0xa

.field public static final NOTIFICATION_FLOG_SOUND:I = 0x1

.field public static final NOTIFICATION_FLOG_VIBRATE:I = 0x2

.field public static final PATH:Ljava/lang/String; = "/data/data/com.huawei.permissionmanager/databases/permission.db"

.field public static final PERMISSION_ACCESS_3G:I = 0x100

.field public static final PERMISSION_ACCESS_BROWSER_RECORDS:I = 0x40000000

.field public static final PERMISSION_ACCESS_WIFI:I = 0x200

.field public static final PERMISSION_ACTION_CALL:I = 0x40

.field public static final PERMISSION_BLUETOOTH:I = 0x800000

.field public static final PERMISSION_CALENDAR:I = 0x800

.field public static final PERMISSION_CALLLOG:I = 0x2

.field public static final PERMISSION_CALLLOG_DELETE:I = 0x40000

.field public static final PERMISSION_CALLLOG_WRITE:I = 0x8000

.field public static final PERMISSION_CALL_FORWARD:I = 0x100000

.field public static final PERMISSION_CALL_LISTENER:I = 0x80

.field public static final PERMISSION_CAMERA:I = 0x400

.field public static final PERMISSION_CONTACTS:I = 0x1

.field public static final PERMISSION_CONTACTS_DELETE:I = 0x20000

.field public static final PERMISSION_CONTACTS_WRITE:I = 0x4000

.field public static final PERMISSION_DELETE_CALENDAR:I = 0x20000000

.field public static final PERMISSION_EDIT_SHORTCUT:I = 0x1000000

.field public static final PERMISSION_GET_DEVICEID:I = 0x10

.field public static final PERMISSION_GET_PACKAGE_LIST:I = 0x2000000

.field public static final PERMISSION_LOCATION:I = 0x8

.field public static final PERMISSION_MOBILEDATE:I = 0x400000

.field public static final PERMISSION_MODIFY_CALENDAR:I = 0x10000000

.field public static final PERMISSION_NONE:I = 0x0

.field public static final PERMISSION_RECEIVE_SMS:I = 0x1000

.field public static final PERMISSION_SEND_MMS:I = 0x2000

.field public static final PERMISSION_SEND_SMS:I = 0x20

.field public static final PERMISSION_SMSLOG:I = 0x4

.field public static final PERMISSION_SMSLOG_DELETE:I = 0x80000

.field public static final PERMISSION_SMSLOG_WRITE:I = 0x10000

.field public static final PERMISSION_TYPE_ALLOWED:I = 0x1

.field public static final PERMISSION_TYPE_BLOCKED:I = 0x2

.field public static final PERMISSION_TYPE_FAIL:I = 0x0

.field public static final PERMISSION_TYPE_UNKNOWN:I = -0x1

.field public static final PERMISSION_WIFI:I = 0x200000

.field public static final REMIND_FAIL:I = -0x1

.field public static final REMIND_SKIP:I = 0x1

.field public static final REMIND_SUCCESS:I = 0x0

.field public static final RETURN_VALUE_FAILD:I = 0x1

.field public static final RETURN_VALUE_SECCESS:I = 0x0

.field public static final RHD_PERMISSION_CODE:I = 0x8000000

.field public static final RMD_PERMISSION_CODE:I = 0x4000000

.field private static final SEND_GROUP_MMS:I = 0x3e9

.field private static final SEND_GROUP_SMS:I = 0x3e8

.field public static final SEND_INTENT_VALUE:I = 0x0

.field public static final SYSTEM_APP:Ljava/lang/String; = "/system/app"

.field private static final SYSTEM_SERVER_UID:I = 0x3e8

.field public static final TABLE_COLUM_CHANNEL_BYPASSDND:Ljava/lang/String; = "channelbypassdnd"

.field public static final TABLE_COLUM_CHANNEL_ICONBADGE:Ljava/lang/String; = "channeliconbadge"

.field public static final TABLE_COLUM_CHANNEL_ID:Ljava/lang/String; = "channelid"

.field public static final TABLE_COLUM_CHANNEL_IMPORTANCE:Ljava/lang/String; = "channelimportance"

.field public static final TABLE_COLUM_KEY:Ljava/lang/String; = "key"

.field public static final TABLE_COLUM_NOTIFICATION_CFG:Ljava/lang/String; = "sound_vibrate"

.field public static final TABLE_COLUM_NOTIFICATION_LOCKSCREEN_CFG:Ljava/lang/String; = "lockscreencfg"

.field public static final TABLE_COLUM_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TABLE_COLUM_PERMISSION_CFG:Ljava/lang/String; = "permissionCfg"

.field public static final TABLE_COLUM_PERMISSION_CODE:Ljava/lang/String; = "permissionCode"

.field public static final TABLE_COLUM_TRUST:Ljava/lang/String; = "trust"

.field public static final TABLE_COLUM_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_COLUM_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_COMMON_COLUM_KEY:Ljava/lang/String; = "key"

.field public static final TABLE_COMMON_COLUM_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_NAME_COMMON:Ljava/lang/String; = "commonTable"

.field public static final TABLE_NAME_PERMSSION:Ljava/lang/String; = "permissionCfg"

.field static final TAG:Ljava/lang/String; = "StubController"

.field public static final USER_ALLOWED:I = 0x1

.field public static final USER_IGNORED:I = 0x0

.field public static final USER_REFUSED:I = 0x2

.field private static mHoldService:Lcom/huawei/permission/IHoldService;

.field private static mLocationRequestCount:I

.field private static mPhoneIDRequestCount:I

.field private static mRequestCount:I

.field private static mRequestCountSync:Ljava/lang/Object;

.field private static mServiceDeathRecipient:Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;

.field private static mServiceDieCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mUseridOfMoniterBinder:I

.field private static permissionCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hsm/permission/StubController;->syncObj:Ljava/lang/Object;

    .line 135
    const/4 v0, 0x0

    sput v0, Lcom/huawei/hsm/permission/StubController;->mRequestCount:I

    .line 136
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/huawei/hsm/permission/StubController;->mRequestCountSync:Ljava/lang/Object;

    .line 144
    sput v0, Lcom/huawei/hsm/permission/StubController;->mPhoneIDRequestCount:I

    .line 145
    sput v0, Lcom/huawei/hsm/permission/StubController;->mLocationRequestCount:I

    .line 148
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/huawei/hsm/permission/StubController;->permissionCache:Landroid/util/LruCache;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/hsm/permission/StubController;->mServiceDieCallbacks:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;-><init>(Lcom/huawei/hsm/permission/StubController$1;)V

    sput-object v0, Lcom/huawei/hsm/permission/StubController;->mServiceDeathRecipient:Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 35
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->notifyBinderDie()V

    return-void
.end method

.method static synthetic access$202(Lcom/huawei/permission/IHoldService;)Lcom/huawei/permission/IHoldService;
    .locals 0
    .param p0, "x0"    # Lcom/huawei/permission/IHoldService;

    .line 35
    sput-object p0, Lcom/huawei/hsm/permission/StubController;->mHoldService:Lcom/huawei/permission/IHoldService;

    return-object p0
.end method

.method static synthetic access$300(I)V
    .locals 0
    .param p0, "x0"    # I

    .line 35
    invoke-static {p0}, Lcom/huawei/hsm/permission/StubController;->addRequestCount(I)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .line 35
    sget v0, Lcom/huawei/hsm/permission/StubController;->mRequestCount:I

    return v0
.end method

.method static synthetic access$500(I)V
    .locals 0
    .param p0, "x0"    # I

    .line 35
    invoke-static {p0}, Lcom/huawei/hsm/permission/StubController;->minusRequestCount(I)V

    return-void
.end method

.method private static addRequestCount(I)V
    .locals 2
    .param p0, "permissionType"    # I

    .line 190
    sget-object v0, Lcom/huawei/hsm/permission/StubController;->mRequestCountSync:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    sget v1, Lcom/huawei/hsm/permission/StubController;->mRequestCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/huawei/hsm/permission/StubController;->mRequestCount:I

    .line 192
    const/16 v1, 0x10

    if-ne v1, p0, :cond_0

    .line 193
    sget v1, Lcom/huawei/hsm/permission/StubController;->mPhoneIDRequestCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/huawei/hsm/permission/StubController;->mPhoneIDRequestCount:I

    .line 195
    :cond_0
    const/16 v1, 0x8

    if-ne v1, p0, :cond_1

    .line 196
    sget v1, Lcom/huawei/hsm/permission/StubController;->mLocationRequestCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/huawei/hsm/permission/StubController;->mLocationRequestCount:I

    .line 201
    :cond_1
    monitor-exit v0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addServiceDieListener(Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;

    .line 360
    sget-object v0, Lcom/huawei/hsm/permission/StubController;->mServiceDieCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 361
    if-eqz p0, :cond_0

    .line 362
    :try_start_0
    sget-object v1, Lcom/huawei/hsm/permission/StubController;->mServiceDieCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static authenticateSmsSend(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "notifyResult"    # Landroid/os/IBinder;
    .param p1, "uidOf3RdApk"    # I
    .param p2, "smsId"    # I
    .param p3, "smsBody"    # Ljava/lang/String;
    .param p4, "smsAddress"    # Ljava/lang/String;

    .line 597
    invoke-static {p1}, Lcom/huawei/hsm/permission/StubController;->handleIncomingUser(I)I

    move-result v0

    .line 598
    .local v0, "validUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 599
    .local v1, "callingUserId":I
    invoke-static {v1}, Lcom/huawei/hsm/permission/StubController;->getHoldServiceByUidInner(I)V

    .line 600
    const-string v2, "StubController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticateSmsSend appUid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v2, 0x0

    .line 602
    .local v2, "retVal":I
    sget-object v3, Lcom/huawei/hsm/permission/StubController;->mHoldService:Lcom/huawei/permission/IHoldService;

    if-nez v3, :cond_0

    .line 603
    const-string v3, "StubController"

    const-string v4, "service = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->notifyBinderDie()V

    .line 605
    const/4 v3, 0x1

    return v3

    .line 609
    :cond_0
    :try_start_0
    sget-object v4, Lcom/huawei/hsm/permission/StubController;->mHoldService:Lcom/huawei/permission/IHoldService;

    move-object v5, p0

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/huawei/permission/IHoldService;->authenticateSmsSend(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v3

    .line 614
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 615
    const-string v4, "StubController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authenticateSmsSend excepton : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 610
    :catch_1
    move-exception v3

    .line 611
    .local v3, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    .line 612
    const-string v4, "StubController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authenticateSmsSend remote_excepton : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 617
    :goto_1
    return v2
.end method

.method private static blockCurrentRequestOrNot(I)Z
    .locals 3
    .param p0, "permissionType"    # I

    .line 260
    sget-object v0, Lcom/huawei/hsm/permission/StubController;->mRequestCountSync:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    const/4 v1, 0x6

    :try_start_0
    sget v2, Lcom/huawei/hsm/permission/StubController;->mLocationRequestCount:I

    if-ge v1, v2, :cond_0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_0

    .line 262
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 264
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static callerIsProxy(I)Z
    .locals 2
    .param p0, "callerUid"    # I

    .line 471
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 472
    .local v0, "currentUid":I
    if-eq p0, v0, :cond_0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static checkPreBlock(II)Z
    .locals 1
    .param p0, "callUid"    # I
    .param p1, "permissionType"    # I

    .line 293
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/hsm/permission/StubController;->checkPreBlock(IIZ)Z

    move-result v0

    return v0
.end method

.method public static checkPreBlock(IIZ)Z
    .locals 5
    .param p0, "callUid"    # I
    .param p1, "permissionType"    # I
    .param p2, "showToast"    # Z

    .line 278
    invoke-static {p0}, Lcom/huawei/hsm/permission/StubController;->handleIncomingUser(I)I

    move-result v0

    .line 279
    .local v0, "validUid":I
    invoke-static {p0}, Lcom/huawei/hsm/permission/StubController;->getHoldServiceByUid(I)Lcom/huawei/permission/IHoldService;

    move-result-object v1

    .line 280
    .local v1, "hService":Lcom/huawei/permission/IHoldService;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 281
    const-string v3, "StubController"

    const-string v4, "checkPreBlock, service = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v2

    .line 285
    :cond_0
    :try_start_0
    invoke-interface {v1, v0, p1, p2}, Lcom/huawei/permission/IHoldService;->checkPreBlock(IIZ)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 286
    :catch_0
    move-exception v3

    .line 287
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    return v2
.end method

.method public static checkPrecondition(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 302
    sget v0, Landroid/hsm/HwSystemManager;->mPermissionEnabled:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    return v1

    .line 307
    :cond_0
    invoke-static {p0, v1}, Lcom/huawei/hsm/permission/StubController;->checkSystemAppInternal(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    return v1

    .line 311
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkPreconditionPermissionEnabled()Z
    .locals 1

    .line 316
    sget v0, Landroid/hsm/HwSystemManager;->mPermissionEnabled:I

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x1

    return v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static checkSystemAppInternal(IZ)Z
    .locals 7
    .param p0, "callUid"    # I
    .param p1, "notUsed"    # Z

    .line 378
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne v1, p0, :cond_0

    .line 379
    return v0

    .line 382
    :cond_0
    sget-object v1, Lcom/huawei/hsm/permission/StubController;->permissionCache:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 383
    .local v1, "cachedValue":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 388
    :cond_1
    invoke-static {p0}, Lcom/huawei/hsm/permission/StubController;->handleIncomingUser(I)I

    move-result v2

    .line 390
    .local v2, "validUid":I
    invoke-static {p0}, Lcom/huawei/hsm/permission/StubController;->getHoldServiceByUid(I)Lcom/huawei/permission/IHoldService;

    move-result-object v3

    .line 391
    .local v3, "hService":Lcom/huawei/permission/IHoldService;
    if-nez v3, :cond_2

    .line 392
    const-string v4, "StubController"

    const-string v5, "service = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return v0

    .line 396
    :cond_2
    :try_start_0
    invoke-interface {v3, v2, p1}, Lcom/huawei/permission/IHoldService;->checkSystemAppInternal(IZ)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 397
    .local v4, "isFriend":Ljava/lang/Boolean;
    sget-object v5, Lcom/huawei/hsm/permission/StubController;->permissionCache:Landroid/util/LruCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 399
    .end local v4    # "isFriend":Ljava/lang/Boolean;
    :catch_0
    move-exception v4

    .line 400
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    return v0
.end method

.method public static getAlwaysForbiddenPerms()[Ljava/lang/String;
    .locals 4

    .line 729
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v0

    .line 730
    .local v0, "hService":Lcom/huawei/permission/IHoldService;
    if-eqz v0, :cond_0

    .line 732
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/permission/IHoldService;->getAlwaysForbiddenPerms()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StubController"

    const-string v3, "getAlwaysForbiddenPerms : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getHoldService()Lcom/huawei/permission/IHoldService;
    .locals 2

    .line 423
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 424
    .local v0, "currentUid":I
    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->getHoldServiceByUid(I)Lcom/huawei/permission/IHoldService;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getHoldServiceByUid(I)Lcom/huawei/permission/IHoldService;
    .locals 3
    .param p0, "uid"    # I

    const-class v0, Lcom/huawei/hsm/permission/StubController;

    monitor-enter v0

    .line 429
    :try_start_0
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 430
    .local v1, "callingUserId":I
    sget-object v2, Lcom/huawei/hsm/permission/StubController;->mHoldService:Lcom/huawei/permission/IHoldService;

    if-eqz v2, :cond_0

    sget v2, Lcom/huawei/hsm/permission/StubController;->mUseridOfMoniterBinder:I

    if-ne v1, v2, :cond_0

    .line 431
    sget-object v2, Lcom/huawei/hsm/permission/StubController;->mHoldService:Lcom/huawei/permission/IHoldService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 433
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/huawei/hsm/permission/StubController;->getHoldServiceByUidInner(I)V

    .line 434
    sget-object v2, Lcom/huawei/hsm/permission/StubController;->mHoldService:Lcom/huawei/permission/IHoldService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    .line 428
    .end local v1    # "callingUserId":I
    .end local p0    # "uid":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getHoldServiceByUidInner(I)V
    .locals 5
    .param p0, "callingUserId"    # I

    .line 439
    :try_start_0
    const-string v0, "com.huawei.permissionmanager.service.holdservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 440
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 445
    .local v2, "hasLinkToDeath":Z
    :try_start_1
    sget-object v3, Lcom/huawei/hsm/permission/StubController;->mServiceDeathRecipient:Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 449
    goto :goto_0

    .line 446
    :catch_0
    move-exception v3

    .line 447
    .local v3, "e":Ljava/util/NoSuchElementException;
    :try_start_2
    sget-object v4, Lcom/huawei/hsm/permission/StubController;->mServiceDeathRecipient:Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;

    invoke-interface {v0, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 448
    const/4 v2, 0x1

    .line 450
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    invoke-static {v0}, Lcom/huawei/permission/IHoldService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/permission/IHoldService;

    move-result-object v3

    sput-object v3, Lcom/huawei/hsm/permission/StubController;->mHoldService:Lcom/huawei/permission/IHoldService;

    .line 451
    sput p0, Lcom/huawei/hsm/permission/StubController;->mUseridOfMoniterBinder:I

    .line 452
    if-nez v2, :cond_1

    .line 453
    sget-object v3, Lcom/huawei/hsm/permission/StubController;->mServiceDeathRecipient:Lcom/huawei/hsm/permission/StubController$HoldServiceDeathRecipient;

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 457
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "hasLinkToDeath":Z
    :cond_1
    goto :goto_1

    .line 455
    :catch_1
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StubController"

    const-string v2, "getHoldServiceByUidInner : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static handleANRFilterFIFO(II)V
    .locals 0
    .param p0, "uid"    # I
    .param p1, "cmd"    # I

    .line 749
    invoke-static {p0, p1}, Lcom/huawei/android/app/HwActivityManager;->handleANRFilterFIFO(II)Z

    .line 750
    return-void
.end method

.method public static handleIncomingPid(II)I
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 500
    invoke-static {p0}, Lcom/huawei/hsm/permission/StubController;->callerIsProxy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static handleIncomingUser(I)I
    .locals 1
    .param p0, "uid"    # I

    .line 495
    invoke-static {p0}, Lcom/huawei/hsm/permission/StubController;->callerIsProxy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method public static holdForGetPermissionSelection(IIILjava/lang/String;)I
    .locals 17
    .param p0, "permissionType"    # I
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "desAddr"    # Ljava/lang/String;

    move/from16 v1, p0

    .line 519
    move-object/from16 v2, p3

    invoke-static/range {p1 .. p1}, Lcom/huawei/hsm/permission/StubController;->handleIncomingUser(I)I

    move-result v3

    .line 520
    .local v3, "validUid":I
    invoke-static/range {p1 .. p2}, Lcom/huawei/hsm/permission/StubController;->handleIncomingPid(II)I

    move-result v4

    .line 522
    .local v4, "validPid":I
    invoke-static {v3}, Lcom/huawei/hsm/permission/StubController;->getHoldServiceByUid(I)Lcom/huawei/permission/IHoldService;

    move-result-object v5

    .line 523
    .local v5, "hService":Lcom/huawei/permission/IHoldService;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 524
    const-string v0, "StubController"

    const-string v7, "service = null"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return v6

    .line 528
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->addRequestCount(I)V

    .line 529
    move v7, v6

    .line 533
    .local v7, "holdResult":I
    const/4 v8, 0x1

    :try_start_0
    invoke-static {v3, v6}, Lcom/huawei/hsm/permission/StubController;->handleANRFilterFIFO(II)V

    .line 535
    invoke-interface {v5, v3, v4, v1, v2}, Lcom/huawei/permission/IHoldService;->checkBeforeShowDialogWithPid(IIILjava/lang/String;)I

    move-result v0

    move v9, v0

    .line 536
    .local v9, "preCheckCode":I
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_1

    .line 537
    sget-object v10, Lcom/huawei/hsm/permission/StubController;->mRequestCountSync:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 538
    :try_start_1
    const-string v0, "StubController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "preCheckCode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", validUid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", validPid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", permissionType "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 541
    :cond_1
    :goto_0
    if-eq v8, v9, :cond_9

    const/4 v0, 0x2

    if-ne v0, v9, :cond_2

    goto/16 :goto_1

    .line 545
    :cond_2
    move v10, v1

    .line 547
    .local v10, "newPermissionType":I
    const/16 v11, 0x3e8

    if-eq v11, v9, :cond_3

    const/16 v11, 0x3e9

    if-ne v11, v9, :cond_4

    .line 551
    :cond_3
    move v10, v9

    .line 556
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->letCurrentRequestGoOrNot(I)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v11, :cond_5

    .line 557
    nop

    .line 580
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->minusRequestCount(I)V

    .line 584
    :try_start_3
    invoke-static {v3, v8}, Lcom/huawei/hsm/permission/StubController;->handleANRFilterFIFO(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 588
    nop

    .line 557
    return v8

    .line 585
    :catch_0
    move-exception v0

    .end local v3    # "validUid":I
    .end local v4    # "validPid":I
    .end local v5    # "hService":Lcom/huawei/permission/IHoldService;
    .end local v7    # "holdResult":I
    .end local v9    # "preCheckCode":I
    .end local v10    # "newPermissionType":I
    .end local p0    # "permissionType":I
    .end local p1    # "uid":I
    .end local p2    # "pid":I
    .end local p3    # "desAddr":Ljava/lang/String;
    move-object v8, v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    return v6

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "validUid":I
    .restart local v4    # "validPid":I
    .restart local v5    # "hService":Lcom/huawei/permission/IHoldService;
    .restart local v7    # "holdResult":I
    .restart local v9    # "preCheckCode":I
    .restart local v10    # "newPermissionType":I
    .restart local p0    # "permissionType":I
    .restart local p1    # "uid":I
    .restart local p2    # "pid":I
    .restart local p3    # "desAddr":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->blockCurrentRequestOrNot(I)Z

    move-result v11
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v11, :cond_6

    .line 561
    nop

    .line 580
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->minusRequestCount(I)V

    .line 584
    :try_start_5
    invoke-static {v3, v8}, Lcom/huawei/hsm/permission/StubController;->handleANRFilterFIFO(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 588
    nop

    .line 561
    return v0

    .line 563
    :cond_6
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 564
    .local v11, "showDialogTime":J
    sget-object v13, Lcom/huawei/hsm/permission/StubController;->syncObj:Ljava/lang/Object;

    monitor-enter v13
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 565
    :try_start_7
    invoke-interface {v5, v3, v4, v10, v2}, Lcom/huawei/permission/IHoldService;->holdServiceByRequestPermission(IIILjava/lang/String;)I

    move-result v0

    move v7, v0

    .line 566
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    if-eqz v0, :cond_7

    .line 567
    const-string v0, "StubController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "holdResult:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 570
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    const-wide/16 v15, 0xc8

    cmp-long v0, v13, v15

    if-ltz v0, :cond_8

    .line 571
    const/16 v0, 0x135

    const-string v13, "holdServiceByRequestPermission"

    invoke-static {v0, v13}, Landroid/util/Jlog;->d(ILjava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 580
    .end local v9    # "preCheckCode":I
    .end local v10    # "newPermissionType":I
    .end local v11    # "showDialogTime":J
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->minusRequestCount(I)V

    .line 584
    :try_start_9
    invoke-static {v3, v8}, Lcom/huawei/hsm/permission/StubController;->handleANRFilterFIFO(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 588
    nop

    .line 590
    return v7

    .line 569
    .restart local v9    # "preCheckCode":I
    .restart local v10    # "newPermissionType":I
    .restart local v11    # "showDialogTime":J
    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 542
    .end local v10    # "newPermissionType":I
    .end local v11    # "showDialogTime":J
    :cond_9
    :goto_1
    nop

    .line 580
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->minusRequestCount(I)V

    .line 584
    :try_start_c
    invoke-static {v3, v8}, Lcom/huawei/hsm/permission/StubController;->handleANRFilterFIFO(II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 588
    nop

    .line 542
    return v9

    .line 580
    .end local v9    # "preCheckCode":I
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 576
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 577
    .local v9, "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 578
    nop

    .line 580
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->minusRequestCount(I)V

    .line 584
    :try_start_e
    invoke-static {v3, v8}, Lcom/huawei/hsm/permission/StubController;->handleANRFilterFIFO(II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    .line 588
    nop

    .line 578
    return v6

    .line 573
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    move-object v9, v0

    .line 574
    .local v9, "e":Ljava/lang/NullPointerException;
    :try_start_f
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 575
    nop

    .line 580
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->minusRequestCount(I)V

    .line 584
    :try_start_10
    invoke-static {v3, v8}, Lcom/huawei/hsm/permission/StubController;->handleANRFilterFIFO(II)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 588
    nop

    .line 575
    return v6

    .line 580
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/huawei/hsm/permission/StubController;->minusRequestCount(I)V

    .line 584
    :try_start_11
    invoke-static {v3, v8}, Lcom/huawei/hsm/permission/StubController;->handleANRFilterFIFO(II)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 588
    nop

    .line 587
    throw v0
.end method

.method public static holdForInsertBroadcastRecord(Ljava/lang/String;II)V
    .locals 5
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "permissionType"    # I
    .param p2, "uid"    # I

    .line 323
    invoke-static {p2}, Lcom/huawei/hsm/permission/StubController;->handleIncomingUser(I)I

    move-result v0

    .line 325
    .local v0, "validUid":I
    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->getHoldServiceByUid(I)Lcom/huawei/permission/IHoldService;

    move-result-object v1

    .line 326
    .local v1, "hService":Lcom/huawei/permission/IHoldService;
    if-nez v1, :cond_0

    .line 327
    const-string v2, "StubController"

    const-string v3, "holdForInsertBroadcastRecord service = null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 331
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 332
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "packageName"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v3, "permissionType"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    const-string v3, "appUid"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/huawei/hsm/permission/StubController$1;

    invoke-direct {v4, p1, v1, v2}, Lcom/huawei/hsm/permission/StubController$1;-><init>(ILcom/huawei/permission/IHoldService;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 355
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 357
    return-void
.end method

.method public static declared-synchronized isGlobalSwitchOn(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionType"    # I

    const-class v0, Lcom/huawei/hsm/permission/StubController;

    monitor-enter v0

    .line 758
    monitor-exit v0

    const/4 v0, 0x1

    return v0
.end method

.method private static letCurrentRequestGoOrNot(I)Z
    .locals 5
    .param p0, "permissionType"    # I

    .line 233
    sget-object v0, Lcom/huawei/hsm/permission/StubController;->mRequestCountSync:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    const/16 v1, 0xa

    :try_start_0
    sget v2, Lcom/huawei/hsm/permission/StubController;->mRequestCount:I

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-ge v1, v2, :cond_0

    if-ne v4, p0, :cond_0

    .line 235
    monitor-exit v0

    return v3

    .line 236
    :cond_0
    const/4 v1, 0x6

    sget v2, Lcom/huawei/hsm/permission/StubController;->mPhoneIDRequestCount:I

    if-ge v1, v2, :cond_1

    if-ne v4, p0, :cond_1

    .line 237
    monitor-exit v0

    return v3

    .line 239
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static minusRequestCount(I)V
    .locals 2
    .param p0, "permissionType"    # I

    .line 205
    sget-object v0, Lcom/huawei/hsm/permission/StubController;->mRequestCountSync:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    sget v1, Lcom/huawei/hsm/permission/StubController;->mRequestCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/huawei/hsm/permission/StubController;->mRequestCount:I

    .line 207
    const/16 v1, 0x10

    if-ne v1, p0, :cond_0

    .line 208
    sget v1, Lcom/huawei/hsm/permission/StubController;->mPhoneIDRequestCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/huawei/hsm/permission/StubController;->mPhoneIDRequestCount:I

    .line 210
    :cond_0
    const/16 v1, 0x8

    if-ne v1, p0, :cond_1

    .line 211
    sget v1, Lcom/huawei/hsm/permission/StubController;->mLocationRequestCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/huawei/hsm/permission/StubController;->mLocationRequestCount:I

    .line 216
    :cond_1
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static notifyBackgroundMgr(Ljava/lang/String;IIII)V
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uidOf3RdApk"    # I
    .param p3, "permType"    # I
    .param p4, "permCfg"    # I

    .line 623
    invoke-static {p2}, Lcom/huawei/hsm/permission/StubController;->handleIncomingUser(I)I

    move-result v0

    .line 624
    .local v0, "validUid":I
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 625
    return-void

    .line 627
    :cond_0
    invoke-static {p2, p1}, Lcom/huawei/hsm/permission/StubController;->handleIncomingPid(II)I

    move-result v1

    .line 628
    .local v1, "validPid":I
    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->getHoldServiceByUid(I)Lcom/huawei/permission/IHoldService;

    move-result-object v2

    .line 629
    .local v2, "hService":Lcom/huawei/permission/IHoldService;
    if-nez v2, :cond_1

    .line 630
    const-string v3, "StubController"

    const-string v4, "service = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void

    .line 634
    :cond_1
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 635
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "pkgName"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v4, "pid"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    const-string v4, "uid"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    const-string v4, "permType"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    const-string v4, "permCfg"

    invoke-virtual {v3, v4, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    const-string v4, "call_hsm_background_moniter"

    invoke-interface {v2, v4, v3}, Lcom/huawei/permission/IHoldService;->callHsmService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 643
    :catch_0
    move-exception v3

    .line 644
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "StubController"

    const-string v5, "notifyBackgroundMgr excepton : "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 641
    :catch_1
    move-exception v3

    .line 642
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "StubController"

    const-string v5, "notifyBackgroundMgr remote_excepton : "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 646
    :goto_1
    return-void
.end method

.method private static notifyBinderDie()V
    .locals 4

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;>;"
    sget-object v1, Lcom/huawei/hsm/permission/StubController;->mServiceDieCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 180
    :try_start_0
    sget-object v2, Lcom/huawei/hsm/permission/StubController;->mServiceDieCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 183
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;

    .line 185
    .local v3, "callback":Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;
    invoke-interface {v3}, Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;->notifyServiceDie()V

    .line 183
    .end local v3    # "callback":Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 181
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static queryAllMaliPkgs()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v0

    .line 652
    .local v0, "hService":Lcom/huawei/permission/IHoldService;
    if-eqz v0, :cond_0

    .line 654
    :try_start_0
    invoke-interface {v0}, Lcom/huawei/permission/IHoldService;->queryAllMaliPkgs()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 655
    :catch_0
    move-exception v1

    .line 656
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StubController"

    const-string v3, "queryAllMaliPkgs : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 659
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static queryMaliAppInfoByPkg(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/huawei/permission/MaliInfoBean;",
            ">;"
        }
    .end annotation

    .line 663
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v0

    .line 664
    .local v0, "hService":Lcom/huawei/permission/IHoldService;
    if-eqz v0, :cond_0

    .line 666
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/huawei/permission/IHoldService;->queryMaliAppInfoByPkg(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 667
    :catch_0
    move-exception v1

    .line 668
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StubController"

    const-string v3, "queryMaliAppInfoByPkg : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static queryMaliAppInfoShort(I)Ljava/util/List;
    .locals 4
    .param p0, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/huawei/permission/MaliInfoBean;",
            ">;"
        }
    .end annotation

    .line 675
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v0

    .line 676
    .local v0, "hService":Lcom/huawei/permission/IHoldService;
    if-eqz v0, :cond_0

    .line 678
    :try_start_0
    invoke-interface {v0, p0}, Lcom/huawei/permission/IHoldService;->queryMaliAppInfoShort(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StubController"

    const-string v3, "queryMaliAppInfoShort : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static recordPermissionUsage(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 407
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v0

    .line 408
    .local v0, "hService":Lcom/huawei/permission/IHoldService;
    if-nez v0, :cond_0

    .line 409
    const-string v1, "StubController"

    const-string v2, "service = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void

    .line 413
    :cond_0
    :try_start_0
    const-string v1, "call_hsm_permission_usage_moniter"

    invoke-interface {v0, v1, p0}, Lcom/huawei/permission/IHoldService;->callHsmService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StubController"

    const-string v3, "recordPermissionUsage excepton : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 414
    :catch_1
    move-exception v1

    .line 415
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "StubController"

    const-string v3, "recordPermissionUsage remote_excepton : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 419
    :goto_1
    return-void
.end method

.method public static registMaliAppInfoListener(Lcom/huawei/permission/IHsmMaliAppInfoListener;II)V
    .locals 4
    .param p0, "listener"    # Lcom/huawei/permission/IHsmMaliAppInfoListener;
    .param p1, "flags"    # I
    .param p2, "priority"    # I

    .line 687
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v0

    .line 688
    .local v0, "hService":Lcom/huawei/permission/IHoldService;
    if-nez v0, :cond_0

    .line 689
    const-string v1, "StubController"

    const-string v2, "registMaliAppInfoListener, service = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return-void

    .line 694
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/huawei/permission/IHoldService;->registMaliAppInfoListener(Lcom/huawei/permission/IHsmMaliAppInfoListener;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    goto :goto_0

    .line 695
    :catch_0
    move-exception v1

    .line 696
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StubController"

    const-string v3, "registMaliAppInfoListener : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static setRestrictStatus(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "isRestricted"    # Z

    .line 715
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v0

    .line 716
    .local v0, "hService":Lcom/huawei/permission/IHoldService;
    if-nez v0, :cond_0

    .line 717
    const-string v1, "StubController"

    const-string v2, "setRestrictStatus, service = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void

    .line 722
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Lcom/huawei/permission/IHoldService;->setRestrictStatus(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    goto :goto_0

    .line 723
    :catch_0
    move-exception v1

    .line 724
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StubController"

    const-string v3, "setRestrictStatus : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static unregistMaliAppInfoListener(Lcom/huawei/permission/IHsmMaliAppInfoListener;)V
    .locals 4
    .param p0, "listener"    # Lcom/huawei/permission/IHsmMaliAppInfoListener;

    .line 701
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v0

    .line 702
    .local v0, "hService":Lcom/huawei/permission/IHoldService;
    if-nez v0, :cond_0

    .line 703
    const-string v1, "StubController"

    const-string v2, "unregistMaliciousListener, service = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-void

    .line 708
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/huawei/permission/IHoldService;->unregistMaliAppInfoListener(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    goto :goto_0

    .line 709
    :catch_0
    move-exception v1

    .line 710
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StubController"

    const-string v3, "unregistMaliAppInfoListener : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
