.class public Lcom/huawei/hsm/permission/SmsPermission;
.super Ljava/lang/Object;
.source "SmsPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;,
        Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;
    }
.end annotation


# static fields
.field public static final AUTHENTICATE_RESULT_ALLOW:I = 0x0

.field public static final AUTHENTICATE_RESULT_ALLOW_FOREVER:I = 0x1

.field public static final AUTHENTICATE_RESULT_DISALLOW:I = 0x2

.field public static final AUTHENTICATE_RESULT_DISALLOW_FOREVER:I = 0x3

.field private static final DIVIDER_CHAR:Ljava/lang/String; = ":"

.field public static final KEY_AUTHENTICATE_RESULT:Ljava/lang/String; = "sms_authenticate_result_list"

.field public static final KEY_SMS_ID:Ljava/lang/String; = "sms_id_list"

.field public static final NEED_AUTHENTICATE:I = 0x4

.field public static final PARAMETER_INVALID:I = 0x6

.field private static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final SERVICE_EXCEPTION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SmsPermission"

.field private static isControl:Z

.field private static mSmsPermission:Lcom/huawei/hsm/permission/SmsPermission;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastSmsId:I

.field private final mNotifierBinder:Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;

.field private final mServiceDieListener:Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;

.field private mSmsNotifier:Landroid/hsm/HwSystemManager$Notifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-string v0, "ro.config.hw_wirenetcontrol"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/hsm/permission/SmsPermission;->isControl:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;-><init>(Lcom/huawei/hsm/permission/SmsPermission;Lcom/huawei/hsm/permission/SmsPermission$1;)V

    iput-object v0, p0, Lcom/huawei/hsm/permission/SmsPermission;->mNotifierBinder:Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;

    .line 60
    new-instance v0, Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;

    invoke-direct {v0, p0, v1}, Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;-><init>(Lcom/huawei/hsm/permission/SmsPermission;Lcom/huawei/hsm/permission/SmsPermission$1;)V

    iput-object v0, p0, Lcom/huawei/hsm/permission/SmsPermission;->mServiceDieListener:Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;

    .line 86
    iput-object v1, p0, Lcom/huawei/hsm/permission/SmsPermission;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/huawei/hsm/permission/SmsPermission;->mServiceDieListener:Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->addServiceDieListener(Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;)V

    .line 88
    return-void
.end method

.method static synthetic access$200(Lcom/huawei/hsm/permission/SmsPermission;)I
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hsm/permission/SmsPermission;

    .line 25
    iget v0, p0, Lcom/huawei/hsm/permission/SmsPermission;->mLastSmsId:I

    return v0
.end method

.method static synthetic access$300(II)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 25
    invoke-static {p0, p1}, Lcom/huawei/hsm/permission/SmsPermission;->packDataOfException(II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/hsm/permission/SmsPermission;)Landroid/hsm/HwSystemManager$Notifier;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/hsm/permission/SmsPermission;

    .line 25
    iget-object v0, p0, Lcom/huawei/hsm/permission/SmsPermission;->mSmsNotifier:Landroid/hsm/HwSystemManager$Notifier;

    return-object v0
.end method

.method public static getInstance()Lcom/huawei/hsm/permission/SmsPermission;
    .locals 2

    .line 91
    const-class v0, Lcom/huawei/hsm/permission/SmsPermission;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/huawei/hsm/permission/SmsPermission;->mSmsPermission:Lcom/huawei/hsm/permission/SmsPermission;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/huawei/hsm/permission/SmsPermission;

    invoke-direct {v1}, Lcom/huawei/hsm/permission/SmsPermission;-><init>()V

    sput-object v1, Lcom/huawei/hsm/permission/SmsPermission;->mSmsPermission:Lcom/huawei/hsm/permission/SmsPermission;

    .line 95
    :cond_0
    sget-object v1, Lcom/huawei/hsm/permission/SmsPermission;->mSmsPermission:Lcom/huawei/hsm/permission/SmsPermission;

    monitor-exit v0

    return-object v1

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isParamInvalidForAuth(Landroid/hsm/HwSystemManager$Notifier;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "notifyResult"    # Landroid/hsm/HwSystemManager$Notifier;
    .param p1, "callingUid"    # I
    .param p2, "smsId"    # I
    .param p3, "smsBody"    # Ljava/lang/String;
    .param p4, "smsAddress"    # Ljava/lang/String;

    .line 252
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 253
    .local v0, "uid":I
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    if-ne v0, p1, :cond_1

    .line 256
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 253
    :goto_1
    return v1
.end method

.method private static packDataOfException(II)Landroid/os/Bundle;
    .locals 4
    .param p0, "smsId"    # I
    .param p1, "result"    # I

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "smsIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v2, "sms_id_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v3, "sms_authenticate_result_list"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 247
    return-object v0
.end method

.method private recordPermissionUsed(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 101
    invoke-static {}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->getHandleInstance()Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    move-result-object v0

    .line 102
    .local v0, "mPermRecHandler":Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    if-eqz v0, :cond_0

    .line 103
    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->accessPermission(IIILjava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method private static sendFakeIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "PI"    # Landroid/app/PendingIntent;

    .line 273
    if-eqz p0, :cond_0

    .line 275
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static sendFakeIntents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p0, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    const/4 v0, 0x0

    .line 267
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 268
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {v1}, Lcom/huawei/hsm/permission/SmsPermission;->sendFakeIntent(Landroid/app/PendingIntent;)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    return-void

    .line 263
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public authenticateSmsSend(Landroid/hsm/HwSystemManager$Notifier;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Landroid/hsm/HwSystemManager$Notifier;
    .param p2, "uidOf3RdApk"    # I
    .param p3, "smsId"    # I
    .param p4, "smsBody"    # Ljava/lang/String;
    .param p5, "smsAddress"    # Ljava/lang/String;

    .line 218
    const-string v0, "SmsPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticateSmsSend  uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " smsid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1, p2, p3, p4, p5}, Lcom/huawei/hsm/permission/SmsPermission;->isParamInvalidForAuth(Landroid/hsm/HwSystemManager$Notifier;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "SmsPermission"

    const-string v1, "authenticateSmsSend PARAM IS INVALID!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz p1, :cond_0

    .line 223
    const/4 v0, 0x6

    invoke-static {p3, v0}, Lcom/huawei/hsm/permission/SmsPermission;->packDataOfException(II)Landroid/os/Bundle;

    move-result-object v0

    .line 224
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p1, v0}, Landroid/hsm/HwSystemManager$Notifier;->notifyResult(Landroid/os/Bundle;)I

    .line 226
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 228
    :cond_1
    iput-object p1, p0, Lcom/huawei/hsm/permission/SmsPermission;->mSmsNotifier:Landroid/hsm/HwSystemManager$Notifier;

    .line 229
    iput p3, p0, Lcom/huawei/hsm/permission/SmsPermission;->mLastSmsId:I

    .line 230
    iget-object v0, p0, Lcom/huawei/hsm/permission/SmsPermission;->mNotifierBinder:Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;

    .line 231
    invoke-static {v0, p2, p3, p4, p5}, Lcom/huawei/hsm/permission/StubController;->authenticateSmsSend(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const-string v0, "SmsPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticateSmsSend call service exception! sms id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x5

    invoke-static {p3, v0}, Lcom/huawei/hsm/permission/SmsPermission;->packDataOfException(II)Landroid/os/Bundle;

    move-result-object v0

    .line 234
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-interface {p1, v0}, Landroid/hsm/HwSystemManager$Notifier;->notifyResult(Landroid/os/Bundle;)I

    .line 236
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public isMmsBlocked()Z
    .locals 6

    .line 110
    sget-boolean v0, Lcom/huawei/hsm/permission/SmsPermission;->isControl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    return v1

    .line 114
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 115
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 118
    .local v2, "pid":I
    const/16 v3, 0x20

    invoke-static {v0, v3}, Lcom/huawei/hsm/permission/StubController;->checkPreBlock(II)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 119
    return v5

    .line 123
    :cond_1
    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 124
    invoke-direct {p0, v0, v2}, Lcom/huawei/hsm/permission/SmsPermission;->recordPermissionUsed(II)V

    .line 125
    return v1

    .line 128
    :cond_2
    iget-object v4, p0, Lcom/huawei/hsm/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/huawei/hsm/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 129
    return v1

    .line 133
    :cond_3
    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v3

    .line 135
    .local v3, "selectionResult":I
    if-nez v3, :cond_4

    .line 136
    const-string v4, "SmsPermission"

    const-string v5, "Get selection error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v1

    .line 140
    :cond_4
    const/4 v4, 0x2

    if-ne v4, v3, :cond_5

    .line 141
    return v5

    .line 143
    :cond_5
    return v1
.end method

.method public isSmsBlocked(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "smsBody"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 150
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 153
    .local v1, "pid":I
    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/huawei/hsm/permission/StubController;->checkPreBlock(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 154
    return v4

    .line 158
    :cond_0
    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/huawei/hsm/permission/SmsPermission;->recordPermissionUsed(II)V

    .line 160
    return v5

    .line 165
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v2

    .line 168
    .local v2, "selectionResult":I
    if-nez v2, :cond_2

    .line 169
    const-string v3, "SmsPermission"

    const-string v4, "Get selection error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v5

    .line 173
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v2, :cond_3

    .line 174
    invoke-static {p3}, Lcom/huawei/hsm/permission/SmsPermission;->sendFakeIntent(Landroid/app/PendingIntent;)V

    .line 175
    return v4

    .line 177
    :cond_3
    return v5
.end method

.method public isSmsBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "smsBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .line 182
    .local p3, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 183
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 186
    .local v1, "pid":I
    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/huawei/hsm/permission/StubController;->checkPreBlock(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 187
    return v4

    .line 191
    :cond_0
    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 192
    invoke-direct {p0, v0, v1}, Lcom/huawei/hsm/permission/SmsPermission;->recordPermissionUsed(II)V

    .line 193
    return v5

    .line 198
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v2

    .line 201
    .local v2, "selectionResult":I
    if-nez v2, :cond_2

    .line 202
    const-string v3, "SmsPermission"

    const-string v4, "Get selection error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v5

    .line 206
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v2, :cond_3

    .line 207
    invoke-static {p3}, Lcom/huawei/hsm/permission/SmsPermission;->sendFakeIntents(Ljava/util/List;)V

    .line 208
    return v4

    .line 210
    :cond_3
    return v5
.end method
