.class Lcom/huawei/uifirst/fastview/common/StatusDecoupling$1;
.super Ljava/lang/Object;
.source "StatusDecoupling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/uifirst/fastview/common/StatusDecoupling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/uifirst/fastview/common/StatusDecoupling;


# direct methods
.method constructor <init>(Lcom/huawei/uifirst/fastview/common/StatusDecoupling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/uifirst/fastview/common/StatusDecoupling;

    .line 150
    iput-object p1, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling$1;->this$0:Lcom/huawei/uifirst/fastview/common/StatusDecoupling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling$1;->this$0:Lcom/huawei/uifirst/fastview/common/StatusDecoupling;

    const-string v1, "timeOutRunnable run"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->locolLog(ILjava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/huawei/uifirst/fastview/common/StatusDecoupling$1;->this$0:Lcom/huawei/uifirst/fastview/common/StatusDecoupling;

    invoke-virtual {v0}, Lcom/huawei/uifirst/fastview/common/StatusDecoupling;->timeoutHandle()V

    .line 155
    return-void
.end method
