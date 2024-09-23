.class public Lhuawei/android/app/admin/HwDeviceAdminInfo;
.super Ljava/lang/Object;
.source "HwDeviceAdminInfo.java"

# interfaces
.implements Landroid/app/admin/IHwDeviceAdminInfo;


# static fields
.field public static final TAG:Ljava/lang/String; = "HwDeviceAdminInfo"

.field public static final USES_POLICY_SET_MDM_APN:I = 0xb

.field public static final USES_POLICY_SET_MDM_APP_MANAGER:I = 0x8

.field public static final USES_POLICY_SET_MDM_BLUETOOTH:I = 0xa

.field public static final USES_POLICY_SET_MDM_CONNECTIVITY:I = 0x4

.field public static final USES_POLICY_SET_MDM_DEVICE_MANAGER:I = 0x7

.field public static final USES_POLICY_SET_MDM_EMAIL:I = 0x9

.field public static final USES_POLICY_SET_MDM_INSTALL_SYS:I = 0xc

.field public static final USES_POLICY_SET_MDM_INSTALL_UNDETACHABLE_SYS:I = 0xd

.field public static final USES_POLICY_SET_MDM_MMS:I = 0x6

.field public static final USES_POLICY_SET_MDM_NFC:I = 0x3

.field public static final USES_POLICY_SET_MDM_PHONE:I = 0x5

.field public static final USES_POLICY_SET_MDM_SDCARD:I = 0x2

.field public static final USES_POLICY_SET_MDM_USB:I = 0x1

.field public static final USES_POLICY_SET_MDM_WIFI:I

.field private static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUsedPoliciesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 70
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_WIFI"

    const/4 v3, 0x0

    const v4, 0x202015d

    const v5, 0x202015e

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_USB"

    const/4 v4, 0x1

    const v5, 0x202015f

    const v6, 0x2020160

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_SDCARD"

    const/4 v4, 0x2

    const v5, 0x2020161

    const v6, 0x2020162

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_NFC"

    const/4 v4, 0x3

    const v5, 0x2020163

    const v6, 0x2020164

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_CONNECTIVITY"

    const/4 v4, 0x4

    const v5, 0x2020165

    const v6, 0x2020166

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_PHONE"

    const/4 v4, 0x5

    const v5, 0x2020167

    const v6, 0x2020168

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_MMS"

    const/4 v4, 0x6

    const v5, 0x2020169

    const v6, 0x202016a

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_DEVICE_MANAGER"

    const/4 v4, 0x7

    const v5, 0x202016b

    const v6, 0x202016c

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_APP_MANAGEMENT"

    const/16 v4, 0x8

    const v5, 0x202016d

    const v6, 0x202016e

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_EMAIL"

    const/16 v4, 0x9

    const v5, 0x202016f

    const v6, 0x2020170

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_BLUETOOTH"

    const/16 v4, 0xa

    const v5, 0x2020171

    const v6, 0x2020172

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_APN"

    const/16 v4, 0xb

    const v5, 0x2020173

    const v6, 0x2020174

    invoke-direct {v1, v4, v2, v5, v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_INSTALL_SYS_APP"

    const v4, 0x2020229

    const/16 v5, 0xc

    invoke-direct {v1, v5, v2, v4, v4}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    const-string v2, "com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP"

    const v4, 0x202022a

    const/16 v5, 0xd

    invoke-direct {v1, v5, v2, v4, v4}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 130
    .local v0, "sPoliciesDisplayOrderSize":I
    nop

    .local v3, "i":I
    :goto_0
    move v1, v3

    .end local v3    # "i":I
    .local v1, "i":I
    if-ge v1, v0, :cond_0

    .line 131
    sget-object v2, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 132
    .local v2, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    sget-object v3, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v2    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 135
    .end local v0    # "sPoliciesDisplayOrderSize":I
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->mUsedPoliciesList:Ljava/util/ArrayList;

    .line 149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 151
    .local v0, "id":J
    :try_start_0
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 152
    .local v2, "uid":I
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    move-object p1, v3

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 156
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x1000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 158
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_4

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v6, "com.huawei.permission.sec.MDM"

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v6, "com.huawei.permission.sec.MDM.v2"

    .line 159
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 160
    :cond_1
    sget-object v5, Landroid/app/admin/HwManifest;->PERMIISONS_LIST:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 161
    .local v6, "permission":Ljava/lang/String;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 162
    sget-object v7, Lhuawei/android/app/admin/HwDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 163
    .local v7, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    if-eqz v7, :cond_2

    .line 164
    iget-object v8, p0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->mUsedPoliciesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_2
    const-string v8, "HwDeviceAdminInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "permission = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not KnownPolicies"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v6    # "permission":Ljava/lang/String;
    .end local v7    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_3
    :goto_1
    goto :goto_0

    .line 174
    .end local v2    # "uid":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "HwDeviceAdminInfo"

    const-string v4, "error init HwDeviceAdminInfo"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    nop

    .line 177
    return-void

    .line 174
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public getHwUsedPoliciesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lhuawei/android/app/admin/HwDeviceAdminInfo;->mUsedPoliciesList:Ljava/util/ArrayList;

    return-object v0
.end method
