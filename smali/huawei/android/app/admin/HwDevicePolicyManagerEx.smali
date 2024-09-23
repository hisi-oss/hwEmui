.class public Lhuawei/android/app/admin/HwDevicePolicyManagerEx;
.super Ljava/lang/Object;
.source "HwDevicePolicyManagerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwDevicePolicyManagerEx"


# instance fields
.field private mSponsor:Lhuawei/android/app/admin/TransactionSponsor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lhuawei/android/app/admin/TransactionSponsor;

    invoke-direct {v0}, Lhuawei/android/app/admin/TransactionSponsor;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    .line 27
    return-void
.end method


# virtual methods
.method public addApn(Landroid/content/ComponentName;Ljava/util/Map;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p2, "apninfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "addApn"

    const/16 v1, 0x1389

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/Map;I)V

    .line 406
    return-void
.end method

.method public addDisabledDeactivateMdmPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "add_disabled_deactive_Mdm_packages"

    .line 237
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 236
    const/16 v1, 0x9d2

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 238
    return-void
.end method

.method public addDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "addDisallowedRunningApp"

    .line 192
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 191
    const/16 v1, 0xbbc

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 193
    return-void
.end method

.method public addDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "add_notuninstall_packages"

    .line 222
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 221
    const/16 v1, 0x9cf

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 223
    return-void
.end method

.method public addInstallPackageWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "add_install_packages"

    .line 207
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 206
    const/16 v1, 0x9cc

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 208
    return-void
.end method

.method public addNetworkAccessWhitelist(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    .local p2, "addrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "addNetworkAccessWhitelist"

    const/16 v1, 0x138f

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 436
    return-void
.end method

.method public addPersistentApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "addPersistentApp"

    .line 175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 174
    const/16 v1, 0xbb9

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 176
    return-void
.end method

.method public captureScreen(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 395
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "captureScreen"

    const/16 v2, 0x5e5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_captureScreen(ILjava/lang/String;Landroid/content/ComponentName;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public clearCarrierLockScreenPassword(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "clearExtendLockScreenPassword"

    .line 578
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 577
    const/16 v1, 0x1b5d

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_clearCarrierLockScreenPassword(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public clearDefaultLauncher(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 391
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "clearDefaultLauncher"

    const/16 v2, 0x5e3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 392
    return-void
.end method

.method public clearDeviceOwnerApp()V
    .locals 5

    .line 559
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "clearDeviceOwnerApp"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x5e8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 560
    return-void
.end method

.method public clearPackageData(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "clearPackageData"

    .line 150
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 149
    const/16 v1, 0x9c7

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public configExchangeMailProvider(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "para"    # Landroid/os/Bundle;

    .line 276
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "configExchangeMailProvider"

    .line 277
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 276
    const/16 v1, 0xdad

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_configExchangeMail(ILjava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;I)V

    .line 278
    return-void
.end method

.method public deleteApn(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "deleteApn"

    const/16 v1, 0x138a

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 411
    return-void
.end method

.method public disableInstallSource(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p2, "whitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "disableInstallPackage"

    .line 160
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 159
    const/16 v1, 0x9c9

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 161
    return-void
.end method

.method public enableInstallPackage(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 154
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "enableInstallPackage"

    .line 155
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 154
    const/16 v3, 0x9c8

    invoke-virtual {v0, v3, v1, p1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 156
    return-void
.end method

.method public formatSDCard(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "diskId"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "formatSDCard"

    .line 544
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 543
    const/16 v1, 0x1399

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_formatSDCard(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getApnInfo(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "getApnInfo"

    const/16 v1, 0x138c

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getApnInfo(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "keyWords"    # Landroid/os/Bundle;

    .line 515
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v4, "getPolicy"

    .line 516
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 515
    const/16 v1, 0x1395

    const/4 v7, 0x2

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getPolicy(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "keyWords"    # Landroid/os/Bundle;

    .line 505
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v4, "getPolicy"

    .line 506
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 505
    const/16 v1, 0x1395

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getPolicy(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledDeactivateMdmPackageList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "get_disabled_deactive_Mdm_packages"

    const/16 v2, 0x9d4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getListFunction(ILjava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisallowedRunningApp(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "getDisallowedRunningApp"

    const/16 v2, 0xbbe

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getListFunction(ILjava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisallowedUninstallPackageList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "get_install_packagewhitelist"

    const/16 v2, 0x9d1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getListFunction(ILjava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getHwFrameworkAdminList(I)Ljava/util/List;
    .locals 4
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "getHwAdminCachedList"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getListFunction(ILjava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPackageSourceWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "getInstallPackageSourceWhiteList"

    .line 170
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 169
    const/16 v3, 0x9cb

    invoke-virtual {v0, v3, v1, p1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getListFunction(ILjava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPackageWhiteList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "get_install_packagewhitelist"

    const/16 v2, 0x9ce

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getListFunction(ILjava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMailProviderForDomain(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "domain"    # Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "getMailProviderForDomain"

    const/16 v1, 0xdae

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getMailProviderForDomain(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAccessWhitelist(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "getNetworkAccessWhitelist"

    const/16 v2, 0x1391

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getListFunction(ILjava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentApp(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "getPersistentApp"

    .line 186
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 185
    const/16 v3, 0xbbb

    invoke-virtual {v0, v3, v1, p1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getListFunction(ILjava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policyName"    # Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v4, "getPolicy"

    .line 485
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 484
    const/16 v1, 0x1395

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getPolicy(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 494
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v4, "getPolicy"

    const/16 v1, 0x1395

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getPolicy(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ComponentName;II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSDCardEncryptionStatus()I
    .locals 4

    .line 450
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "getSDCardEncryptionStatus"

    const/16 v2, 0x1392

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_getSDCardEncryptionStatus(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hangupCalling(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 134
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "hangupCalling"

    .line 135
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 134
    const/16 v3, 0x7d1

    invoke-virtual {v0, v3, v1, p1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 136
    return-void
.end method

.method public hasHwPolicy()Z
    .locals 4

    .line 521
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "hasHwPolicy"

    .line 522
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 521
    const/16 v3, 0x1398

    invoke-virtual {v0, v3, v1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_hasHwPolicy(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public installCertificateWithType(Landroid/content/ComponentName;I[BLjava/lang/String;Ljava/lang/String;IZ)Z
    .locals 12
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "type"    # I
    .param p3, "certBuffer"    # [B
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "keystore"    # I
    .param p7, "requestAccess"    # Z

    .line 549
    move-object v0, p0

    iget-object v1, v0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v3, "installCertificateWithType"

    .line 550
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 549
    const/16 v2, 0x139c

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_installCertificateWithType(ILjava/lang/String;Landroid/content/ComponentName;I[BLjava/lang/String;Ljava/lang/String;IZI)Z

    move-result v1

    return v1
.end method

.method public installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packagePath"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "installPackage"

    .line 140
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 139
    const/16 v1, 0x9c5

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public isAccountDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "isAccountDisabled"

    .line 539
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 538
    const/16 v1, 0x139b

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isAccountDisabled(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isAdbDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 316
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isAdbDisabled"

    const/16 v2, 0x405

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isBackButtonDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 376
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isBackButtonDisabled"

    const/16 v2, 0x40f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 46
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isBluetoothDisabled"

    const/16 v2, 0x401

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isBootLoaderDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 68
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isBootLoaderDisabled"

    const/16 v2, 0x3f1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 108
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isDataConnectivityDisabled"

    const/16 v2, 0x3f9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isExternalStorageDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 88
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isExternalStorageDisabled"

    const/16 v2, 0x3f5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isGPSDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 336
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isGPSDisabled"

    const/16 v2, 0x403

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isGPSTurnOn(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 346
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isGPSTurnOn"

    const/16 v2, 0x5e1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isHomeButtonDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 366
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isHomeButtonDisabled"

    const/16 v2, 0x40d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method isHwFrameworkAdminAllowed(I)Z
    .locals 4
    .param p1, "code"    # I

    .line 291
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "getHwAdminCachedValue"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isInstallSourceDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 164
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isInstallSourceDisabled"

    const/16 v2, 0x9ca

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isNFCDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 98
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isNFCDisabled"

    const/16 v2, 0x3f7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isRooted(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 286
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "getRootState"

    const/16 v2, 0x5df

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSDCardDecryptionDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 473
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isSDCardDecryptionDisabled"

    .line 474
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 473
    const/16 v3, 0x1394

    invoke-virtual {v0, v3, v1, p1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSMSDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 129
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isSMSDisabled"

    const/16 v2, 0x3fd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSafeModeDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 306
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isSafeModeDisabled"

    const/16 v2, 0x409

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isStatusBarExpandPanelDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 271
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isStatusBarExpandPanelDisabled"

    const/16 v2, 0x3ff

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isTaskButtonDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 356
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isTaskButtonDisabled"

    const/16 v2, 0x40b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isUSBDataDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 78
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isUSBDataDisabled"

    const/16 v2, 0x3f3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isUSBOtgDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 326
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isUSBOtgDisabled"

    const/16 v2, 0x407

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isVoiceDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 119
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isVoiceDisabled"

    const/16 v2, 0x3fb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isWifiApDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 57
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isWifiApDisabled"

    const/16 v2, 0x3ef

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isWifiDisabled(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 35
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "isWifiDisabled"

    const/16 v2, 0x3ed

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, p1, v3}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_isFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public killApplicationProcess(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "killApplicationProcess"

    .line 252
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 251
    const/16 v1, 0xbbf

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 253
    return-void
.end method

.method public queryApn(Landroid/content/ComponentName;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    .local p2, "apninfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "queryApn"

    const/16 v1, 0x138d

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_queryApn(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/Map;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rebootDevice(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 261
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "rebootDevice"

    .line 262
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 261
    const/16 v3, 0x5de

    invoke-virtual {v0, v3, v1, p1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 263
    return-void
.end method

.method public removeCustomPolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "policyData"    # Landroid/os/Bundle;

    .line 510
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v3, "removePolicy"

    .line 511
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 510
    const/16 v1, 0x1397

    const/4 v7, 0x1

    move-object v2, p2

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setPolicy(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ILandroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public removeDisabledDeactivateMdmPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 241
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "remove_disabled_deactive_Mdm_packages"

    .line 242
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 241
    const/16 v1, 0x9d3

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 243
    return-void
.end method

.method public removeDisallowedRunningApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "removeDisallowedRunningApp"

    .line 197
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 196
    const/16 v1, 0xbbd

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 198
    return-void
.end method

.method public removeDisallowedUninstallPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "remove_notuninstall_packages"

    .line 227
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 226
    const/16 v1, 0x9d0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 228
    return-void
.end method

.method public removeInstallPackageWhiteList(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "remove_install_packages"

    .line 212
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 211
    const/16 v1, 0x9cd

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 213
    return-void
.end method

.method public removeNetworkAccessWhitelist(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 439
    .local p2, "addrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "removeNetworkAccessWhitelist"

    const/16 v1, 0x1390

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 441
    return-void
.end method

.method public removePersistentApp(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "removePersistentApp"

    .line 180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 179
    const/16 v1, 0xbba

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 181
    return-void
.end method

.method public removePolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "policyData"    # Landroid/os/Bundle;

    .line 489
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v3, "removePolicy"

    .line 490
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 489
    const/16 v1, 0x1397

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setPolicy(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ILandroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public resetNetworkSetting(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 584
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "resetNetworkSetting"

    .line 585
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 584
    const/16 v3, 0xdaf

    invoke-virtual {v0, v3, v1, p1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 586
    return-void
.end method

.method public setAccountDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .line 533
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setAccountDisabled"

    .line 534
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 533
    const/16 v1, 0x139a

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setAccountDisabled(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;ZI)V

    .line 535
    return-void
.end method

.method public setAdbDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 311
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setAdbDisabled"

    .line 312
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 311
    const/16 v1, 0x404

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 313
    return-void
.end method

.method public setBackButtonDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 371
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setBackButtonDisabled"

    .line 372
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 371
    const/16 v1, 0x40e

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 373
    return-void
.end method

.method public setBluetoothDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 41
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setBluetoothDisabled"

    .line 42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 41
    const/16 v1, 0x400

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 43
    return-void
.end method

.method public setBootLoaderDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 63
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setBootLoaderDisabled"

    .line 64
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 63
    const/16 v1, 0x3f0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 65
    return-void
.end method

.method public setCarrierLockScreenPassword(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setCarrierLockScreenPassword"

    .line 573
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 572
    const/16 v1, 0x1b5c

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setCarrierLockScreenPassword(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setCustomPolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "policyData"    # Landroid/os/Bundle;

    .line 500
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v3, "setPolicy"

    .line 501
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 500
    const/16 v1, 0x1396

    const/4 v7, 0x1

    move-object v2, p2

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setPolicy(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ILandroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public setCustomSettingsMenu(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    .local p2, "menusToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setCustomSettingsMenu"

    .line 400
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 399
    const/16 v1, 0x5e4

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;I)Z

    .line 401
    return-void
.end method

.method public setDataConnectivityDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 103
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setDataConnectivityDisabled"

    .line 104
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 103
    const/16 v1, 0x3f8

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 105
    return-void
.end method

.method public setDefaultLauncher(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setDefaultLauncher"

    const/16 v1, 0x5e2

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setDefaultLauncher(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)V

    .line 388
    return-void
.end method

.method public setDeviceOwnerApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setDeviceOwnerApp"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v1, 0x5e7

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 556
    return-void
.end method

.method public setExternalStorageDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 83
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setExternalStorageDisabled"

    .line 84
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 83
    const/16 v1, 0x3f4

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 85
    return-void
.end method

.method public setGPSDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 331
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setGPSDisabled"

    .line 332
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 331
    const/16 v1, 0x402

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 333
    return-void
.end method

.method public setHomeButtonDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 361
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setHomeButtonDisabled"

    .line 362
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 361
    const/16 v1, 0x40c

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 363
    return-void
.end method

.method public setNFCDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 93
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setNFCDisabled"

    .line 94
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 93
    const/16 v1, 0x3f6

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 95
    return-void
.end method

.method public setPolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "policyData"    # Landroid/os/Bundle;

    .line 479
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v3, "setPolicy"

    .line 480
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 479
    const/16 v1, 0x1396

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setPolicy(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;ILandroid/os/Bundle;I)Z

    move-result v0

    return v0
.end method

.method public setPreferApn(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setPreferApn"

    const/16 v1, 0x138e

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 431
    return-void
.end method

.method public setSDCardDecryptionDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 463
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setSDCardDecryptionDisabled"

    .line 464
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 463
    const/16 v1, 0x1393

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 465
    return-void
.end method

.method public setSMSDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 124
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setSMSDisabled"

    .line 125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 124
    const/16 v1, 0x3fc

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 126
    return-void
.end method

.method public setSafeModeDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 301
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setSafeModeDisabled"

    .line 302
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 301
    const/16 v1, 0x408

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 303
    return-void
.end method

.method public setSilentActiveAdmin(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 527
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "setSilentActiveAdmin"

    .line 528
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 527
    const/16 v3, 0x1771

    invoke-virtual {v0, v3, v1, p1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 529
    return-void
.end method

.method public setStatusBarExpandPanelDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 266
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setStatusBarExpandPanelDisabled"

    .line 267
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 266
    const/16 v1, 0x3fe

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 268
    return-void
.end method

.method public setSysTime(Landroid/content/ComponentName;J)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "millis"    # J

    .line 381
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setSysTime"

    .line 382
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 381
    const/16 v1, 0x5e6

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 383
    return-void
.end method

.method public setTaskButtonDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 351
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setTaskButtonDisabled"

    .line 352
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 351
    const/16 v1, 0x40a

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 353
    return-void
.end method

.method public setUSBDataDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 73
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setUSBDataDisabled"

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 73
    const/16 v1, 0x3f2

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 75
    return-void
.end method

.method public setUSBOtgDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 321
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setUSBOtgDisabled"

    .line 322
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 321
    const/16 v1, 0x406

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 323
    return-void
.end method

.method public setVoiceDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 114
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setSMSDisabled"

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 114
    const/16 v1, 0x3fa

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 116
    return-void
.end method

.method public setWifiApDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 52
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setWifiApDisabled"

    .line 53
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 52
    const/16 v1, 0x3ee

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 54
    return-void
.end method

.method public setWifiDisabled(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 30
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "setWifiDisabled"

    .line 31
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 30
    const/16 v1, 0x3ec

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 32
    return-void
.end method

.method public shutdownDevice(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 256
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v1, "shutdownDevice"

    .line 257
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 256
    const/16 v3, 0x5dd

    invoke-virtual {v0, v3, v1, p1, v2}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;I)V

    .line 258
    return-void
.end method

.method public turnOnGPS(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .line 341
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "turnOnGPS"

    .line 342
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 341
    const/16 v1, 0x5e0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 343
    return-void
.end method

.method public turnOnMobiledata(Landroid/content/ComponentName;Z)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .line 565
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "turnOnMobiledata"

    const/16 v1, 0x5e9

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_setFunctionDisabled(ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    .line 567
    return-void
.end method

.method public uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keepData"    # Z

    .line 144
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "uninstallPackage"

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 144
    const/16 v1, 0x9c6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_uninstallPackage(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;ZI)V

    .line 146
    return-void
.end method

.method public updateApn(Landroid/content/ComponentName;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 414
    .local p2, "apninfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->mSponsor:Lhuawei/android/app/admin/TransactionSponsor;

    const-string v2, "updateApn"

    const/16 v1, 0x138b

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/app/admin/TransactionSponsor;->transactTo_execCommand(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/Map;Ljava/lang/String;I)V

    .line 416
    return-void
.end method
