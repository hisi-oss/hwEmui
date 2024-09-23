.class final Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;
.super Lcom/huawei/permission/IHoldNotifier$Stub;
.source "SmsPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hsm/permission/SmsPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotifierBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hsm/permission/SmsPermission;


# direct methods
.method private constructor <init>(Lcom/huawei/hsm/permission/SmsPermission;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;->this$0:Lcom/huawei/hsm/permission/SmsPermission;

    invoke-direct {p0}, Lcom/huawei/permission/IHoldNotifier$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hsm/permission/SmsPermission;Lcom/huawei/hsm/permission/SmsPermission$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huawei/hsm/permission/SmsPermission;
    .param p2, "x1"    # Lcom/huawei/hsm/permission/SmsPermission$1;

    .line 72
    invoke-direct {p0, p1}, Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;-><init>(Lcom/huawei/hsm/permission/SmsPermission;)V

    return-void
.end method


# virtual methods
.method public notifyResult(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 75
    iget-object v0, p0, Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;->this$0:Lcom/huawei/hsm/permission/SmsPermission;

    invoke-static {v0}, Lcom/huawei/hsm/permission/SmsPermission;->access$400(Lcom/huawei/hsm/permission/SmsPermission;)Landroid/hsm/HwSystemManager$Notifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "SmsPermission"

    const-string v1, "notifyAuthResultOfSmsSend authenticate complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/huawei/hsm/permission/SmsPermission$NotifierBinder;->this$0:Lcom/huawei/hsm/permission/SmsPermission;

    invoke-static {v0}, Lcom/huawei/hsm/permission/SmsPermission;->access$400(Lcom/huawei/hsm/permission/SmsPermission;)Landroid/hsm/HwSystemManager$Notifier;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/hsm/HwSystemManager$Notifier;->notifyResult(Landroid/os/Bundle;)I

    goto :goto_0

    .line 79
    :cond_0
    const-string v0, "SmsPermission"

    const-string v1, "notifyAuthResultOfSmsSend Notifier is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
