.class public Lhuawei/android/app/HwApplicationPackageManager;
.super Ljava/lang/Object;
.source "HwApplicationPackageManager.java"

# interfaces
.implements Landroid/common/HwPackageManager;


# static fields
.field private static sInstance:Landroid/common/HwPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/app/HwApplicationPackageManager;->sInstance:Landroid/common/HwPackageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBrand()I
    .locals 1

    .line 78
    const/4 v0, 0x0

    invoke-static {v0}, Lhuawei/android/app/HwApplicationPackageManager;->getDeliverInfo(I)I

    move-result v0

    return v0
.end method

.method public static getDefault()Landroid/common/HwPackageManager;
    .locals 1

    .line 25
    sget-object v0, Lhuawei/android/app/HwApplicationPackageManager;->sInstance:Landroid/common/HwPackageManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lhuawei/android/app/HwApplicationPackageManager;

    invoke-direct {v0}, Lhuawei/android/app/HwApplicationPackageManager;-><init>()V

    sput-object v0, Lhuawei/android/app/HwApplicationPackageManager;->sInstance:Landroid/common/HwPackageManager;

    .line 28
    :cond_0
    sget-object v0, Lhuawei/android/app/HwApplicationPackageManager;->sInstance:Landroid/common/HwPackageManager;

    return-object v0
.end method

.method private static final getDeliverInfo(I)I
    .locals 4
    .param p0, "index"    # I

    .line 94
    const-string v0, "ro.config.hw_channel_info"

    const-string v1, "0,0,460,1,0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "strDeliverChannelInfo":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "infos":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v3, p0, 0x1

    if-lt v2, v3, :cond_0

    aget-object v2, v1, p0

    if-eqz v2, :cond_0

    .line 98
    :try_start_0
    aget-object v2, v1, p0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 99
    :catch_0
    move-exception v2

    .line 105
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static final isIOTVersion()Z
    .locals 2

    .line 87
    const/4 v0, 0x4

    invoke-static {v0}, Lhuawei/android/app/HwApplicationPackageManager;->getDeliverInfo(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getAppLabelText(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 33
    instance-of v0, p1, Landroid/app/ApplicationPackageManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 34
    move-object v0, p1

    check-cast v0, Landroid/app/ApplicationPackageManager;

    .line 35
    .local v0, "apm":Landroid/app/ApplicationPackageManager;
    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 36
    .local v2, "name":Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-virtual {v0, v2}, Landroid/app/ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 37
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 38
    return-object v3

    .line 40
    :cond_0
    const/4 v4, 0x0

    if-nez p4, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {v0, p2, v4}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v5

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception v4

    .line 44
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    .line 48
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0, p4}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 49
    .local v5, "r":Landroid/content/res/Resources;
    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v6

    .line 50
    if-eqz v3, :cond_3

    .line 51
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "labels":[Ljava/lang/String;
    invoke-static {}, Lhuawei/android/app/HwApplicationPackageManager;->getBrand()I

    move-result v7

    .line 53
    .local v7, "brandId":I
    if-eqz v6, :cond_3

    array-length v8, v6

    if-lez v8, :cond_3

    .line 54
    aget-object v4, v6, v4

    .line 55
    .local v4, "label":Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 57
    aget-object v8, v6, v7

    move-object v4, v8

    .line 59
    :cond_2
    aget-object v8, v6, v7

    invoke-virtual {v0, v2, v8}, Landroid/app/ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V

    .line 60
    aget-object v8, v6, v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v8

    .line 66
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "labels":[Ljava/lang/String;
    .end local v7    # "brandId":I
    :catch_1
    move-exception v4

    .line 69
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving text 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "apm":Landroid/app/ApplicationPackageManager;
    .end local v2    # "name":Landroid/app/ApplicationPackageManager$ResourceName;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 63
    .restart local v0    # "apm":Landroid/app/ApplicationPackageManager;
    .restart local v2    # "name":Landroid/app/ApplicationPackageManager$ResourceName;
    .restart local v3    # "text":Ljava/lang/CharSequence;
    :catch_2
    move-exception v4

    .line 64
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "apm":Landroid/app/ApplicationPackageManager;
    .end local v2    # "name":Landroid/app/ApplicationPackageManager$ResourceName;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    nop

    .line 74
    :cond_4
    :goto_1
    return-object v1
.end method

.method public getBadgedIconForTrustSpace(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 110
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 111
    return-object v0

    .line 113
    :cond_0
    const v1, 0x20300c7

    .line 114
    .local v1, "badgeResId":I
    const-string v2, "androidhwext"

    invoke-virtual {p1, v2, v1, v0}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
