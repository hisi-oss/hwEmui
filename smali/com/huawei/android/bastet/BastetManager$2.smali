.class Lcom/huawei/android/bastet/BastetManager$2;
.super Ljava/lang/Object;
.source "BastetManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/bastet/BastetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/bastet/BastetManager;


# direct methods
.method constructor <init>(Lcom/huawei/android/bastet/BastetManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/bastet/BastetManager;

    .line 120
    iput-object p1, p0, Lcom/huawei/android/bastet/BastetManager$2;->this$0:Lcom/huawei/android/bastet/BastetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 123
    const-string v0, "BastetManager"

    const-string v1, "Bastet service has died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/huawei/android/bastet/BastetManager;->access$000()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/huawei/android/bastet/BastetManager;->access$000()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 126
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/android/bastet/BastetManager;->access$002(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 127
    iget-object v1, p0, Lcom/huawei/android/bastet/BastetManager$2;->this$0:Lcom/huawei/android/bastet/BastetManager;

    iput-object v0, v1, Lcom/huawei/android/bastet/BastetManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    .line 128
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetManager$2;->this$0:Lcom/huawei/android/bastet/BastetManager;

    invoke-virtual {v0}, Lcom/huawei/android/bastet/BastetManager;->onBastetDied()V

    .line 130
    :cond_0
    return-void
.end method
