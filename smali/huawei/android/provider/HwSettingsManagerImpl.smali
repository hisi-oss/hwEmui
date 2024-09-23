.class public Lhuawei/android/provider/HwSettingsManagerImpl;
.super Ljava/lang/Object;
.source "HwSettingsManagerImpl.java"

# interfaces
.implements Landroid/common/HwSettingsManager;


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "HwSettingsManagerImpl"

.field private static mHwSettingsManager:Landroid/common/HwSettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/provider/HwSettingsManagerImpl;->mHwSettingsManager:Landroid/common/HwSettingsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/common/HwSettingsManager;
    .locals 1

    .line 38
    sget-object v0, Lhuawei/android/provider/HwSettingsManagerImpl;->mHwSettingsManager:Landroid/common/HwSettingsManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lhuawei/android/provider/HwSettingsManagerImpl;

    invoke-direct {v0}, Lhuawei/android/provider/HwSettingsManagerImpl;-><init>()V

    sput-object v0, Lhuawei/android/provider/HwSettingsManagerImpl;->mHwSettingsManager:Landroid/common/HwSettingsManager;

    .line 41
    :cond_0
    sget-object v0, Lhuawei/android/provider/HwSettingsManagerImpl;->mHwSettingsManager:Landroid/common/HwSettingsManager;

    return-object v0
.end method


# virtual methods
.method public adjustValueForMDMPolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "origValue"    # Ljava/lang/String;

    .line 132
    invoke-static {p1, p2, p3}, Lhuawei/android/provider/HwSettings;->adjustValueForMDMPolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkPrimaryVolumeIsSD()Z
    .locals 1

    .line 106
    invoke-static {}, Lhuawei/android/os/HwEnvironment;->checkPrimaryVolumeIsSD()Z

    move-result v0

    return v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .line 118
    invoke-static {}, Lhuawei/android/os/HwEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lhuawei/android/os/HwEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStorageState()Ljava/io/File;
    .locals 1

    .line 126
    invoke-static {}, Lhuawei/android/os/HwEnvironment;->getExternalStorageState()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 81
    invoke-static {p1, p2}, Lhuawei/android/provider/HwSettings$Systemex;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # F

    .line 77
    invoke-static {p1, p2, p3}, Lhuawei/android/provider/HwSettings$Systemex;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 57
    invoke-static {p1, p2}, Lhuawei/android/provider/HwSettings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 53
    invoke-static {p1, p2, p3}, Lhuawei/android/provider/HwSettings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 69
    invoke-static {p1, p2}, Lhuawei/android/provider/HwSettings$Systemex;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # J

    .line 65
    invoke-static {p1, p2, p3, p4}, Lhuawei/android/provider/HwSettings$Systemex;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .line 114
    invoke-static {}, Lhuawei/android/os/HwEnvironment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .line 45
    invoke-static {p1, p2}, Lhuawei/android/provider/HwSettings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initUserEnvironmentSD(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 110
    invoke-static {p1}, Lhuawei/android/os/HwEnvironment;->initUserEnvironmentSD(I)V

    .line 111
    return-void
.end method

.method public putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 85
    invoke-static {p1, p2, p3}, Lhuawei/android/provider/HwSettings$Systemex;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 61
    invoke-static {p1, p2, p3}, Lhuawei/android/provider/HwSettings$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 73
    invoke-static {p1, p2, p3, p4}, Lhuawei/android/provider/HwSettings$Systemex;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 49
    invoke-static {p1, p2, p3}, Lhuawei/android/provider/HwSettings$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAirplaneMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .line 90
    const-string v0, "true"

    const-string v1, "ro.poweroff_alarm"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "airplane_mode_on"

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 96
    .local v0, "invalidAirplaneMode":I
    const-string v1, "user_set_airplane"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    .end local v0    # "invalidAirplaneMode":I
    :cond_0
    return-void
.end method
