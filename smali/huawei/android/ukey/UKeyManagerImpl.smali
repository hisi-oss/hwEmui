.class public Lhuawei/android/ukey/UKeyManagerImpl;
.super Ljava/lang/Object;
.source "UKeyManagerImpl.java"


# static fields
.field private static DEBUG:Z = false

.field private static final FAILED:I = -0x1

.field private static final SDK_VERSION:I = 0x1

.field private static final SECURITY_SERVICE:Ljava/lang/String; = "securityserver"

.field private static final TAG:Ljava/lang/String; = "UKeyManagerImpl"

.field private static final TSMAGENT_PLUGIN_ID:I = 0x7

.field private static final UKEY_PLUGIN_ID:I = 0x6

.field public static final UNSUPPORT_UKEY:I

.field private static final mInstanceSync:Ljava/lang/Object;

.field private static mSecurityService:Lhuawei/android/security/IHwSecurityService;

.field private static final mTsmLock:Ljava/lang/Object;

.field private static volatile sSelf:Lhuawei/android/ukey/UKeyManagerImpl;

.field private static sUKeyManager:Lhuawei/android/security/IUKeyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    sput-boolean v0, Lhuawei/android/ukey/UKeyManagerImpl;->DEBUG:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/ukey/UKeyManagerImpl;->sSelf:Lhuawei/android/ukey/UKeyManagerImpl;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/ukey/UKeyManagerImpl;->mInstanceSync:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhuawei/android/ukey/UKeyManagerImpl;->mTsmLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getInstance()Lhuawei/android/ukey/UKeyManagerImpl;
    .locals 4

    .line 36
    sget-object v0, Lhuawei/android/ukey/UKeyManagerImpl;->sSelf:Lhuawei/android/ukey/UKeyManagerImpl;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lhuawei/android/ukey/UKeyManagerImpl;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lhuawei/android/ukey/UKeyManagerImpl;->sSelf:Lhuawei/android/ukey/UKeyManagerImpl;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lhuawei/android/ukey/UKeyManagerImpl;

    invoke-direct {v1}, Lhuawei/android/ukey/UKeyManagerImpl;-><init>()V

    sput-object v1, Lhuawei/android/ukey/UKeyManagerImpl;->sSelf:Lhuawei/android/ukey/UKeyManagerImpl;

    .line 40
    const-string v1, "securityserver"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 41
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Lhuawei/android/security/IHwSecurityService$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IHwSecurityService;

    move-result-object v2

    sput-object v2, Lhuawei/android/ukey/UKeyManagerImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;

    .line 42
    sget-object v2, Lhuawei/android/ukey/UKeyManagerImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;

    if-nez v2, :cond_0

    .line 43
    const-string v2, "UKeyManagerImpl"

    const-string v3, "error, securityserver was null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
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

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lhuawei/android/ukey/UKeyManagerImpl;->sSelf:Lhuawei/android/ukey/UKeyManagerImpl;

    return-object v0
.end method

.method private getTSMAgentService()Lhuawei/android/security/ITSMAgent;
    .locals 5

    .line 72
    sget-object v0, Lhuawei/android/ukey/UKeyManagerImpl;->mTsmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lhuawei/android/ukey/UKeyManagerImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 75
    :try_start_1
    sget-object v1, Lhuawei/android/ukey/UKeyManagerImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lhuawei/android/security/IHwSecurityService;->querySecurityInterface(I)Landroid/os/IBinder;

    move-result-object v1

    .line 76
    .local v1, "sPlugin":Landroid/os/IBinder;
    invoke-static {v1}, Lhuawei/android/security/ITSMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/ITSMAgent;

    move-result-object v2

    .line 77
    .local v2, "tsmAgent":Lhuawei/android/security/ITSMAgent;
    if-nez v2, :cond_0

    .line 78
    const-string v3, "UKeyManagerImpl"

    const-string v4, "TSMAgent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_0
    :try_start_2
    monitor-exit v0

    return-object v2

    .line 81
    .end local v1    # "sPlugin":Landroid/os/IBinder;
    .end local v2    # "tsmAgent":Lhuawei/android/security/ITSMAgent;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "UKeyManagerImpl"

    const-string v3, "RemoteException while getting TSMAgent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "UKeyManagerImpl"

    const-string v2, "SecurityService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getUKeyManagerService()Lhuawei/android/security/IUKeyManager;
    .locals 4

    .line 52
    sget-object v0, Lhuawei/android/ukey/UKeyManagerImpl;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lhuawei/android/ukey/UKeyManagerImpl;->sUKeyManager:Lhuawei/android/security/IUKeyManager;

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lhuawei/android/ukey/UKeyManagerImpl;->sUKeyManager:Lhuawei/android/security/IUKeyManager;

    monitor-exit v0

    return-object v1

    .line 56
    :cond_0
    sget-object v1, Lhuawei/android/ukey/UKeyManagerImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 58
    :try_start_1
    sget-object v1, Lhuawei/android/ukey/UKeyManagerImpl;->mSecurityService:Lhuawei/android/security/IHwSecurityService;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lhuawei/android/security/IHwSecurityService;->querySecurityInterface(I)Landroid/os/IBinder;

    move-result-object v1

    .line 59
    .local v1, "secPlugin":Landroid/os/IBinder;
    invoke-static {v1}, Lhuawei/android/security/IUKeyManager$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IUKeyManager;

    move-result-object v2

    sput-object v2, Lhuawei/android/ukey/UKeyManagerImpl;->sUKeyManager:Lhuawei/android/security/IUKeyManager;

    .line 60
    sget-object v2, Lhuawei/android/ukey/UKeyManagerImpl;->sUKeyManager:Lhuawei/android/security/IUKeyManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v2

    .line 61
    .end local v1    # "secPlugin":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lhuawei/android/ukey/UKeyManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 63
    const-string v2, "ukey"

    const-string v3, "Get UKeyManagerService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public createUKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "spID"    # Ljava/lang/String;
    .param p2, "ssdAid"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;
    .param p4, "timeStamp"    # Ljava/lang/String;

    .line 131
    const-string v0, "UKeyManagerImpl"

    const-string v1, "createUKey..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lhuawei/android/ukey/UKeyManagerImpl;->getTSMAgentService()Lhuawei/android/security/ITSMAgent;

    move-result-object v0

    .line 133
    .local v0, "tsmAgent":Lhuawei/android/security/ITSMAgent;
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lhuawei/android/security/ITSMAgent;->createSSD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "UKeyManagerImpl"

    const-string v3, "RemoteException when createUKey is invoked"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public deleteUKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "spID"    # Ljava/lang/String;
    .param p2, "ssdAid"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;
    .param p4, "timeStamp"    # Ljava/lang/String;

    .line 145
    const-string v0, "UKeyManagerImpl"

    const-string v1, "deleteUKey..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lhuawei/android/ukey/UKeyManagerImpl;->getTSMAgentService()Lhuawei/android/security/ITSMAgent;

    move-result-object v0

    .line 147
    .local v0, "tsmAgent":Lhuawei/android/security/ITSMAgent;
    if-eqz v0, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lhuawei/android/security/ITSMAgent;->deleteSSD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "UKeyManagerImpl"

    const-string v3, "RemoteException when deleteUKey is invoked"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSDKVersion()I
    .locals 1

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public getUKeyID()Ljava/lang/String;
    .locals 4

    .line 158
    const-string v0, "UKeyManagerImpl"

    const-string v1, "getUKeyID..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lhuawei/android/ukey/UKeyManagerImpl;->getTSMAgentService()Lhuawei/android/security/ITSMAgent;

    move-result-object v0

    .line 160
    .local v0, "tsmAgent":Lhuawei/android/security/ITSMAgent;
    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-interface {v0}, Lhuawei/android/security/ITSMAgent;->getCplc()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "UKeyManagerImpl"

    const-string v3, "RemoteException when getUKeyID is invoked"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUKeyStatus(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lhuawei/android/ukey/UKeyManagerImpl;->getUKeyManagerService()Lhuawei/android/security/IUKeyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    sget-object v0, Lhuawei/android/ukey/UKeyManagerImpl;->sUKeyManager:Lhuawei/android/security/IUKeyManager;

    invoke-interface {v0, p1}, Lhuawei/android/security/IUKeyManager;->isUKeySwitchDisabled(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UKeyManagerImpl"

    const-string v2, "RemoteException while getting ukey switch status"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getUKeyVersion()I
    .locals 3

    .line 95
    invoke-direct {p0}, Lhuawei/android/ukey/UKeyManagerImpl;->getUKeyManagerService()Lhuawei/android/security/IUKeyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    sget-object v0, Lhuawei/android/ukey/UKeyManagerImpl;->sUKeyManager:Lhuawei/android/security/IUKeyManager;

    invoke-interface {v0}, Lhuawei/android/security/IUKeyManager;->isSwitchFeatureOn()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UKeyManagerImpl"

    const-string v2, "RemoteException while getting ukey version"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestUKeyPermission(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ukey.UKeyPermissionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "appName"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 123
    const-string v1, "UKeyManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "appName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p2, v1}, Landroid/content/Context;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public syncUKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "spID"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Ljava/lang/String;

    .line 171
    const-string v0, "UKeyManagerImpl"

    const-string v1, "syncUKey..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lhuawei/android/ukey/UKeyManagerImpl;->getTSMAgentService()Lhuawei/android/security/ITSMAgent;

    move-result-object v0

    .line 173
    .local v0, "tsmAgent":Lhuawei/android/security/ITSMAgent;
    if-eqz v0, :cond_0

    .line 175
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lhuawei/android/security/ITSMAgent;->initEse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "UKeyManagerImpl"

    const-string v3, "RemoteException when syncUKey is invoked"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
