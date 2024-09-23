.class public final Lhuawei/android/provider/HwSettings;
.super Ljava/lang/Object;
.source "HwSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/provider/HwSettings$Global;,
        Lhuawei/android/provider/HwSettings$Secure;,
        Lhuawei/android/provider/HwSettings$Systemex;,
        Lhuawei/android/provider/HwSettings$System;,
        Lhuawei/android/provider/HwSettings$NameValueCache;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "settings"

.field private static final LOCAL_LOGV:Z = false

.field public static final MDM_POLICY_INVALID_VALUE:Ljava/lang/String; = "mdm_policy_invalid_value"

.field private static final MDM_POLICY_NAME:Ljava/lang/String; = "mdm_policy_name"

.field private static final MDM_POLICY_RELATED_SET_ITEMS:[Ljava/lang/String;

.field private static final POLICY_FORBIDDEN_LOCATION_MODE:Ljava/lang/String; = "settings_policy_forbidden_location_mode"

.field private static final POLICY_FORBIDDEN_LOCATION_SERVICE:Ljava/lang/String; = "settings_policy_forbidden_location_service"

.field public static final QUERY_ARG_SELECTION:Ljava/lang/String; = "android:query-selection"

.field public static final QUERY_ARG_SELECTION_ARGS:Ljava/lang/String; = "android:query-selection-args"

.field public static final QUERY_ARG_SORT_ORDER:Ljava/lang/String; = "android:query-sort-order"

.field private static final RECEIVER_ACTION_POLICY_TOAST_SHOW:Ljava/lang/String; = "com.android.settings.mdm.receiver.action.MDMPolicyToastShow"

.field private static final RECEVIER_PKG:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "Settings"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1017
    const-string v0, "location_mode"

    const-string v1, "screen_off_timeout"

    const-string v2, "location_providers_allowed"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/android/provider/HwSettings;->MDM_POLICY_RELATED_SET_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustValueForMDMPolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "origValue"    # Ljava/lang/String;

    .line 839
    if-nez p0, :cond_0

    .line 840
    return-object p2

    .line 843
    :cond_0
    invoke-static {p1}, Lhuawei/android/provider/HwSettings;->isMonitorSettings(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    return-object p2

    .line 848
    :cond_1
    const-string v0, "location_providers_allowed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    invoke-static {p0, p1, p2}, Lhuawei/android/provider/HwSettings;->checkLocationPolicyForProviders(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 853
    :cond_2
    const-string v0, "location_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 854
    invoke-static {p0, p1, p2}, Lhuawei/android/provider/HwSettings;->checkNetworkLocationPolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 857
    :cond_3
    const-string v0, "screen_off_timeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 858
    invoke-static {p0, p1, p2}, Lhuawei/android/provider/HwSettings;->checkScreenOffPolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 864
    :cond_4
    return-object p2
.end method

.method private static checkLocationPolicyForProviders(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "origValue"    # Ljava/lang/String;

    .line 869
    if-nez p2, :cond_0

    .line 870
    return-object p2

    .line 872
    :cond_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "providerUpdates":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    .local v1, "newString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 875
    .local v2, "inputError":Z
    const/16 v3, 0x30

    .line 876
    .local v3, "isToEnableNetwork":C
    const/16 v4, 0x30

    .line 877
    .local v4, "isToEnableGps":C
    array-length v5, v0

    const/4 v6, 0x0

    move v7, v4

    move v4, v3

    move v3, v6

    .end local v3    # "isToEnableNetwork":C
    .local v4, "isToEnableNetwork":C
    .local v7, "isToEnableGps":C
    :goto_0
    const/16 v8, 0x2d

    const/16 v9, 0x2b

    const/4 v10, 0x1

    if-ge v3, v5, :cond_8

    aget-object v11, v0, v3

    .line 879
    .local v11, "provider":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v12, v10, :cond_1

    goto :goto_2

    .line 883
    :cond_1
    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 885
    .local v12, "prefix":C
    if-eq v12, v9, :cond_2

    if-eq v12, v8, :cond_2

    .line 886
    const/4 v2, 0x1

    .line 887
    goto :goto_3

    .line 889
    :cond_2
    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 890
    .local v8, "providerTemp":Ljava/lang/String;
    const-string v9, "network"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 891
    move v4, v12

    .line 892
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isNetworkLocationDisabled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 893
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isLocationServiceDisabled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 894
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isLocationServiceModeDisabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 895
    :cond_3
    const/16 v12, 0x2d

    goto :goto_1

    .line 897
    :cond_4
    const-string v9, "gps"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 898
    move v7, v12

    .line 899
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isLocationServiceDisabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 900
    const/16 v12, 0x2d

    .line 902
    :cond_5
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isLocationServiceModeDisabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 903
    const/16 v12, 0x2b

    .line 906
    :cond_6
    :goto_1
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .end local v8    # "providerTemp":Ljava/lang/String;
    .end local v11    # "provider":Ljava/lang/String;
    .end local v12    # "prefix":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 880
    .restart local v11    # "provider":Ljava/lang/String;
    :cond_7
    :goto_2
    const/4 v2, 0x1

    .line 881
    nop

    .line 910
    .end local v11    # "provider":Ljava/lang/String;
    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 911
    .local v3, "newStringLen":I
    if-ge v3, v10, :cond_9

    .line 912
    const/4 v2, 0x1

    goto :goto_4

    .line 914
    :cond_9
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 916
    :goto_4
    if-eqz v2, :cond_a

    .line 917
    return-object p2

    .line 919
    :cond_a
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isLocationServiceDisabled()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 920
    if-eq v7, v9, :cond_b

    if-ne v4, v9, :cond_c

    .line 921
    :cond_b
    const-string v5, "settings_policy_forbidden_location_service"

    invoke-static {v5}, Lhuawei/android/provider/HwSettings;->sendBroadcastByMDM(Ljava/lang/String;)V

    .line 924
    :cond_c
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isLocationServiceModeDisabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 925
    if-eq v4, v9, :cond_d

    if-ne v7, v8, :cond_e

    .line 926
    :cond_d
    const-string v5, "settings_policy_forbidden_location_mode"

    invoke-static {v5}, Lhuawei/android/provider/HwSettings;->sendBroadcastByMDM(Ljava/lang/String;)V

    .line 929
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static checkNetworkLocationPolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "origValue"    # Ljava/lang/String;

    .line 935
    const/high16 v0, -0x80000000

    .line 937
    .local v0, "origSetValue":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 941
    nop

    .line 942
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isNetworkLocationDisabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 944
    if-eqz v0, :cond_0

    if-eq v2, v0, :cond_0

    .line 945
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 948
    :cond_0
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isLocationServiceDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    if-eqz v0, :cond_1

    .line 950
    const-string v1, "settings_policy_forbidden_location_service"

    invoke-static {v1}, Lhuawei/android/provider/HwSettings;->sendBroadcastByMDM(Ljava/lang/String;)V

    .line 951
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 954
    :cond_1
    invoke-static {}, Lhuawei/android/provider/HwSettings;->isLocationServiceModeDisabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 955
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 956
    :cond_2
    const-string v1, "settings_policy_forbidden_location_mode"

    invoke-static {v1}, Lhuawei/android/provider/HwSettings;->sendBroadcastByMDM(Ljava/lang/String;)V

    .line 957
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 960
    :cond_3
    return-object p2

    .line 938
    :catch_0
    move-exception v1

    .line 939
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HwSettings :: checkAndFixMDMPolicyValue() get invalid value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-object p2
.end method

.method private static checkScreenOffPolicy(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "origValue"    # Ljava/lang/String;

    .line 997
    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lhuawei/android/provider/HwSettings;->isScreenOffDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    const-string v0, "mdm_policy_invalid_value"

    return-object v0

    .line 1000
    :cond_0
    return-object p2
.end method

.method private static isLocationServiceDisabled()Z
    .locals 1

    .line 988
    const/16 v0, 0x27

    invoke-static {v0}, Landroid/hdm/HwDeviceManager;->disallowOp(I)Z

    move-result v0

    return v0
.end method

.method private static isLocationServiceModeDisabled()Z
    .locals 1

    .line 992
    const/16 v0, 0x28

    invoke-static {v0}, Landroid/hdm/HwDeviceManager;->disallowOp(I)Z

    move-result v0

    return v0
.end method

.method private static isMonitorSettings(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 1009
    sget-object v0, Lhuawei/android/provider/HwSettings;->MDM_POLICY_RELATED_SET_ITEMS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1010
    .local v4, "item":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1011
    const/4 v0, 0x1

    return v0

    .line 1009
    .end local v4    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1014
    :cond_1
    return v2
.end method

.method private static isNetworkLocationDisabled()Z
    .locals 1

    .line 983
    const/16 v0, 0x29

    invoke-static {v0}, Landroid/hdm/HwDeviceManager;->disallowOp(I)Z

    move-result v0

    return v0
.end method

.method private static isScreenOffDisabled()Z
    .locals 1

    .line 1005
    const/16 v0, 0x24

    invoke-static {v0}, Landroid/hdm/HwDeviceManager;->disallowOp(I)Z

    move-result v0

    return v0
.end method

.method private static sendBroadcastByMDM(Ljava/lang/String;)V
    .locals 4
    .param p0, "policyName"    # Ljava/lang/String;

    .line 973
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 974
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 975
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.mdm.receiver.action.MDMPolicyToastShow"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "mdm_policy_name"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    const-string v3, "com.android.settings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 979
    return-void
.end method
