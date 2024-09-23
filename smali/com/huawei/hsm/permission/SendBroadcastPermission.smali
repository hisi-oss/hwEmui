.class public Lcom/huawei/hsm/permission/SendBroadcastPermission;
.super Ljava/lang/Object;
.source "SendBroadcastPermission.java"


# static fields
.field private static final INSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final TAG:Ljava/lang/String; = "SendBroadcastPermission"

.field private static final UNINSTALL_SHORTCUT_PERMISSION:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"


# instance fields
.field private mPermissionType:I

.field private mPid:I

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mUid:I

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPid:I

    .line 30
    return-void
.end method

.method private getPermissionType(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    const/high16 v1, 0x1000000

    iput v1, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    .line 39
    :cond_1
    return-void
.end method

.method private getPermissionType(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 85
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/16 v0, 0x1000

    iput v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    .line 88
    :cond_0
    return-void
.end method

.method private isGlobalSwitchOn(Landroid/content/Intent;II)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method private recordPermissionUsed()V
    .locals 5

    .line 43
    invoke-static {}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->getHandleInstance()Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    move-result-object v0

    .line 44
    .local v0, "mPermRecHandler":Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    if-eqz v0, :cond_0

    .line 45
    iget v1, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mUid:I

    iget v2, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPid:I

    iget v3, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->accessPermission(IIILjava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public allowSendBroadcast(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 53
    invoke-direct {p0, p1}, Lcom/huawei/hsm/permission/SendBroadcastPermission;->getPermissionType(Landroid/content/Intent;)V

    .line 55
    iget v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 59
    :cond_0
    iget v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mUid:I

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/huawei/hsm/permission/SendBroadcastPermission;->recordPermissionUsed()V

    .line 61
    return v1

    .line 64
    :cond_1
    iget v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mUid:I

    iget v2, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPid:I

    invoke-direct {p0, p1, v0, v2}, Lcom/huawei/hsm/permission/SendBroadcastPermission;->isGlobalSwitchOn(Landroid/content/Intent;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    return v1

    .line 69
    :cond_2
    iget v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    iget v2, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mUid:I

    iget v3, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPid:I

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "selectionResult":I
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 79
    return v1

    .line 76
    :cond_3
    return v2

    .line 73
    :cond_4
    const-string v1, "SendBroadcastPermission"

    const-string v3, "SendBroadcastPermission holdForGetPermissionSelection error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v2
.end method

.method public insertSendBroadcastRecord(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 91
    invoke-direct {p0, p2}, Lcom/huawei/hsm/permission/SendBroadcastPermission;->getPermissionType(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    if-nez v0, :cond_0

    .line 94
    const-string v0, "SendBroadcastPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertSendBroadcastRecord mPermissionType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->checkPreconditionPermissionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "SendBroadcastPermission"

    const-string v1, "insertSendBroadcastRecord, do not need to check permission."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/huawei/hsm/permission/SendBroadcastPermission;->recordPermissionUsed()V

    .line 101
    return-void

    .line 104
    :cond_1
    iget v0, p0, Lcom/huawei/hsm/permission/SendBroadcastPermission;->mPermissionType:I

    invoke-static {p1, v0, p3}, Lcom/huawei/hsm/permission/StubController;->holdForInsertBroadcastRecord(Ljava/lang/String;II)V

    .line 105
    return-void
.end method
