.class public Lcom/huawei/payments/WalletFactory;
.super Ljava/lang/Object;
.source "WalletFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getWalletFactory(Landroid/content/Context;Ljava/lang/String;)Lcom/huawei/payments/Wallet;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "walletType"    # Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "com.huawei.permission.WALLET_FACTORY_ACCESS"

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 28
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    return-object v0

    .line 34
    :cond_1
    const-string v1, "Paytm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    new-instance v0, Lcom/huawei/payments/Paytm;

    invoke-direct {v0, p0}, Lcom/huawei/payments/Paytm;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 38
    :cond_2
    return-object v0

    .line 24
    :cond_3
    :goto_0
    return-object v0
.end method
