.class public Landroid/vrsystem/VRSystemServiceManager;
.super Ljava/lang/Object;
.source "VRSystemServiceManager.java"

# interfaces
.implements Landroid/vrsystem/IVRSystemServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/vrsystem/VRSystemServiceManager$Instance;
    }
.end annotation


# static fields
.field private static final IS_VR_ENABLE:Z

.field private static final PACKAGE_INSTALL:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final PACKAGE_INSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final PERMISSION_ERROR:I = -0x1

.field private static final PERMISSION_SUCCESS:I = 0x0

.field private static final SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VRSystemServiceManager"

.field private static final VRSERVICE_PERMISSION:Ljava/lang/String; = "com.huawei.vrservice.permission.VR"

.field private static final VR_INSTALL:Ljava/lang/String; = "com.huawei.vrinstaller"

.field private static final VR_LAUNCHER:Ljava/lang/String; = "com.huawei.vrlauncherx"

.field private static final VR_METADATA_NAME:Ljava/lang/String; = "com.huawei.android.vr.application.mode"

.field private static final VR_METADATA_VALUE:Ljava/lang/String; = "vr_only"

.field private static final VR_PERMISSION:Ljava/lang/String; = "com.huawei.android.permission.VR"

.field private static final VR_PROCESS_ARGS:I = 0x3

.field private static final VR_SERVICE:Ljava/lang/String; = "com.huawei.vrservice"

.field private static final VR_SWITCH:Z

.field private static sDisplayID:I

.field private static sIsVrMode:Z

.field private static sTargetPackageName:Ljava/lang/String;


# instance fields
.field private mIsVRDisplayConnected:Z

.field private mIsVirtualScreenMode:Z

.field private mVRM:Landroid/vrsystem/IVRSystemService;

.field private sVRLowPowerList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "ro.vr.surport"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->VR_SWITCH:Z

    .line 59
    const-string v0, "ro.vr.mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->IS_VR_ENABLE:Z

    .line 63
    sput-boolean v1, Landroid/vrsystem/VRSystemServiceManager;->sIsVrMode:Z

    .line 64
    const/4 v0, -0x1

    sput v0, Landroid/vrsystem/VRSystemServiceManager;->sDisplayID:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mIsVRDisplayConnected:Z

    .line 52
    iput-boolean v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mIsVirtualScreenMode:Z

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->sVRLowPowerList:Ljava/util/HashSet;

    .line 392
    const-string v0, "vr_system"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/vrsystem/IVRSystemService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/vrsystem/IVRSystemService;

    move-result-object v0

    iput-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Landroid/vrsystem/VRSystemServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/vrsystem/VRSystemServiceManager$1;

    .line 38
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;-><init>()V

    return-void
.end method

.method private checkContext(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 420
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/vrsystem/VRSystemServiceManager;->isVRApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkIsHwVrLauncher(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 761
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 762
    const-string v1, "VRSystemServiceManager"

    const-string v2, "context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return v0

    .line 765
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 766
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 767
    const-string v2, "VRSystemServiceManager"

    const-string v3, "packageName is null in checkIsHwVrLauncher."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return v0

    .line 770
    :cond_1
    const-string v2, "com.huawei.vrlauncherx"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 771
    const/4 v0, 0x1

    return v0

    .line 773
    :cond_2
    return v0
.end method

.method private checkPermission(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 731
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 732
    const-string v1, "VRSystemServiceManager"

    const-string v2, "context is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return v0

    .line 735
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 737
    const-string v2, "VRSystemServiceManager"

    const-string v3, "packageName is null in checkPermission."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return v0

    .line 740
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 741
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 742
    const-string v3, "VRSystemServiceManager"

    const-string v4, "packageManager is null in checkPermission."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return v0

    .line 745
    :cond_2
    const-string v3, "com.android.packageinstaller"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.huawei.vrservice.permission.VR"

    .line 746
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "com.huawei.android.permission.VR"

    .line 747
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 750
    :cond_3
    return v0

    .line 748
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkServiceValid()Z
    .locals 4

    .line 397
    const-string v0, "vr_system"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/vrsystem/IVRSystemService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/vrsystem/IVRSystemService;

    move-result-object v0

    iput-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    .line 398
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 399
    const-string v0, "VRSystemServiceManager"

    const-string v2, "vr service is not alive"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v1

    .line 402
    :cond_0
    move v0, v1

    .line 404
    .local v0, "valid":Z
    :try_start_0
    iget-object v1, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v1}, Landroid/vrsystem/IVRSystemService;->isVRmode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    const/4 v0, 0x1

    .line 408
    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "VRSystemServiceManager"

    const-string v3, "vr service exception, please check "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static getInstance()Landroid/vrsystem/VRSystemServiceManager;
    .locals 1

    .line 81
    invoke-static {}, Landroid/vrsystem/VRSystemServiceManager$Instance;->access$100()Landroid/vrsystem/VRSystemServiceManager;

    move-result-object v0

    return-object v0
.end method

.method private getManifestMetadata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 448
    const/4 v0, 0x0

    move-object v1, v0

    .line 450
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 453
    goto :goto_0

    .line 451
    :catch_0
    move-exception v2

    .line 452
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "VRSystemServiceManager"

    const-string v4, "getApplicationInfo exception "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 455
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 457
    :cond_0
    return-object v0
.end method

.method private isVRApp(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 635
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 636
    return v0

    .line 638
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 640
    return v0

    .line 642
    :cond_1
    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 643
    return v3

    .line 646
    :cond_2
    const-string v2, ""

    .line 647
    .local v2, "vrOnly":Ljava/lang/String;
    const/4 v4, 0x0

    .line 649
    .local v4, "appinfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    .line 650
    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 653
    goto :goto_0

    .line 651
    :catch_0
    move-exception v5

    .line 652
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "VRSystemServiceManager"

    const-string v7, "getApplicationInfo exception "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v4, :cond_3

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 656
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.huawei.android.vr.application.mode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 659
    :cond_3
    const-string v5, "vr_only"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 660
    const-string v3, "VRSystemServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no vr app metadata "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return v0

    .line 663
    :cond_4
    return v3
.end method

.method private isVRApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 428
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 429
    return v1

    .line 432
    :cond_0
    const-string v0, "com.huawei.android.vr.application.mode"

    invoke-direct {p0, p1, p2, v0}, Landroid/vrsystem/VRSystemServiceManager;->getManifestMetadata(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "vrOnly":Ljava/lang/String;
    const-string v2, "vr_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    const-string v1, "VRSystemServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no vr app metadata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, 0x0

    return v1

    .line 437
    :cond_1
    return v1
.end method

.method private isValid()Z
    .locals 1

    .line 415
    sget-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->VR_SWITCH:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->checkServiceValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public acceptInCall(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 249
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    return-void

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    const-string v0, "VRSystemServiceManager"

    const-string v1, "Client is not vr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_1
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkIsHwVrLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    const-string v0, "VRSystemServiceManager"

    const-string v1, "acceptInCall is not supprot."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 263
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkPermission(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 264
    const-string v0, "VRSystemServiceManager"

    const-string v1, "aidl permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 269
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v0}, Landroid/vrsystem/IVRSystemService;->acceptInCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "VRSystemServiceManager"

    const-string v2, "acceptInCall request exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public addVRLowPowerAppList(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 612
    if-eqz p1, :cond_1

    .line 613
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.systemui"

    .line 614
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.packageinstaller"

    .line 615
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->sVRLowPowerList:Ljava/util/HashSet;

    .line 616
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->sVRLowPowerList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 620
    return-void

    .line 617
    :cond_1
    :goto_0
    return-void
.end method

.method public allowDisplayFocusByID(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .line 713
    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->isVRDeviceConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 716
    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->isVirtualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->getVRDisplayID()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 717
    :cond_0
    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->isVirtualScreenMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->getVRDisplayID()I

    move-result v0

    if-ne p1, v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 716
    :goto_0
    return v1

    .line 720
    :cond_3
    return v1
.end method

.method public endInCall(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 277
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    return-void

    .line 281
    :cond_0
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    const-string v0, "VRSystemServiceManager"

    const-string v1, "Client is not vr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 286
    :cond_1
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkIsHwVrLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    const-string v0, "VRSystemServiceManager"

    const-string v1, "endInCall is not supprot."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 291
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkPermission(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 292
    const-string v0, "VRSystemServiceManager"

    const-string v1, "aidl permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 297
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v0}, Landroid/vrsystem/IVRSystemService;->endInCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "VRSystemServiceManager"

    const-string v2, "acceptInCall request exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "num"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    return-object v1

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const-string v0, "VRSystemServiceManager"

    const-string v2, "Client is not vr"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v1

    .line 142
    :cond_1
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkIsHwVrLauncher(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    const-string v0, "VRSystemServiceManager"

    const-string v2, "getContactName is not supprot."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v1

    .line 147
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkPermission(Landroid/content/Context;)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 148
    const-string v0, "VRSystemServiceManager"

    const-string v2, "aidl permission denied!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-object v1

    .line 152
    :cond_3
    move-object v0, v1

    .line 154
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v1, p2}, Landroid/vrsystem/IVRSystemService;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "VRSystemServiceManager"

    const-string v3, "vr state query exception! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public getHelmetBattery(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 310
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 311
    return v1

    .line 314
    :cond_0
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const-string v0, "VRSystemServiceManager"

    const-string v2, "Client is not vr"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return v1

    .line 319
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkPermission(Landroid/content/Context;)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 320
    const-string v0, "VRSystemServiceManager"

    const-string v2, "aidl permission denied!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return v1

    .line 324
    :cond_2
    move v0, v1

    .line 326
    .local v0, "battery":I
    :try_start_0
    iget-object v1, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v1}, Landroid/vrsystem/IVRSystemService;->getHelmetBattery()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 329
    goto :goto_0

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "VRSystemServiceManager"

    const-string v3, "get Helmet battery exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getHelmetBrightness(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 340
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 341
    return v1

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    const-string v0, "VRSystemServiceManager"

    const-string v2, "Client is not vr"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v1

    .line 349
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkPermission(Landroid/content/Context;)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 350
    const-string v0, "VRSystemServiceManager"

    const-string v2, "aidl permission denied!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return v1

    .line 354
    :cond_2
    move v0, v1

    .line 356
    .local v0, "brightness":I
    :try_start_0
    iget-object v1, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v1}, Landroid/vrsystem/IVRSystemService;->getHelmetBrightness()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "VRSystemServiceManager"

    const-string v3, "get Helmet brightness exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public getLowerAppList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->sVRLowPowerList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getVRDisplayID()I
    .locals 1

    .line 576
    sget-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->IS_VR_ENABLE:Z

    if-nez v0, :cond_0

    .line 577
    const/4 v0, -0x1

    return v0

    .line 579
    :cond_0
    sget v0, Landroid/vrsystem/VRSystemServiceManager;->sDisplayID:I

    return v0
.end method

.method public getVRDisplayID(Landroid/content/Context;)I
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 526
    sget-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->IS_VR_ENABLE:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->isVRDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 529
    :cond_0
    const-string v0, "com.huawei.vrinstaller"

    sget-object v2, Landroid/vrsystem/VRSystemServiceManager;->sTargetPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/vrsystem/VRSystemServiceManager;->setTargetComponentName(Landroid/content/ComponentName;)V

    .line 531
    return v1

    .line 534
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->isVRDeviceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.huawei.vrservice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    const-string v2, "android"

    .line 536
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "com.huawei.vrvirtualscreen"

    .line 537
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 542
    :cond_3
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->isVRApp(Landroid/content/Context;)Z

    move-result v2

    .line 543
    .local v2, "isVRapp":Z
    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 544
    invoke-virtual {p0, v1, v3}, Landroid/vrsystem/VRSystemServiceManager;->setVRDisplayID(IZ)V

    .line 545
    return v1

    .line 548
    :cond_4
    const-string v4, "display"

    .line 549
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    .line 550
    .local v4, "displayManager":Landroid/hardware/display/DisplayManager;
    if-nez v4, :cond_5

    .line 551
    return v1

    .line 554
    :cond_5
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    .line 555
    .local v5, "displays":[Landroid/view/Display;
    const/4 v6, 0x1

    move v7, v6

    .local v7, "i":I
    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_7

    .line 556
    aget-object v8, v5, v7

    .line 557
    .local v8, "display":Landroid/view/Display;
    new-instance v9, Landroid/view/DisplayInfo;

    invoke-direct {v9}, Landroid/view/DisplayInfo;-><init>()V

    .line 558
    .local v9, "disInfo":Landroid/view/DisplayInfo;
    if-eqz v8, :cond_6

    invoke-virtual {v8, v9}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 559
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    .line 560
    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v12

    .line 559
    invoke-virtual {p0, v10, v11, v12}, Landroid/vrsystem/VRSystemServiceManager;->isVRDisplay(III)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 561
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 562
    .local v1, "displayID":I
    invoke-virtual {p0, v1, v6}, Landroid/vrsystem/VRSystemServiceManager;->setVRDisplayID(IZ)V

    .line 563
    return v1

    .line 555
    .end local v1    # "displayID":I
    .end local v8    # "display":Landroid/view/Display;
    .end local v9    # "disInfo":Landroid/view/DisplayInfo;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 568
    .end local v7    # "i":I
    :cond_7
    invoke-virtual {p0, v1, v3}, Landroid/vrsystem/VRSystemServiceManager;->setVRDisplayID(IZ)V

    .line 569
    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->getVRDisplayID()I

    move-result v1

    return v1

    .line 539
    .end local v2    # "isVRapp":Z
    .end local v4    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v5    # "displays":[Landroid/view/Display;
    :cond_8
    :goto_1
    return v1

    .line 527
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_9
    :goto_2
    return v1
.end method

.method public isVRApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    return v1

    .line 118
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/vrsystem/VRSystemServiceManager;->isVRApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 119
    :cond_2
    :goto_0
    return v1
.end method

.method public isVRDeviceConnected()Z
    .locals 1

    .line 507
    sget-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->sIsVrMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->IS_VR_ENABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVRDisplay(III)Z
    .locals 3
    .param p1, "displayid"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 597
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    const/16 v1, 0x640

    const/16 v2, 0xb40

    if-ne p2, v2, :cond_1

    if-eq p3, v1, :cond_2

    :cond_1
    if-ne p2, v1, :cond_3

    if-ne p3, v2, :cond_3

    .line 603
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 605
    :cond_3
    return v0

    .line 599
    :cond_4
    :goto_0
    return v0
.end method

.method public isVRDisplayConnected()Z
    .locals 1

    .line 467
    invoke-static {}, Landroid/vrsystem/VRSystemServiceManager$Instance;->access$100()Landroid/vrsystem/VRSystemServiceManager;

    move-result-object v0

    iget-boolean v0, v0, Landroid/vrsystem/VRSystemServiceManager;->mIsVRDisplayConnected:Z

    return v0
.end method

.method public isVRDynamicStack(I)Z
    .locals 1
    .param p1, "stackId"    # I

    .line 488
    sget-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->IS_VR_ENABLE:Z

    if-eqz v0, :cond_0

    const v0, 0x4190ab00

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVRLowPowerApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 627
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->sVRLowPowerList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVRMode()Z
    .locals 4

    .line 90
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    return v1

    .line 94
    :cond_0
    move v0, v1

    .line 96
    .local v0, "isVR":Z
    :try_start_0
    iget-object v1, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v1}, Landroid/vrsystem/IVRSystemService;->isVRmode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "VRSystemServiceManager"

    const-string v3, "vr state query exception! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public isValidVRDisplayId(I)Z
    .locals 1
    .param p1, "displayid"    # I

    .line 587
    if-eqz p1, :cond_0

    sget-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->IS_VR_ENABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    sget v0, Landroid/vrsystem/VRSystemServiceManager;->sDisplayID:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVirtualScreenMode()Z
    .locals 1

    .line 476
    invoke-static {}, Landroid/vrsystem/VRSystemServiceManager$Instance;->access$100()Landroid/vrsystem/VRSystemServiceManager;

    move-result-object v0

    iget-boolean v0, v0, Landroid/vrsystem/VRSystemServiceManager;->mIsVirtualScreenMode:Z

    return v0
.end method

.method public mirrorVRDisplayIfNeed(Landroid/os/IBinder;)I
    .locals 4
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 681
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 682
    const-string v1, "VRSystemServiceManager"

    const-string v2, "displayToken is null in mirrorVRDisplayIfNeed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return v0

    .line 685
    :cond_0
    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->isVRDisplayConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->getVRDisplayID()I

    move-result v0

    .line 687
    .local v0, "vrLayerStackId":I
    invoke-virtual {p0}, Landroid/vrsystem/VRSystemServiceManager;->isVRMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 688
    const-string v1, "VRSystemServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performTraversalInTransactionLocked setDisplayLayerStack VR layer stack id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {p1, v0}, Landroid/view/SurfaceControl;->setDisplayLayerStack(Landroid/os/IBinder;I)V

    goto :goto_0

    .line 691
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/SurfaceControl;->setDisplayLayerStack(Landroid/os/IBinder;I)V

    .line 694
    :goto_0
    return v0

    .line 696
    .end local v0    # "vrLayerStackId":I
    :cond_2
    return v0
.end method

.method public registerExpandListener(Landroid/content/Context;Landroid/vrsystem/IVRListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vrlistener"    # Landroid/vrsystem/IVRListener;

    .line 198
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    const-string v0, "VRSystemServiceManager"

    const-string v1, "Client is not vr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 207
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkPermission(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 208
    const-string v0, "VRSystemServiceManager"

    const-string v1, "aidl permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 213
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v0, p2}, Landroid/vrsystem/IVRSystemService;->registerExpandListener(Landroid/vrsystem/IVRListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VRSystemServiceManager"

    const-string v2, "add listener exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public registerVRListener(Landroid/content/Context;Landroid/vrsystem/IVRListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vrlistener"    # Landroid/vrsystem/IVRListener;

    .line 169
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    return-void

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    const-string v0, "VRSystemServiceManager"

    const-string v1, "Client is not vr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 178
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkPermission(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 179
    const-string v0, "VRSystemServiceManager"

    const-string v1, "aidl permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 184
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v0, p2}, Landroid/vrsystem/IVRSystemService;->addVRListener(Landroid/vrsystem/IVRListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VRSystemServiceManager"

    const-string v2, "add listener exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setHelmetBrightness(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "brightness"    # I

    .line 370
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    const-string v0, "VRSystemServiceManager"

    const-string v1, "Client is not vr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void

    .line 379
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkPermission(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 380
    const-string v0, "VRSystemServiceManager"

    const-string v1, "aidl permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 385
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v0, p2}, Landroid/vrsystem/IVRSystemService;->setHelmetBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VRSystemServiceManager"

    const-string v2, "set Helmet brightness exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setTargetComponentName(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 514
    if-eqz p1, :cond_0

    .line 515
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/vrsystem/VRSystemServiceManager;->sTargetPackageName:Ljava/lang/String;

    goto :goto_0

    .line 517
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Landroid/vrsystem/VRSystemServiceManager;->sTargetPackageName:Ljava/lang/String;

    .line 519
    :goto_0
    return-void
.end method

.method public setVRDispalyInfo(Landroid/view/DisplayInfo;I)V
    .locals 2
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "displayID"    # I

    .line 667
    if-nez p1, :cond_0

    .line 668
    const-string v0, "VRSystemServiceManager"

    const-string v1, "displayInfo is null in setVRDispalyInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void

    .line 671
    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1}, Landroid/vrsystem/VRSystemServiceManager;->isVRDisplay(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    const-string v0, "VRSystemServiceManager"

    const-string v1, "handleDisplayDeviceAddedLocked in vr mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/vrsystem/VRSystemServiceManager;->setVRDisplayID(IZ)V

    .line 675
    invoke-virtual {p0, v0}, Landroid/vrsystem/VRSystemServiceManager;->setVRDisplayConnected(Z)V

    .line 678
    :cond_1
    return-void
.end method

.method public setVRDisplayConnected(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .line 463
    invoke-static {}, Landroid/vrsystem/VRSystemServiceManager$Instance;->access$100()Landroid/vrsystem/VRSystemServiceManager;

    move-result-object v0

    iput-boolean p1, v0, Landroid/vrsystem/VRSystemServiceManager;->mIsVRDisplayConnected:Z

    .line 464
    return-void
.end method

.method public setVRDisplayID(IZ)V
    .locals 1
    .param p1, "displayid"    # I
    .param p2, "vrmode"    # Z

    .line 495
    sget-boolean v0, Landroid/vrsystem/VRSystemServiceManager;->IS_VR_ENABLE:Z

    if-nez v0, :cond_0

    .line 496
    return-void

    .line 498
    :cond_0
    sput p1, Landroid/vrsystem/VRSystemServiceManager;->sDisplayID:I

    .line 499
    sput-boolean p2, Landroid/vrsystem/VRSystemServiceManager;->sIsVrMode:Z

    .line 500
    return-void
.end method

.method public setVirtualScreenMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .line 472
    invoke-static {}, Landroid/vrsystem/VRSystemServiceManager$Instance;->access$100()Landroid/vrsystem/VRSystemServiceManager;

    move-result-object v0

    iput-boolean p1, v0, Landroid/vrsystem/VRSystemServiceManager;->mIsVirtualScreenMode:Z

    .line 473
    return-void
.end method

.method public unregisterVRListener(Landroid/content/Context;Landroid/vrsystem/IVRListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vrlistener"    # Landroid/vrsystem/IVRListener;

    .line 226
    invoke-direct {p0}, Landroid/vrsystem/VRSystemServiceManager;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const-string v0, "VRSystemServiceManager"

    const-string v1, "Client is not vr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 235
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/vrsystem/VRSystemServiceManager;->checkPermission(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 236
    const-string v0, "VRSystemServiceManager"

    const-string v1, "aidl permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 241
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/vrsystem/VRSystemServiceManager;->mVRM:Landroid/vrsystem/IVRSystemService;

    invoke-interface {v0, p2}, Landroid/vrsystem/IVRSystemService;->deleteVRListener(Landroid/vrsystem/IVRListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VRSystemServiceManager"

    const-string v2, "delete listener exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
