.class public Landroid/widget/sr/PowerMode;
.super Ljava/lang/Object;
.source "PowerMode.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerMode"

.field private static sInstance:Landroid/widget/sr/PowerMode;


# instance fields
.field private final SP:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCountStepLimit:I

.field private mIsDeviceOwner:Z

.field private mIsNormalPowerSaveMode:Z

.field private mIsNullContext:Z

.field private mIsSuperPowerSaveMode:Z

.field private mSuperCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceOwner"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsSuperPowerSaveMode:Z

    .line 16
    iput-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsNormalPowerSaveMode:Z

    .line 17
    iput-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsNullContext:Z

    .line 18
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/sr/PowerMode;->mIsDeviceOwner:Z

    .line 20
    iput v0, p0, Landroid/widget/sr/PowerMode;->mSuperCount:I

    .line 23
    const/16 v2, 0x64

    iput v2, p0, Landroid/widget/sr/PowerMode;->mCountStepLimit:I

    .line 26
    invoke-direct {p0}, Landroid/widget/sr/PowerMode;->getSystemPropertiesClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/sr/PowerMode;->SP:Ljava/lang/Class;

    .line 38
    iput-boolean p2, p0, Landroid/widget/sr/PowerMode;->mIsDeviceOwner:Z

    .line 40
    if-nez p1, :cond_0

    .line 41
    iput-boolean v1, p0, Landroid/widget/sr/PowerMode;->mIsNullContext:Z

    .line 42
    iput-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsNormalPowerSaveMode:Z

    goto :goto_1

    .line 44
    :cond_0
    iput-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsNullContext:Z

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/sr/PowerMode;->mContext:Landroid/content/Context;

    .line 47
    iget-boolean v2, p0, Landroid/widget/sr/PowerMode;->mIsDeviceOwner:Z

    if-eqz v2, :cond_2

    .line 49
    :try_start_0
    iget-object v2, p0, Landroid/widget/sr/PowerMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SmartModeStatus"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 50
    .local v2, "ret":I
    const-string v3, "PowerMode"

    const-string v4, "retvalu:%d"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Landroid/widget/sr/PowerMode;->mIsNormalPowerSaveMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v2    # "ret":I
    goto :goto_1

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PowerMode"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-boolean v1, p0, Landroid/widget/sr/PowerMode;->mIsNormalPowerSaveMode:Z

    .line 59
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    const-string v1, "sys.super_power_save"

    invoke-direct {p0, v1, v0}, Landroid/widget/sr/PowerMode;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsSuperPowerSaveMode:Z

    .line 60
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 84
    iget-object v0, p0, Landroid/widget/sr/PowerMode;->SP:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    return v1

    .line 88
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/widget/sr/PowerMode;->SP:Ljava/lang/Class;

    const-string v2, "getBoolean"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v0, "res":Z
    return v0

    .line 94
    .end local v0    # "res":Z
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "PowerMode"

    const-string v3, "PowerMode.getBoolean InvocationTargetException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "PowerMode"

    const-string v3, "PowerMode.getBoolean IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 90
    :catch_2
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "PowerMode"

    const-string v3, "PowerMode.getBoolean NoSuchMethodException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 97
    :goto_1
    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Z)Landroid/widget/sr/PowerMode;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceOwner"    # Z

    const-class v0, Landroid/widget/sr/PowerMode;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Landroid/widget/sr/PowerMode;->sInstance:Landroid/widget/sr/PowerMode;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Landroid/widget/sr/PowerMode;

    invoke-direct {v1, p0, p1}, Landroid/widget/sr/PowerMode;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Landroid/widget/sr/PowerMode;->sInstance:Landroid/widget/sr/PowerMode;

    .line 34
    :cond_0
    sget-object v1, Landroid/widget/sr/PowerMode;->sInstance:Landroid/widget/sr/PowerMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "deviceOwner":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSystemPropertiesClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 102
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "shouldNotHappen":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getCurrentSuperPowerState()Z
    .locals 2

    .line 80
    const-string v0, "sys.super_power_save"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/sr/PowerMode;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getNormalPowerSaveMode()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsNormalPowerSaveMode:Z

    return v0
.end method

.method public getSuperPowerSaveMode()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsSuperPowerSaveMode:Z

    return v0
.end method

.method public isInNormalPowerState()Z
    .locals 2

    .line 125
    iget-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsDeviceOwner:Z

    if-nez v0, :cond_0

    .line 126
    const-string v0, "PowerMode"

    const-string v1, "You are not device owner, the normal power mode will be set to Save state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_0
    iget-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsNullContext:Z

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "PowerMode"

    const-string v1, "normal not supported in null context"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_1
    const-string v0, "PowerMode"

    const-string v1, "normal supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsNormalPowerSaveMode:Z

    return v0
.end method

.method public isInSuperPowerState()Z
    .locals 3

    .line 110
    iget-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsDeviceOwner:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 111
    const-string v0, "PowerMode"

    const-string v2, "You are not device owner, the super power mode will be set to Save state"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v1

    .line 115
    :cond_0
    iget v0, p0, Landroid/widget/sr/PowerMode;->mCountStepLimit:I

    iget v2, p0, Landroid/widget/sr/PowerMode;->mSuperCount:I

    if-ne v0, v2, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/widget/sr/PowerMode;->getCurrentSuperPowerState()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsSuperPowerSaveMode:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/PowerMode;->mSuperCount:I

    .line 120
    :cond_1
    iget v0, p0, Landroid/widget/sr/PowerMode;->mSuperCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/sr/PowerMode;->mSuperCount:I

    .line 121
    iget-boolean v0, p0, Landroid/widget/sr/PowerMode;->mIsSuperPowerSaveMode:Z

    return v0
.end method

.method public setNormalPowerSaveMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 75
    iput-boolean p1, p0, Landroid/widget/sr/PowerMode;->mIsNormalPowerSaveMode:Z

    .line 76
    return-void
.end method

.method public setSuperPowerSaveMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .line 71
    iput-boolean p1, p0, Landroid/widget/sr/PowerMode;->mIsSuperPowerSaveMode:Z

    .line 72
    return-void
.end method
