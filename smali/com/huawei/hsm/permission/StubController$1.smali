.class Lcom/huawei/hsm/permission/StubController$1;
.super Ljava/lang/Object;
.source "StubController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hsm/permission/StubController;->holdForInsertBroadcastRecord(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$hService:Lcom/huawei/permission/IHoldService;

.field final synthetic val$permissionType:I


# direct methods
.method constructor <init>(ILcom/huawei/permission/IHoldService;Landroid/os/Bundle;)V
    .locals 0

    .line 336
    iput p1, p0, Lcom/huawei/hsm/permission/StubController$1;->val$permissionType:I

    iput-object p2, p0, Lcom/huawei/hsm/permission/StubController$1;->val$hService:Lcom/huawei/permission/IHoldService;

    iput-object p3, p0, Lcom/huawei/hsm/permission/StubController$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 340
    :try_start_0
    iget v0, p0, Lcom/huawei/hsm/permission/StubController$1;->val$permissionType:I

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->access$300(I)V

    .line 341
    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->access$400()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 342
    iget v0, p0, Lcom/huawei/hsm/permission/StubController$1;->val$permissionType:I

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->access$500(I)V

    .line 343
    const-string v0, "StubController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdForInsertBroadcastRecord mRequestCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hsm/permission/StubController;->access$400()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget v0, p0, Lcom/huawei/hsm/permission/StubController$1;->val$permissionType:I

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->access$500(I)V

    .line 344
    return-void

    .line 346
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hsm/permission/StubController$1;->val$hService:Lcom/huawei/permission/IHoldService;

    const-string v1, "record_permission_method"

    iget-object v2, p0, Lcom/huawei/hsm/permission/StubController$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/huawei/permission/IHoldService;->callHsmService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    iget v0, p0, Lcom/huawei/hsm/permission/StubController$1;->val$permissionType:I

    invoke-static {v0}, Lcom/huawei/hsm/permission/StubController;->access$500(I)V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/huawei/hsm/permission/StubController$1;->val$permissionType:I

    invoke-static {v1}, Lcom/huawei/hsm/permission/StubController;->access$500(I)V

    throw v0

    .line 349
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    iget v1, p0, Lcom/huawei/hsm/permission/StubController$1;->val$permissionType:I

    invoke-static {v1}, Lcom/huawei/hsm/permission/StubController;->access$500(I)V

    .line 350
    return-void

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    iget v1, p0, Lcom/huawei/hsm/permission/StubController$1;->val$permissionType:I

    invoke-static {v1}, Lcom/huawei/hsm/permission/StubController;->access$500(I)V

    .line 348
    return-void
.end method
