.class public final Lhuawei/android/provider/HwSettings$Systemex;
.super Landroid/provider/Settings$NameValueTable;
.source "HwSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/provider/HwSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Systemex"
.end annotation


# static fields
.field public static final ATTWIFI_HOTSPOT:Ljava/lang/String; = "attwifi_hotspot"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FAST_POWER_ON:Ljava/lang/String; = "fast_power_on"

.field public static final NEED_RESTORE_PHONE_STATE:Ljava/lang/String; = "need_restore_phone_state"

.field public static final SHOW_BROADCAST_SSID_CONFIG:Ljava/lang/String; = "show_broadcast_ssid_config"

.field public static final SYS_PROP_SETTINGEX_VERSION:Ljava/lang/String; = "sys.settings_system_version"

.field public static final USER_DATACALL_SUBSCRIPTION:Ljava/lang/String; = "user_datacall_sub"

.field public static final USER_DEFAULT_SUBSCRIPTION:Ljava/lang/String; = "user_default_sub"

.field public static final USER_SET_AIRPLANE:Ljava/lang/String; = "user_set_airplane"

.field private static volatile mNameValueCache:Lhuawei/android/provider/HwSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 571
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/provider/HwSettings$Systemex;->mNameValueCache:Lhuawei/android/provider/HwSettings$NameValueCache;

    .line 816
    sget-object v0, Landroid/provider/SettingsEx$Systemex;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lhuawei/android/provider/HwSettings$Systemex;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 530
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 786
    invoke-static {p0, p1}, Lhuawei/android/provider/HwSettings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0

    .line 791
    :catch_0
    move-exception v1

    goto :goto_1

    .line 789
    :cond_0
    const-string v1, ""

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    .line 791
    :goto_1
    nop

    .line 792
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 758
    invoke-static {p0, p1}, Lhuawei/android/provider/HwSettings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 760
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 649
    invoke-static {p0, p1}, Lhuawei/android/provider/HwSettings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 652
    :catch_0
    move-exception v1

    .line 653
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 621
    invoke-static {p0, p1}, Lhuawei/android/provider/HwSettings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2

    .line 623
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 718
    invoke-static {p0, p1}, Lhuawei/android/provider/HwSettings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 721
    :catch_0
    move-exception v1

    .line 722
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 689
    invoke-static {p0, p1}, Lhuawei/android/provider/HwSettings$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "valString":Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Ljava/lang/NumberFormatException;
    nop

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    move-wide v1, p2

    goto :goto_1

    .line 692
    :cond_0
    move-wide v1, p2

    .line 695
    .local v1, "value":J
    :goto_0
    nop

    .line 694
    :goto_1
    nop

    .line 696
    return-wide v1
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    const-class v0, Lhuawei/android/provider/HwSettings$Systemex;

    monitor-enter v0

    .line 579
    :try_start_0
    sget-object v1, Lhuawei/android/provider/HwSettings$Systemex;->mNameValueCache:Lhuawei/android/provider/HwSettings$NameValueCache;

    if-nez v1, :cond_0

    .line 580
    new-instance v1, Lhuawei/android/provider/HwSettings$NameValueCache;

    const-string v2, "sys.settings_system_version"

    sget-object v3, Lhuawei/android/provider/HwSettings$Systemex;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lhuawei/android/provider/HwSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v1, Lhuawei/android/provider/HwSettings$Systemex;->mNameValueCache:Lhuawei/android/provider/HwSettings$NameValueCache;

    .line 582
    :cond_0
    sget-object v1, Lhuawei/android/provider/HwSettings$Systemex;->mNameValueCache:Lhuawei/android/provider/HwSettings$NameValueCache;

    invoke-virtual {v1, p0, p1}, Lhuawei/android/provider/HwSettings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 578
    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 603
    sget-object v0, Lhuawei/android/provider/HwSettings$Systemex;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lhuawei/android/provider/HwSettings$Systemex;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 810
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lhuawei/android/provider/HwSettings$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 671
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lhuawei/android/provider/HwSettings$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 740
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lhuawei/android/provider/HwSettings$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 593
    sget-object v0, Lhuawei/android/provider/HwSettings$Systemex;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lhuawei/android/provider/HwSettings$Systemex;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
