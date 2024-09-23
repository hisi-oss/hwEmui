.class public Lcom/huawei/hsm/permission/PinShortcutPermission;
.super Ljava/lang/Object;
.source "PinShortcutPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PinShortcutPermission"


# instance fields
.field private mPermissionType:I

.field private mPid:I

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x1000000

    iput v0, p0, Lcom/huawei/hsm/permission/PinShortcutPermission;->mPermissionType:I

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/PinShortcutPermission;->mUid:I

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/huawei/hsm/permission/PinShortcutPermission;->mPid:I

    .line 23
    return-void
.end method


# virtual methods
.method public allowOp()Z
    .locals 5

    .line 26
    iget v0, p0, Lcom/huawei/hsm/permission/PinShortcutPermission;->mPermissionType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 27
    return v1

    .line 30
    :cond_0
    iget v0, p0, Lcom/huawei/hsm/permission/PinShortcutPermission;->mUid:I

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->checkPrecondition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    return v1

    .line 34
    :cond_1
    iget v0, p0, Lcom/huawei/hsm/permission/PinShortcutPermission;->mPermissionType:I

    iget v2, p0, Lcom/huawei/hsm/permission/PinShortcutPermission;->mUid:I

    iget v3, p0, Lcom/huawei/hsm/permission/PinShortcutPermission;->mPid:I

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/huawei/hsm/permission/StubController;->holdForGetPermissionSelection(IIILjava/lang/String;)I

    move-result v0

    .line 36
    .local v0, "selectionResult":I
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 44
    return v1

    .line 41
    :cond_2
    return v2

    .line 38
    :cond_3
    const-string v1, "PinShortcutPermission"

    const-string v3, "PinShortcutPermission holdForGetPermissionSelection error"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return v2
.end method
