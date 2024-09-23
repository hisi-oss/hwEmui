.class Lcom/huawei/android/bastet/BastetManager$1;
.super Lcom/huawei/android/bastet/IBastetListener$Stub;
.source "BastetManager.java"


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

    .line 97
    iput-object p1, p0, Lcom/huawei/android/bastet/BastetManager$1;->this$0:Lcom/huawei/android/bastet/BastetManager;

    invoke-direct {p0}, Lcom/huawei/android/bastet/IBastetListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onProxyIndicateMessage(III)V
    .locals 1
    .param p1, "proxyId"    # I
    .param p2, "err"    # I
    .param p3, "ext"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetManager$1;->this$0:Lcom/huawei/android/bastet/BastetManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/huawei/android/bastet/BastetManager;->handleProxyMessage(III)V

    .line 102
    return-void
.end method
