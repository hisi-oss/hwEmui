.class Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;
.super Ljava/lang/Object;
.source "HwThemeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/hwtheme/HwThemeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComponentState"
.end annotation


# instance fields
.field mSetState:I

.field mlauncherComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    const/4 v0, 0x2

    iput v0, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;->mSetState:I

    .line 1129
    iput-object p1, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;->mlauncherComponent:Landroid/content/ComponentName;

    .line 1130
    return-void
.end method


# virtual methods
.method public setComponentEnable(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1133
    const-string v0, "HwThemeManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimpleUIConfig mlauncherComponent ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;->mlauncherComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSetState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;->mSetState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1137
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    iget-object v1, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;->mlauncherComponent:Landroid/content/ComponentName;

    iget v2, p0, Lhuawei/android/hwtheme/HwThemeManagerImpl$ComponentState;->mSetState:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    goto :goto_0

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwThemeManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setComponentEnabledSetting  because e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
