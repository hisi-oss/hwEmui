.class public final Landroid/app/mtm/MultiTaskUtils;
.super Ljava/lang/Object;
.source "MultiTaskUtils.java"


# static fields
.field static final DEBUG:Z = false

.field public static final HWFLOW:Z

.field public static final HW_INSTALL:I = 0x3

.field public static final MultiTask_POLICY_ChangeStatus:I = 0x200

.field public static final MultiTask_POLICY_Delay:I = 0x4

.field public static final MultiTask_POLICY_Forbid:I = 0x2

.field public static final MultiTask_POLICY_MemoryDropCache:I = 0x100

.field public static final MultiTask_POLICY_MemoryShrink:I = 0x80

.field public static final MultiTask_POLICY_ProcessCpuset:I = 0x10

.field public static final MultiTask_POLICY_ProcessFreeze:I = 0x40

.field public static final MultiTask_POLICY_ProcessKill:I = 0x20

.field public static final MultiTask_POLICY_ProcessShrink:I = 0x400

.field public static final MultiTask_POLICY_Proxy:I = 0x8

.field public static final MultiTask_POLICY_UNDO:I = 0x1

.field public static final NORMAL:I = 0x1

.field public static final SYSTEM_APP:I = 0x2

.field public static final SYSTEM_SERVER:I = 0x1

.field public static final StringALL:Ljava/lang/String; = "ALL"

.field static final TAG:Ljava/lang/String; = "MultiTaskUtils"

.field public static final THIRDPARTY:I = 0x4

.field public static final URGENT:I = 0x4

.field public static final WARNING:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const/4 v0, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const-string v0, "MultiTaskUtils"

    const/4 v1, 0x4

    .line 47
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
    sput-boolean v0, Landroid/app/mtm/MultiTaskUtils;->HWFLOW:Z

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppType(IILjava/lang/String;)I
    .locals 8
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 60
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 61
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v2, :cond_0

    .line 62
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-interface {v2, p2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 66
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MultiTaskUtils"

    const-string v3, "can not get packagemanagerservice!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_2

    .line 69
    const/4 v1, 0x0

    if-eqz v1, :cond_1

    .line 70
    const-string v1, "MultiTaskUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get applicationinfo for pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    const/4 v1, -0x1

    return v1

    .line 75
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p0, v1, :cond_3

    .line 77
    const/4 v1, 0x1

    return v1

    .line 80
    :cond_3
    const/4 v1, 0x1

    .line 81
    .local v1, "systemFlag":I
    const/high16 v2, 0x2000000

    .line 84
    .local v2, "preInstalledFlag":I
    const/4 v3, 0x3

    :try_start_1
    const-string v4, "android.content.pm.ApplicationInfo"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 85
    .local v4, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "hwFlags"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 86
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 88
    .local v6, "hwFlags":I
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/2addr v7, v1

    if-eqz v7, :cond_4

    and-int v7, v6, v2

    if-eqz v7, :cond_4

    .line 90
    return v3

    .line 98
    .end local v4    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "hwFlags":I
    :catch_1
    move-exception v4

    .line 99
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "MultiTaskUtils"

    const-string v6, "getAppType exception: IllegalAccessException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 96
    :catch_2
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "MultiTaskUtils"

    const-string v6, "getAppType exception: IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 94
    :catch_3
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    const-string v5, "MultiTaskUtils"

    const-string v6, "getAppType exception: NoSuchFieldException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    goto :goto_1

    .line 92
    :catch_4
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "MultiTaskUtils"

    const-string v6, "getAppType exception: ClassNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_4
    :goto_1
    nop

    .line 101
    :goto_2
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_5

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->hwFlags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_5

    .line 103
    return v3

    .line 106
    :cond_5
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_6

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_6

    .line 107
    return v3

    .line 109
    :cond_6
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_7

    .line 111
    const/4 v3, 0x2

    return v3

    .line 113
    :cond_7
    const/4 v3, 0x4

    return v3
.end method
