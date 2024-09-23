.class public Lhuawei/android/security/securityprofile/HwSignedInfo;
.super Ljava/lang/Object;
.source "HwSignedInfo.java"


# static fields
.field public static final BUNDLE_KEY_ADD_DOMAIN_POLICY:Ljava/lang/String; = "addDomainPolicy"

.field public static final BUNDLE_KEY_APKPATH:Ljava/lang/String; = "apkPath"

.field public static final BUNDLE_KEY_CONTENT_TYPE:Ljava/lang/String; = "ContentType"

.field public static final BUNDLE_KEY_DIGEST_ALGORITHM:Ljava/lang/String; = "digestAlgorithm"

.field public static final BUNDLE_KEY_DIGEST_BASE64DIGEST:Ljava/lang/String; = "base64Digest"

.field public static final BUNDLE_KEY_DIGEST_SCHEME:Ljava/lang/String; = "apkSignatureScheme"

.field public static final BUNDLE_KEY_LABEL:Ljava/lang/String; = "pureAndroidLabel"

.field public static final BUNDLE_KEY_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final CONTENT_TYPE_APK_DIGEST_ONLY:Ljava/lang/String; = "ApkDigestOnly"

.field public static final HUAWEI_INSTALLERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_LEBALS_GREEN:Ljava/lang/String; = "GREEN"

.field public static final POLICY_LEBALS_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final POLICY_OK:I = 0x0

.field public static final POLICY_VERIFICATION_FAILED:I = 0x1

.field public static final PREFIX_RESULT:Ljava/lang/String; = "RESULT_"

.field public static final TAG:Ljava/lang/String; = "HwSignedInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "com.huawei.appmarket"

    const-string v1, "com.huawei.gamebox"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lhuawei/android/security/securityprofile/HwSignedInfo;->HUAWEI_INSTALLERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHwSignedInfo(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p0, "sSecurityProfileService"    # Lhuawei/android/security/ISecurityProfileService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extraParams"    # Landroid/os/Bundle;

    .line 221
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 222
    const-string v1, "HwSignedInfo"

    const-string v2, "getHwSignedInfo err, packageName is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v0

    .line 226
    :cond_0
    if-nez p0, :cond_1

    .line 227
    return-object v0

    .line 230
    :cond_1
    const/4 v1, 0x0

    .line 231
    .local v1, "apkPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 232
    .local v2, "contentType":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 233
    const-string v3, "apkPath"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v3, "ContentType"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    :cond_2
    if-nez v1, :cond_5

    .line 239
    invoke-static {p0, p1}, Lhuawei/android/security/securityprofile/HwSignedInfo;->isInstalledAppCanGetHwSignedInfo(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 240
    invoke-static {p1, v0, v0}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 242
    :cond_3
    const-string v0, "ApkDigestOnly"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    invoke-static {p0, p1}, Lhuawei/android/security/securityprofile/HwSignedInfo;->getInstalledHwSignedApkDigest(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 247
    :cond_4
    invoke-static {p0, p1}, Lhuawei/android/security/securityprofile/HwSignedInfo;->getInstalledHwSignedInfo(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 252
    :cond_5
    invoke-static {p0, p1, v1}, Lhuawei/android/security/securityprofile/HwSignedInfo;->getUnInstalledHwSignedApkDigest(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getInstalledApkPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "packageName"    # Ljava/lang/String;

    .line 134
    const-string v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 135
    .local v0, "userBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .line 137
    .local v1, "userManager":Landroid/os/IUserManager;
    const-string v2, "package"

    .line 138
    .local v2, "PACKAGE_SERVICE":Ljava/lang/String;
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 139
    .local v3, "packageBinder":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 141
    .local v4, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    if-eqz v1, :cond_5

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 147
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v1, v6}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 148
    .local v6, "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    const/4 v7, 0x0

    .line 155
    .local v7, "apkPath":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 156
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v10, 0x0

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v4, p0, v10, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 157
    .local v10, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v10, :cond_2

    .line 158
    iget-object v8, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v7, v8

    .line 159
    const-string v8, "HwSignedInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getInstalledApkPath: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", from userId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v7

    .line 162
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    goto :goto_0

    .line 165
    .end local v6    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "apkPath":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 149
    .restart local v6    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_4
    :goto_1
    const-string v7, "HwSignedInfo"

    const-string v8, "impossible: users num zero"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-object v5

    .line 163
    .end local v6    # "userInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v6

    .line 164
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "HwSignedInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInstalledApkPath Remote Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object v5

    .line 142
    :cond_5
    :goto_3
    const-string v6, "HwSignedInfo"

    const-string v7, "getInstalledApkPath getService null"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-object v5
.end method

.method private static getInstalledHwSignedApkDigest(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "sSecurityProfileService"    # Lhuawei/android/security/ISecurityProfileService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "apkDigest":Lhuawei/android/security/securityprofile/ApkDigest;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lhuawei/android/security/securityprofile/HwSignedInfo;->getInstalledApkPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .local v2, "apkPath":Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Lhuawei/android/security/securityprofile/PolicyExtractor;->getPolicy(Ljava/lang/String;)[B

    move-result-object v3

    .line 122
    .local v3, "policyBlock":[B
    invoke-static {p1, v3}, Lhuawei/android/security/securityprofile/PolicyExtractor;->getDigest(Ljava/lang/String;[B)Lhuawei/android/security/securityprofile/ApkDigest;

    move-result-object v4
    :try_end_1
    .catch Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .line 125
    .end local v3    # "policyBlock":[B
    goto :goto_0

    .line 123
    :catch_0
    move-exception v3

    .line 124
    .local v3, "e":Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;
    :try_start_2
    invoke-static {v2}, Lhuawei/android/security/securityprofile/DigestMatcher;->getApkDigest(Ljava/lang/String;)Lhuawei/android/security/securityprofile/ApkDigest;

    move-result-object v4

    move-object v0, v4

    .line 126
    .end local v3    # "e":Lhuawei/android/security/securityprofile/PolicyExtractor$PolicyNotFoundException;
    :goto_0
    invoke-static {p1, v1, v0}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 127
    .end local v0    # "apkDigest":Lhuawei/android/security/securityprofile/ApkDigest;
    .end local v2    # "apkPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "HwSignedInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstalledHwSignedApkDigest ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] occurs Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {p1, v1, v1}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static getInstalledHwSignedInfo(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "sSecurityProfileService"    # Lhuawei/android/security/ISecurityProfileService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0}, Lhuawei/android/security/ISecurityProfileService;->getLabels(Ljava/lang/String;Lhuawei/android/security/securityprofile/ApkDigest;)Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "labelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "HwSignedInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " labelsList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p1, v1, v0}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 108
    .end local v1    # "labelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "HwSignedInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstalledApkHwSignedInfo ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] occurs Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-static {p1, v0, v0}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static final getPureAndroidLabelFromLabelList(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 45
    .local p0, "labelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 46
    const-string v1, "GREEN"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v0, "GREEN"

    return-object v0

    .line 48
    :cond_0
    const-string v1, "NORMAL"

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const-string v0, "NORMAL"

    return-object v0

    .line 51
    :cond_1
    return-object v0

    .line 54
    :cond_2
    return-object v0
.end method

.method private static getUnInstalledHwSignedApkDigest(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p0, "sSecurityProfileService"    # Lhuawei/android/security/ISecurityProfileService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    .line 172
    .local v0, "result":I
    const/4 v1, 0x0

    .line 173
    .local v1, "apkDigest":Lhuawei/android/security/securityprofile/ApkDigest;
    const/4 v2, 0x0

    .line 174
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    move-object v4, v3

    .line 176
    .local v4, "policyBlock":[B
    :try_start_0
    invoke-static {p2}, Lhuawei/android/security/securityprofile/PolicyExtractor;->getPolicy(Ljava/lang/String;)[B

    move-result-object v5

    move-object v4, v5

    .line 177
    invoke-static {p1, v4}, Lhuawei/android/security/securityprofile/PolicyExtractor;->getDigest(Ljava/lang/String;[B)Lhuawei/android/security/securityprofile/ApkDigest;

    move-result-object v5

    move-object v1, v5

    .line 178
    if-nez v1, :cond_0

    .line 179
    const-string v5, "HwSignedInfo"

    const-string v6, "get apkDigest is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p1, v3, v3}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v5

    return-object v5

    .line 182
    :cond_0
    const-string v5, "HwSignedInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "digest.base64Digest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lhuawei/android/security/securityprofile/ApkDigest;->base64Digest:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v5, "HwSignedInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "digest.digestAlgorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lhuawei/android/security/securityprofile/ApkDigest;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v5, "HwSignedInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "digest.apkSignatureScheme: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lhuawei/android/security/securityprofile/ApkDigest;->apkSignatureScheme:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p2, v1}, Lhuawei/android/security/securityprofile/DigestMatcher;->packageMatchesDigest(Ljava/lang/String;Lhuawei/android/security/securityprofile/ApkDigest;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    const-string v5, "HwSignedInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Package digest did not match policy digest:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lhuawei/android/security/securityprofile/ApkDigest;->base64Digest:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", apkPath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {p1, v3, v3}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v5

    return-object v5

    .line 190
    :cond_1
    invoke-interface {p0, v4}, Lhuawei/android/security/ISecurityProfileService;->addDomainPolicy([B)I

    move-result v5

    move v0, v5

    .line 191
    if-eqz v0, :cond_2

    .line 192
    const-string v5, "HwSignedInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " addDomainPolicy err, result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {p1, v3, v3}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v5

    return-object v5

    .line 195
    :cond_2
    invoke-interface {p0, p1, v1}, Lhuawei/android/security/ISecurityProfileService;->getLabels(Ljava/lang/String;Lhuawei/android/security/securityprofile/ApkDigest;)Ljava/util/List;

    move-result-object v5

    .line 196
    .local v5, "labelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "HwSignedInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " labelsList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {p1, v5, v1}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 201
    .end local v5    # "labelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 202
    return-object v2

    .line 198
    :catch_0
    move-exception v5

    .line 199
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "HwSignedInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUnInstalledHwSignedApkDigest ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] occurs Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {p1, v3, v3}, Lhuawei/android/security/securityprofile/HwSignedInfo;->resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;

    move-result-object v3

    return-object v3
.end method

.method private static isInstalledAppCanGetHwSignedInfo(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;)Z
    .locals 5
    .param p0, "sSecurityProfileService"    # Lhuawei/android/security/ISecurityProfileService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p0, p1}, Lhuawei/android/security/ISecurityProfileService;->isPackageSigned(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 86
    return v0

    .line 90
    :cond_0
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwSignedInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",check isInstalledByHuaweiAppMarket get RemoteException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    sget-boolean v1, Lhuawei/android/security/securityprofile/DigestMatcher;->CALCULATE_APKDIGEST:Z

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lhuawei/android/security/securityprofile/HwSignedInfo;->isInstalledByHuaweiAppMarket(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    return v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isInstalledByHuaweiAppMarket(Lhuawei/android/security/ISecurityProfileService;Ljava/lang/String;)Z
    .locals 4
    .param p0, "service"    # Lhuawei/android/security/ISecurityProfileService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 70
    :try_start_0
    invoke-interface {p0, p1}, Lhuawei/android/security/ISecurityProfileService;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "installer":Ljava/lang/String;
    const-string v1, "HwSignedInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",installer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v1, Lhuawei/android/security/securityprofile/HwSignedInfo;->HUAWEI_INSTALLERS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    return v1

    .line 77
    .end local v0    # "installer":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HwSignedInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",check isInstalledByHuaweiAppMarket get RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final resolveHwSignedBundleInfo(Ljava/lang/String;Ljava/util/List;Lhuawei/android/security/securityprofile/ApkDigest;)Landroid/os/Bundle;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p2, "apkDigest"    # Lhuawei/android/security/securityprofile/ApkDigest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lhuawei/android/security/securityprofile/ApkDigest;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 57
    .local p1, "labelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "pureAndroidLabel"

    invoke-static {p1}, Lhuawei/android/security/securityprofile/HwSignedInfo;->getPureAndroidLabelFromLabelList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    const-string v1, "apkSignatureScheme"

    iget-object v2, p2, Lhuawei/android/security/securityprofile/ApkDigest;->apkSignatureScheme:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "digestAlgorithm"

    iget-object v2, p2, Lhuawei/android/security/securityprofile/ApkDigest;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "base64Digest"

    iget-object v2, p2, Lhuawei/android/security/securityprofile/ApkDigest;->base64Digest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-object v0
.end method

.method public static setHwSignedInfoToSEAPP(Lhuawei/android/security/ISecurityProfileService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p0, "sSecurityProfileService"    # Lhuawei/android/security/ISecurityProfileService;
    .param p1, "params"    # Landroid/os/Bundle;

    .line 264
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 265
    const-string v1, "HwSignedInfo"

    const-string v2, "setHwSignedInfoToSEAPP params is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-object v0

    .line 268
    :cond_0
    if-nez p0, :cond_1

    .line 269
    const-string v1, "HwSignedInfo"

    const-string v2, "setHwSignedInfoToSEAPP sSecurityProfileService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-object v0

    .line 272
    :cond_1
    const/4 v1, 0x0

    .line 273
    .local v1, "result":I
    nop

    .line 275
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v0, v2

    .line 276
    const-string v2, "addDomainPolicy"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 277
    .local v2, "domainPolicy":[B
    if-eqz v2, :cond_2

    .line 278
    invoke-interface {p0, v2}, Lhuawei/android/security/ISecurityProfileService;->addDomainPolicy([B)I

    move-result v3

    move v1, v3

    .line 279
    const-string v3, "RESULT_addDomainPolicy"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v2    # "domainPolicy":[B
    :cond_2
    nop

    .line 285
    return-object v0

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwSignedInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHwSignedInfoToSEAPP occurs Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v0
.end method
