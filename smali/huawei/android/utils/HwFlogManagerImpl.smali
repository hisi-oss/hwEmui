.class public Lhuawei/android/utils/HwFlogManagerImpl;
.super Ljava/lang/Object;
.source "HwFlogManagerImpl.java"

# interfaces
.implements Landroid/common/HwFlogManager;


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "HwFlogManagerImpl"

.field private static mHwFlogManager:Landroid/common/HwFlogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/utils/HwFlogManagerImpl;->mHwFlogManager:Landroid/common/HwFlogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getDefault()Landroid/common/HwFlogManager;
    .locals 1

    .line 39
    sget-object v0, Lhuawei/android/utils/HwFlogManagerImpl;->mHwFlogManager:Landroid/common/HwFlogManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lhuawei/android/utils/HwFlogManagerImpl;

    invoke-direct {v0}, Lhuawei/android/utils/HwFlogManagerImpl;-><init>()V

    sput-object v0, Lhuawei/android/utils/HwFlogManagerImpl;->mHwFlogManager:Landroid/common/HwFlogManager;

    .line 42
    :cond_0
    sget-object v0, Lhuawei/android/utils/HwFlogManagerImpl;->mHwFlogManager:Landroid/common/HwFlogManager;

    return-object v0
.end method


# virtual methods
.method public bdReport(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventID"    # I

    .line 92
    invoke-static {p1, p2}, Lcom/huawei/bd/Reporter;->c(Landroid/content/Context;I)Z

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public bdReport(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventID"    # I
    .param p3, "eventMsg"    # Ljava/lang/String;

    .line 96
    invoke-static {p1, p2, p3}, Lcom/huawei/bd/Reporter;->e(Landroid/content/Context;ILjava/lang/String;)Z

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public bdReport(Landroid/content/Context;ILorg/json/JSONObject;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventID"    # I
    .param p3, "eventMsg"    # Lorg/json/JSONObject;

    .line 100
    invoke-static {p1, p2, p3}, Lcom/huawei/bd/Reporter;->j(Landroid/content/Context;ILorg/json/JSONObject;)Z

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public bdReport(Landroid/content/Context;ILorg/json/JSONObject;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventID"    # I
    .param p3, "eventMsg"    # Lorg/json/JSONObject;
    .param p4, "priority"    # I

    .line 106
    invoke-static {p1, p2, p3, p4}, Lcom/huawei/bd/Reporter;->j(Landroid/content/Context;ILorg/json/JSONObject;I)Z

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public handleLogRequest([Ljava/lang/String;)Z
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lhuawei/android/utils/HwCoreServicesLog;->handleLogRequest([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public slog(IILjava/lang/String;)I
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 58
    packed-switch p1, :pswitch_data_0

    .line 70
    const/4 v0, -0x1

    return v0

    .line 68
    :pswitch_0
    invoke-static {p2, p3}, Lhuawei/android/utils/HwCoreServicesLog;->e(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 66
    :pswitch_1
    invoke-static {p2, p3}, Lhuawei/android/utils/HwCoreServicesLog;->w(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 64
    :pswitch_2
    invoke-static {p2, p3}, Lhuawei/android/utils/HwCoreServicesLog;->i(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 62
    :pswitch_3
    invoke-static {p2, p3}, Lhuawei/android/utils/HwCoreServicesLog;->d(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 60
    :pswitch_4
    invoke-static {p2, p3}, Lhuawei/android/utils/HwCoreServicesLog;->v(ILjava/lang/String;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public slog(IILjava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .param p1, "priority"    # I
    .param p2, "tag"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "tr"    # Ljava/lang/Throwable;

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, -0x1

    return v0

    .line 85
    :pswitch_0
    invoke-static {p2, p3, p4}, Lhuawei/android/utils/HwCoreServicesLog;->e(ILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 83
    :pswitch_1
    invoke-static {p2, p3, p4}, Lhuawei/android/utils/HwCoreServicesLog;->w(ILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 81
    :pswitch_2
    invoke-static {p2, p3, p4}, Lhuawei/android/utils/HwCoreServicesLog;->i(ILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 79
    :pswitch_3
    invoke-static {p2, p3, p4}, Lhuawei/android/utils/HwCoreServicesLog;->d(ILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    .line 77
    :pswitch_4
    invoke-static {p2, p3, p4}, Lhuawei/android/utils/HwCoreServicesLog;->v(ILjava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public slogd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 50
    invoke-static {p1, p2}, Lhuawei/android/utils/HwCoreServicesLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public slogv(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 46
    invoke-static {p1, p2}, Lhuawei/android/utils/HwCoreServicesLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
