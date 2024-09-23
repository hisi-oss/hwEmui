.class public Lcom/huawei/hsm/permission/ReadMotionDataPermission;
.super Ljava/lang/Object;
.source "ReadMotionDataPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadMotionDataPermission"


# instance fields
.field private mPermissionType:I

.field private mPid:I

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mPermissionType:I

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mUid:I

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mPid:I

    .line 26
    return-void
.end method

.method private isGlobalSwitchOn(II)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method private recordPermissionUsed()V
    .locals 5

    .line 30
    invoke-static {}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->getHandleInstance()Lcom/huawei/hsm/permission/monitor/PermRecordHandler;

    move-result-object v0

    .line 31
    .local v0, "mPermRecHandler":Lcom/huawei/hsm/permission/monitor/PermRecordHandler;
    if-eqz v0, :cond_0

    .line 32
    iget v1, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mUid:I

    iget v2, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mPid:I

    iget v3, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mPermissionType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/hsm/permission/monitor/PermRecordHandler;->accessPermission(IIILjava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public allowOp()Z
    .locals 5

    .line 38
    iget v0, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mUid:I

    iget v1, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mPid:I

    invoke-direct {p0, v0, v1}, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->isGlobalSwitchOn(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 39
    return v1

    .line 41
    :cond_0
    iget v0, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mPermissionType:I

    if-nez v0, :cond_1

    .line 42
    return v1

    .line 45
    :cond_1
    iget v0, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mUid:I

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    invoke-direct {p0}, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->recordPermissionUsed()V

    .line 47
    return v1

    .line 50
    :cond_2
    iget v0, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mPermissionType:I

    iget v2, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mUid:I

    iget v3, p0, Lcom/huawei/hsm/permission/ReadMotionDataPermission;->mPid:I

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v0

    .line 52
    .local v0, "selectionResult":I
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 60
    return v1

    .line 57
    :cond_3
    return v2

    .line 54
    :cond_4
    const-string v1, "ReadMotionDataPermission"

    const-string v3, "holdForGetPermissionSelection error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v2
.end method
