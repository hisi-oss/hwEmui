.class public Lhuawei/android/app/admin/HwDeviceManagerImpl;
.super Ljava/lang/Object;
.source "HwDeviceManagerImpl.java"

# interfaces
.implements Landroid/hdm/HwDeviceManager$IHwDeviceManager;


# static fields
.field private static final ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field private static final ACTION_SEND_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final DISABLE_NAVIGATIONBAR_POLICY:Ljava/lang/String; = "disable-navigationbar"

.field private static final DISABLE_NOTIFICATION_POLICY:Ljava/lang/String; = "disable-notification"

.field private static final TAG:Ljava/lang/String; = "HwDevicePolicyManagerImpl"

.field private static final UNAVAILABLE_SSID_LIST:Ljava/lang/String; = "unavailable-ssid-list"


# instance fields
.field mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    .line 50
    new-instance v0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    invoke-direct {v0}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    .line 51
    return-void
.end method

.method private isAccessibilityServicesMDMWhiteList(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;

    .line 613
    const-string v0, "accessibility_services_white_list"

    .line 614
    .local v0, "POLICY_ACCESSIBILITY_SERVICES_WHITE_LIST":Ljava/lang/String;
    const-string v1, "value"

    .line 615
    .local v1, "STATE_VALUE":Ljava/lang/String;
    const/4 v2, 0x0

    move-object v3, v2

    .line 617
    .local v3, "servicesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v4, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v5, "accessibility_services_white_list"

    invoke-virtual {v4, v2, v5, v2}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 618
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v4, "value"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 621
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 619
    :catch_0
    move-exception v2

    .line 620
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "HwDevicePolicyManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAccessibilityServicesWhiteList getAllowaccessibility services error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 628
    :cond_0
    invoke-direct {p0, v3}, Lhuawei/android/app/admin/HwDeviceManagerImpl;->transformStringToComponentName(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 629
    .local v4, "componeNameWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 630
    .local v5, "size":I
    move v6, v2

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 631
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 632
    .local v7, "cpName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 633
    const/4 v2, 0x1

    return v2

    .line 630
    .end local v7    # "cpName":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 636
    .end local v6    # "i":I
    :cond_2
    return v2

    .line 624
    .end local v4    # "componeNameWhiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v5    # "size":I
    :cond_3
    :goto_2
    const-string v4, "HwDevicePolicyManagerImpl"

    const-string v5, "isAccessibilityServicesWhiteList servicesList is null or empty."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v2
.end method

.method private isGoogleAccount(Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .line 134
    const-string v0, "com.google"

    .line 135
    .local v0, "GOOGLE_ACCOUNT_TYPE":Ljava/lang/String;
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isInstall(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 312
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "type":Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const/4 v2, 0x0

    return v2

    .line 319
    :cond_0
    const/4 v2, 0x0

    .line 320
    .local v2, "story":Z
    const-string v3, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    const/4 v2, 0x1

    .line 323
    :cond_1
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 324
    const/4 v2, 0x1

    .line 326
    :cond_2
    return v2
.end method

.method private transformStringToComponentName(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 640
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v0, "componentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 642
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 643
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 644
    .local v3, "service":Landroid/content/ComponentName;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .end local v3    # "service":Landroid/content/ComponentName;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getNetworkAccessWhitelist()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v2, 0xfaa

    invoke-virtual {v1, v2}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HwDevicePolicyManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkAccessWhitelist error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public getRuntimePermissionFixAppList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 747
    const-string v0, "fix-app-runtime-permission-list"

    .line 749
    .local v0, "fixAppRuntimePermission":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "fix-app-runtime-permission-list"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 750
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 751
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 755
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 753
    :catch_0
    move-exception v1

    .line 754
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "HwDevicePolicyManagerImpl"

    const-string v3, "getRuntimePermissionFixAppList exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSingleApp()Ljava/lang/String;
    .locals 4

    .line 459
    const-string v0, "policy-single-app"

    .line 460
    .local v0, "POLICY_SINGLE_APP":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "policy-single-app"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 461
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 462
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 464
    :cond_0
    return-object v3
.end method

.method public getSuperWhiteListApp()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    move-object v1, v0

    .line 142
    .local v1, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v3, "super-whitelist-hwsystemmanager"

    invoke-virtual {v2, v0, v3, v0}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 146
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HwDevicePolicyManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstallPackageWhiteList error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public getTaskLockAppList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 732
    const-string v0, "task-lock-app-list"

    .line 733
    .local v0, "policyTaskLockAppList":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "task-lock-app-list"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 734
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 735
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 737
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public isAccessibilityServicesWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 599
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 600
    return v1

    .line 603
    :cond_0
    invoke-direct {p0, p1}, Lhuawei/android/app/admin/HwDeviceManagerImpl;->isAccessibilityServicesMDMWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    const/4 v0, 0x1

    return v0

    .line 607
    :cond_1
    return v1
.end method

.method public isAdbDisabled()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfac

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isAdbOrSDCardInstallRestricted()Z
    .locals 4

    .line 242
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfa3

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    .line 243
    .local v0, "isHwDisableinstall":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 244
    .local v1, "callingUid":I
    if-eqz v0, :cond_1

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_1

    .line 245
    :cond_0
    const-string v2, "HwDevicePolicyManagerImpl"

    const-string v3, "checkInstallPackageDisabled true "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v2, 0x1

    return v2

    .line 248
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isAllowedInstallPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 252
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 253
    return v0

    .line 255
    :cond_0
    const/4 v1, 0x0

    .line 257
    .local v1, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v3, 0xfa7

    invoke-virtual {v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 260
    goto :goto_0

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwDevicePolicyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstallPackageWhiteList error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 264
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 262
    :cond_2
    :goto_1
    return v0
.end method

.method public isAndroidAnimationDisabled()Z
    .locals 4

    .line 664
    const-string v0, "disabled-android-animation"

    .line 665
    .local v0, "DISABLED_ANDROID_ANIMATION":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disabled-android-animation"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 666
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public isApplicationDisabled(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 364
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 365
    return v1

    .line 368
    :cond_1
    const-string v2, "com.android.settings"

    .line 369
    .local v2, "settingPackageName":Ljava/lang/String;
    const-string v3, "com.android.settings.FallbackHome"

    .line 371
    .local v3, "SETTINGS_FALLBACK_ACTIVITY_NAME":Ljava/lang/String;
    const/4 v4, 0x0

    .line 373
    .local v4, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v5, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v6, 0xfbc

    invoke-virtual {v5, v6}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v5

    move-object v4, v5

    .line 374
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 375
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 376
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 377
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 378
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 379
    return v1

    .line 382
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 388
    :cond_3
    goto :goto_0

    .line 386
    :catch_0
    move-exception v5

    .line 387
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwDevicePolicyManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIsDisableApplication error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public isBackButtonDisabled()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfb1

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isBluetoothDisabled()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfa9

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isChangeLauncherDisable()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfb2

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isChangeWallpaperDisabled()Z
    .locals 4

    .line 470
    const-string v0, "disable-change-wallpaper"

    .line 471
    .local v0, "DISABLE_CHANGE_WALLPAPER":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable-change-wallpaper"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 472
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 473
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 475
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isClipboardDisabled()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfb9

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isDisabledDeactivateMdmPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 292
    return v0

    .line 294
    :cond_0
    const/4 v1, 0x0

    .line 296
    .local v1, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v3, 0xfb3

    invoke-virtual {v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v2

    .line 298
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwDevicePolicyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDisabledDeactivateMdmPackageList error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 303
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    const/4 v0, 0x1

    return v0

    .line 306
    :cond_2
    return v0

    .line 301
    :cond_3
    :goto_1
    return v0
.end method

.method public isDisallowedInstallPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 341
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 342
    return v0

    .line 344
    :cond_0
    const/4 v1, 0x0

    .line 346
    .local v1, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v3, 0xfb4

    invoke-virtual {v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwDevicePolicyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstallPackageBlackList error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    const/4 v0, 0x1

    return v0

    .line 353
    :cond_1
    return v0
.end method

.method public isDisallowedRunningApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 201
    return v0

    .line 203
    :cond_0
    const/4 v1, 0x0

    .line 205
    .local v1, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v3, 0xfa6

    invoke-virtual {v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 208
    goto :goto_0

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwDevicePolicyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstallPackageWhiteList error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_1
    return v0
.end method

.method public isDisallowedUninstallPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 269
    return v0

    .line 272
    :cond_0
    const/4 v1, 0x0

    .line 274
    .local v1, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v3, 0xfa8

    invoke-virtual {v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwDevicePolicyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDisallowedUninstallPackageList error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 282
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_2
    return v0

    .line 279
    :cond_3
    :goto_1
    return v0
.end method

.method public isFileShareDisabled()Z
    .locals 4

    .line 652
    const-string v0, "policy-file-share-disabled"

    .line 653
    .local v0, "POLICY_FILE_SHARE":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "policy-file-share-disabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 654
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 655
    const/4 v2, 0x0

    return v2

    .line 657
    :cond_0
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isFingerprintAuthenticationDisabled()Z
    .locals 4

    .line 492
    const-string v0, "disable-fingerprint-authentication"

    .line 493
    .local v0, "DISABLE_FINGERPRINT_AUTHENTICATION":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable-fingerprint-authentication"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 494
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 495
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 497
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isForceEnableBT()Z
    .locals 3

    .line 582
    new-instance v0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    invoke-direct {v0}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;-><init>()V

    const-string v1, "force-enable-BT"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getPolicy(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 583
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 584
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 586
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isForceEnableWifi()Z
    .locals 3

    .line 590
    new-instance v0, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    invoke-direct {v0}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;-><init>()V

    const-string v1, "force-enable-wifi"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getPolicy(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 591
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 592
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 594
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isGPSDisabled()Z
    .locals 2

    .line 99
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfae

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isGoogleAccountAutoSyncDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .line 166
    invoke-direct {p0, p1}, Lhuawei/android/app/admin/HwDeviceManagerImpl;->isGoogleAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfba

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeadphoneDisabled()Z
    .locals 3

    .line 429
    const-string v0, "disable-headphone"

    .line 430
    .local v0, "HEADPHONE_DISABLE":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 431
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 432
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 434
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isHomeButtonDisabled()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfaf

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isIgnoredFrequentRelaunchApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    return v1

    .line 175
    :cond_0
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v2, 0xfbb

    invoke-virtual {v0, v2}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    const/4 v1, 0x1

    return v1

    .line 179
    :cond_1
    return v1
.end method

.method public isInFraredDisabled()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0x139e

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isInstallSourceDisabled()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfa3

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isIntentFromAllowedInstallSource(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 216
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lhuawei/android/app/admin/HwDeviceManagerImpl;->isInstall(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 220
    :cond_0
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v2, 0xfa3

    invoke-virtual {v1, v2}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v1

    .line 222
    .local v1, "isHwDisableinstall":Z
    if-eqz v1, :cond_4

    .line 223
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v3, 0xfa4

    invoke-virtual {v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v2

    .line 225
    .local v2, "appMarketPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    const-string v3, "caller_package"

    .line 230
    .local v3, "CALLER_PACKAGE":Ljava/lang/String;
    const-string v4, "caller_package"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "callerPkgName":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    return v0

    .line 235
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 226
    .end local v3    # "CALLER_PACKAGE":Ljava/lang/String;
    .end local v4    # "callerPkgName":Ljava/lang/String;
    :cond_3
    :goto_0
    return v0

    .line 238
    .end local v2    # "appMarketPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return v0

    .line 217
    .end local v1    # "isHwDisableinstall":Z
    :cond_5
    :goto_1
    return v0
.end method

.method public isLocationModeDisabled()Z
    .locals 4

    .line 545
    const-string v0, "settings_policy_forbidden_location_mode"

    .line 546
    .local v0, "LOCATION_MODEL":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "settings_policy_forbidden_location_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 547
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 548
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 550
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isLocationServiceDisabled()Z
    .locals 4

    .line 534
    const-string v0, "settings_policy_forbidden_location_service"

    .line 535
    .local v0, "LOCATION_SERVICES":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "settings_policy_forbidden_location_service"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 536
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 537
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 539
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isMicrophoneDisabled()Z
    .locals 4

    .line 420
    const-string v0, "disable-microphone"

    .line 421
    .local v0, "MICROPHONE_DISABLE":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable-microphone"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 422
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 423
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 425
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isNavigationBarDisabled()Z
    .locals 3

    .line 439
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v1, "disable-navigationbar"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 440
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 441
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 443
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isNetworkLocationDisabled()Z
    .locals 6

    .line 61
    const-string v0, "settings_policy_forbidden_network_location"

    .line 62
    .local v0, "POLICY_FORBIDDEN_NETWORK_LOCATION":Ljava/lang/String;
    const-string v1, "value"

    .line 63
    .local v1, "STATE_VALUE":Ljava/lang/String;
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v3, "settings_policy_forbidden_network_location"

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 64
    .local v2, "data":Landroid/os/Bundle;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 65
    const-string v4, "HwDevicePolicyManagerImpl"

    const-string v5, "HwDevicePolicyManagerEx :: isNetworkLocationDisabled() get null policy data."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v3

    .line 68
    :cond_0
    const-string v4, "value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3
.end method

.method public isNotificationDisabled()Z
    .locals 3

    .line 411
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v1, "disable-notification"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 412
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 413
    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 415
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isPassiveProviderDisabled()Z
    .locals 4

    .line 569
    const-string v0, "passive_location_disallow_item"

    .line 570
    .local v0, "DISALLOW_PASSIVE_LOCATION":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "passive_location_disallow_item"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 571
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 572
    const-string v2, "HwDevicePolicyManagerImpl"

    const-string v3, "isPassiveProviderDisabled getCachedPolicyForFwk get null data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v2, 0x0

    return v2

    .line 575
    :cond_0
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isPersistentApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 185
    return v0

    .line 187
    :cond_0
    const/4 v1, 0x0

    .line 189
    .local v1, "packagelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v3, 0xfa5

    invoke-virtual {v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getHwFrameworkAdminList(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwDevicePolicyManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstallPackageWhiteList error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_1
    return v0
.end method

.method public isPowerDisabled()Z
    .locals 4

    .line 503
    const-string v0, "disable-power-shutdown"

    .line 504
    .local v0, "DISABLE_POWER_SHUTDOWN":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable-power-shutdown"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 505
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 506
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 508
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRoamingSyncDisabled()Z
    .locals 4

    .line 556
    const-string v0, "disable-sync"

    .line 557
    .local v0, "DISABLE_SYNC":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable-sync"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 558
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 559
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 562
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isSafeModeDisabled()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfab

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isScreenCaptureDisabled()Z
    .locals 2

    .line 396
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfb5

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isScreenOffDisabled()Z
    .locals 4

    .line 481
    const-string v0, "settings_policy_forbidden_screen_off"

    .line 482
    .local v0, "POLICY_FORBIDDEN_SCREEN_OFF":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "settings_policy_forbidden_screen_off"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 483
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 484
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 486
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isSendNotificationDisabled()Z
    .locals 4

    .line 449
    const-string v0, "disable-send-notification"

    .line 450
    .local v0, "DISABLE_SEND_NOTIFICATION":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable-send-notification"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 451
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 452
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 454
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isShutdownMenuDisabled()Z
    .locals 4

    .line 512
    const-string v0, "disable-shutdownmenu"

    .line 513
    .local v0, "DISABLE_SHUTDOWNMENU":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable-shutdownmenu"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 514
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 515
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 517
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isSleepByPowerButtonDisabled()Z
    .locals 5

    .line 676
    const-string v0, "disable-screen-turn-off"

    .line 677
    .local v0, "DISABLE_SCREEN_TURN_OFF":Ljava/lang/String;
    const-string v1, "value"

    .line 678
    .local v1, "STATUS_KEY":Ljava/lang/String;
    iget-object v2, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v3, "disable-screen-turn-off"

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 679
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 680
    const/4 v3, 0x0

    return v3

    .line 682
    :cond_0
    const-string v3, "value"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public isStatusBarDisabled()Z
    .locals 4

    .line 692
    const-string v0, "disable_status_bar"

    .line 693
    .local v0, "disableStatusBar":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable_status_bar"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 694
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public isTaskButtonDisabled()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfb0

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isUSBOtgDisabled()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfad

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isVisibleGoogleAccountSync(Ljava/lang/String;)Z
    .locals 6
    .param p1, "authority"    # Ljava/lang/String;

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    return v1

    .line 156
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 157
    .local v0, "syncs":[Landroid/content/SyncAdapterType;
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 158
    .local v4, "adapter":Landroid/content/SyncAdapterType;
    iget-object v5, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lhuawei/android/app/admin/HwDeviceManagerImpl;->isGoogleAccount(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    const/4 v1, 0x1

    return v1

    .line 157
    .end local v4    # "adapter":Landroid/content/SyncAdapterType;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_2
    return v1
.end method

.method public isVoiceDisabled()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfa2

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isVolumeAdjustDisabled()Z
    .locals 4

    .line 523
    const-string v0, "disable-volume"

    .line 524
    .local v0, "DISABLE_VOLUME":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable-volume"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 525
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 526
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 528
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isWifiDisabled()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isWifiP2PDisabled()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const/16 v1, 0x139d

    invoke-virtual {v0, v1}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->isHwFrameworkAdminAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isWifiUnavailableTipsDisabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .line 707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "unavailable-ssid-list"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 711
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 712
    return v1

    .line 714
    :cond_1
    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 715
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 716
    return v1

    .line 720
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 708
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_0
    return v1
.end method

.method public isWritingSDCardDisabled()Z
    .locals 4

    .line 401
    const-string v0, "disable-sdwriting"

    .line 402
    .local v0, "DISABLE_SDWRITING_POLICY":Ljava/lang/String;
    iget-object v1, p0, Lhuawei/android/app/admin/HwDeviceManagerImpl;->mHwDPM:Lhuawei/android/app/admin/HwDevicePolicyManagerEx;

    const-string v2, "disable-sdwriting"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3}, Lhuawei/android/app/admin/HwDevicePolicyManagerEx;->getCachedPolicyForFwk(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 403
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 404
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 406
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
