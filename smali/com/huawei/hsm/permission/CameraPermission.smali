.class public Lcom/huawei/hsm/permission/CameraPermission;
.super Ljava/lang/Object;
.source "CameraPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraPermission"


# instance fields
.field public isCameraBlocked:Z

.field private mContext:Landroid/content/Context;

.field private mPid:I

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->isCameraBlocked:Z

    .line 30
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mUid:I

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mPid:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mContext:Landroid/content/Context;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->isCameraBlocked:Z

    .line 36
    iput-object p1, p0, Lcom/huawei/hsm/permission/CameraPermission;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mUid:I

    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mPid:I

    .line 39
    return-void
.end method

.method public static blockStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 79
    :cond_1
    :goto_0
    new-instance v1, Lcom/huawei/hsm/permission/CameraPermission;

    invoke-direct {v1, p0}, Lcom/huawei/hsm/permission/CameraPermission;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, "cameraPermission":Lcom/huawei/hsm/permission/CameraPermission;
    invoke-virtual {v1}, Lcom/huawei/hsm/permission/CameraPermission;->remind()V

    .line 81
    iget-boolean v2, v1, Lcom/huawei/hsm/permission/CameraPermission;->isCameraBlocked:Z

    return v2
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
    iget v1, p0, Lcom/huawei/hsm/permission/CameraPermission;->mUid:I

    iget v2, p0, Lcom/huawei/hsm/permission/CameraPermission;->mPid:I

    const/16 v3, 0x400

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->accessPermission(IIILjava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public remind()V
    .locals 4

    .line 51
    iget v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mUid:I

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/huawei/hsm/permission/CameraPermission;->recordPermissionUsed()V

    .line 53
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mContext:Landroid/content/Context;

    const/16 v1, 0x400

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/huawei/hsm/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    return-void

    .line 62
    :cond_1
    iget v0, p0, Lcom/huawei/hsm/permission/CameraPermission;->mUid:I

    iget v2, p0, Lcom/huawei/hsm/permission/CameraPermission;->mPid:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "selectionResult":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/hsm/permission/CameraPermission;->isCameraBlocked:Z

    .line 68
    :cond_2
    return-void
.end method
