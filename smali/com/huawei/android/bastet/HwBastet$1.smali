.class Lcom/huawei/android/bastet/HwBastet$1;
.super Landroid/content/BroadcastReceiver;
.source "HwBastet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/bastet/HwBastet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/bastet/HwBastet;


# direct methods
.method constructor <init>(Lcom/huawei/android/bastet/HwBastet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huawei/android/bastet/HwBastet;

    .line 311
    iput-object p1, p0, Lcom/huawei/android/bastet/HwBastet$1;->this$0:Lcom/huawei/android/bastet/HwBastet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    invoke-static {}, Lcom/huawei/android/bastet/HwBastet;->access$000()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 317
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-static {v2}, Lcom/huawei/android/bastet/HwBastet;->access$102(Z)Z

    .line 319
    iget-object v2, p0, Lcom/huawei/android/bastet/HwBastet$1;->this$0:Lcom/huawei/android/bastet/HwBastet;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v2, v3}, Lcom/huawei/android/bastet/HwBastet;->access$300(Lcom/huawei/android/bastet/HwBastet;I)Z

    move-result v2

    invoke-static {v2}, Lcom/huawei/android/bastet/HwBastet;->access$202(Z)Z

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {v2}, Lcom/huawei/android/bastet/HwBastet;->access$102(Z)Z

    .line 325
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void
.end method
