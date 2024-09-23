.class final Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;
.super Ljava/lang/Object;
.source "SmsPermission.java"

# interfaces
.implements Lcom/huawei/hsm/permission/StubController$HoldServiceDieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hsm/permission/SmsPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceDieListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hsm/permission/SmsPermission;


# direct methods
.method private constructor <init>(Lcom/huawei/hsm/permission/SmsPermission;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;->this$0:Lcom/huawei/hsm/permission/SmsPermission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hsm/permission/SmsPermission;Lcom/huawei/hsm/permission/SmsPermission$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/hsm/permission/SmsPermission;
    .param p2, "x1"    # Lcom/huawei/hsm/permission/SmsPermission$1;

    .line 62
    invoke-direct {p0, p1}, Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;-><init>(Lcom/huawei/hsm/permission/SmsPermission;)V

    return-void
.end method


# virtual methods
.method public notifyServiceDie()V
    .locals 3

    .line 64
    const-string v0, "SmsPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyServiceDie The HoldService is DIED! lastSms Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;->this$0:Lcom/huawei/hsm/permission/SmsPermission;

    invoke-static {v2}, Lcom/huawei/hsm/permission/SmsPermission;->access$200(Lcom/huawei/hsm/permission/SmsPermission;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;->this$0:Lcom/huawei/hsm/permission/SmsPermission;

    invoke-static {v0}, Lcom/huawei/hsm/permission/SmsPermission;->access$200(Lcom/huawei/hsm/permission/SmsPermission;)I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/huawei/hsm/permission/SmsPermission;->access$300(II)Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;->this$0:Lcom/huawei/hsm/permission/SmsPermission;

    invoke-static {v1}, Lcom/huawei/hsm/permission/SmsPermission;->access$400(Lcom/huawei/hsm/permission/SmsPermission;)Landroid/hsm/HwSystemManager$Notifier;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/huawei/hsm/permission/SmsPermission$ServiceDieListener;->this$0:Lcom/huawei/hsm/permission/SmsPermission;

    invoke-static {v1}, Lcom/huawei/hsm/permission/SmsPermission;->access$400(Lcom/huawei/hsm/permission/SmsPermission;)Landroid/hsm/HwSystemManager$Notifier;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/hsm/HwSystemManager$Notifier;->notifyResult(Landroid/os/Bundle;)I

    .line 69
    :cond_0
    return-void
.end method
