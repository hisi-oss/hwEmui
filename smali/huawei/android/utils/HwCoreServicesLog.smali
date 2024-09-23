.class public Lhuawei/android/utils/HwCoreServicesLog;
.super Ljava/lang/Object;
.source "HwCoreServicesLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;
    }
.end annotation


# static fields
.field public static final HWFLOW:Z

.field private static final TAG:Ljava/lang/String; = "CoreServices"

.field private static final TAG_FLOW:Ljava/lang/String; = "CoreServices_FLOW"

.field private static final TAG_INIT:Ljava/lang/String; = "CoreServices_INIT"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_0

    const-string v0, "CoreServices"

    const/4 v1, 0x4

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lhuawei/android/utils/HwCoreServicesLog;->HWFLOW:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 65
    sget-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->DEBUG:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    invoke-static {p0, v0}, Landroid/util/FrameworkLogSwitchConfig;->getModuleLogSwitch(ILandroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0
.end method

.method public static d(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 70
    sget-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->DEBUG:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    invoke-static {p0, v0}, Landroid/util/FrameworkLogSwitchConfig;->getModuleLogSwitch(ILandroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 51
    sget-boolean v0, Lhuawei/android/utils/HwCoreServicesLog;->HWFLOW:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 85
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 89
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static handleLogRequest([Ljava/lang/String;)Z
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 112
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 113
    :cond_0
    aget-object v0, p0, v2

    invoke-static {}, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->values()[Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    move-result-object v3

    invoke-static {v0, v3}, Lhuawei/android/utils/HwCoreServicesLog;->scanArg(Ljava/lang/String;[Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;)Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    move-result-object v0

    .line 114
    .local v0, "debug_flow":Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;
    if-nez v0, :cond_1

    return v2

    .line 115
    :cond_1
    const/4 v3, 0x1

    .line 116
    .local v3, "logRequestHandled":Z
    sget-object v4, Lhuawei/android/utils/HwCoreServicesLog$1;->$SwitchMap$huawei$android$utils$HwCoreServicesLog$DEBUG_FLOW:[I

    invoke-virtual {v0}, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 131
    const/4 v3, 0x0

    goto :goto_0

    .line 126
    :pswitch_0
    sput-boolean v2, Landroid/util/HwSlog;->HW_DEBUG:Z

    .line 127
    sput-boolean v2, Landroid/util/HwSlog;->HWFLOW:Z

    .line 128
    sput-boolean v2, Landroid/util/HwSlog;->HW_DEBUG_STATES:Z

    .line 129
    goto :goto_0

    .line 121
    :pswitch_1
    sput-boolean v1, Landroid/util/HwSlog;->HW_DEBUG:Z

    .line 122
    sput-boolean v1, Landroid/util/HwSlog;->HWFLOW:Z

    .line 123
    sput-boolean v1, Landroid/util/HwSlog;->HW_DEBUG_STATES:Z

    .line 124
    goto :goto_0

    .line 118
    :pswitch_2
    sput-boolean v1, Landroid/util/HwSlog;->HW_DEBUG_STATES:Z

    .line 119
    nop

    .line 133
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 75
    sget-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->FLOW:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    invoke-static {p0, v0}, Landroid/util/FrameworkLogSwitchConfig;->getModuleLogSwitch(ILandroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0
.end method

.method public static i(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 80
    sget-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->FLOW:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    invoke-static {p0, v0}, Landroid/util/FrameworkLogSwitchConfig;->getModuleLogSwitch(ILandroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0
.end method

.method private static scanArg(Ljava/lang/String;[Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;)Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;
    .locals 4
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "values"    # [Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;

    .line 101
    if-eqz p0, :cond_1

    .line 102
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 103
    .local v2, "value":Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;
    invoke-virtual {v2}, Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    return-object v2

    .line 102
    .end local v2    # "value":Lhuawei/android/utils/HwCoreServicesLog$DEBUG_FLOW;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static v(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 55
    sget-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->DEBUG:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    invoke-static {p0, v0}, Landroid/util/FrameworkLogSwitchConfig;->getModuleLogSwitch(ILandroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0
.end method

.method public static v(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 60
    sget-object v0, Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;->DEBUG:Landroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;

    invoke-static {p0, v0}, Landroid/util/FrameworkLogSwitchConfig;->getModuleLogSwitch(ILandroid/util/FrameworkLogSwitchConfig$LOG_SWITCH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 47
    sget-boolean v0, Lhuawei/android/utils/HwCoreServicesLog;->HWFLOW:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static w(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 93
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(ILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 97
    invoke-static {p0}, Landroid/util/FrameworkTagConstant;->getModuleTagStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
