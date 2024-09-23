.class public Landroid/widget/sr/HwSuperResolution;
.super Ljava/lang/Object;
.source "HwSuperResolution.java"


# static fields
.field public static final RET_ERR:I = -0x1

.field public static final RET_OK:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HwSuperResolution"

.field private static sFirstCheckLib:Z


# instance fields
.field private mBitmapFd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsDeviceOwner:Z

.field private mPowerMode:Landroid/widget/sr/PowerMode;

.field private mPowerModeReceiver:Landroid/widget/sr/PowerModeReceiver;

.field private mSupResPar:Landroid/widget/sr/SuperResolutionParameter;

.field private mSuperResolutionListener:Landroid/widget/sr/HwSuperResolutionListener;

.field private mSupportSuperResolution:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 190
    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/sr/HwSuperResolution;->sFirstCheckLib:Z

    .line 192
    :try_start_0
    const-string v0, "jni_superresolution"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    sput-boolean v0, Landroid/widget/sr/HwSuperResolution;->sFirstCheckLib:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwSuperResolution"

    const-string v2, "loadLibrary jni_superresolution failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/sr/HwSuperResolutionListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "superResolutionListener"    # Landroid/widget/sr/HwSuperResolutionListener;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mBitmapFd:Ljava/util/HashMap;

    .line 33
    if-nez p1, :cond_0

    .line 34
    invoke-direct {p0}, Landroid/widget/sr/HwSuperResolution;->setContextThroughReflect()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mContext:Landroid/content/Context;

    .line 39
    :goto_0
    invoke-static {}, Landroid/widget/sr/Utils;->isDeviceOwner()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/sr/HwSuperResolution;->mIsDeviceOwner:Z

    .line 41
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Landroid/widget/sr/HwSuperResolution;->mIsDeviceOwner:Z

    invoke-static {v0, v1}, Landroid/widget/sr/PowerMode;->getInstance(Landroid/content/Context;Z)Landroid/widget/sr/PowerMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mPowerMode:Landroid/widget/sr/PowerMode;

    .line 42
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 43
    invoke-direct {p0}, Landroid/widget/sr/HwSuperResolution;->initialBroadReceiver()V

    .line 46
    :cond_1
    iput-object p2, p0, Landroid/widget/sr/HwSuperResolution;->mSuperResolutionListener:Landroid/widget/sr/HwSuperResolutionListener;

    .line 47
    new-instance v0, Landroid/widget/sr/SuperResolutionParameter;

    invoke-direct {v0}, Landroid/widget/sr/SuperResolutionParameter;-><init>()V

    iput-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mSupResPar:Landroid/widget/sr/SuperResolutionParameter;

    .line 50
    invoke-static {}, Landroid/widget/sr/Utils;->isSuperResolutionSupport()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/sr/HwSuperResolution;->mSupportSuperResolution:Z

    .line 51
    sget-boolean v0, Landroid/widget/sr/HwSuperResolution;->sFirstCheckLib:Z

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mSuperResolutionListener:Landroid/widget/sr/HwSuperResolutionListener;

    iget-object v1, p0, Landroid/widget/sr/HwSuperResolution;->mSupResPar:Landroid/widget/sr/SuperResolutionParameter;

    invoke-direct {p0, v0, v1}, Landroid/widget/sr/HwSuperResolution;->nativeInitialize(Landroid/widget/sr/HwSuperResolutionListener;Landroid/widget/sr/SuperResolutionParameter;)I

    .line 54
    :cond_2
    return-void
.end method

.method private initialBroadReceiver()V
    .locals 3

    .line 60
    new-instance v0, Landroid/widget/sr/PowerModeReceiver;

    iget-object v1, p0, Landroid/widget/sr/HwSuperResolution;->mPowerMode:Landroid/widget/sr/PowerMode;

    invoke-direct {v0, v1}, Landroid/widget/sr/PowerModeReceiver;-><init>(Landroid/widget/sr/PowerMode;)V

    iput-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mPowerModeReceiver:Landroid/widget/sr/PowerModeReceiver;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "huawei.intent.action.POWER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Landroid/widget/sr/HwSuperResolution;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/sr/HwSuperResolution;->mPowerModeReceiver:Landroid/widget/sr/PowerModeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method private native nativeCancel(Landroid/widget/sr/SuperResolutionParameter;I)I
.end method

.method public static native nativeErase(JI)V
.end method

.method public static native nativeGetFdFromPtr(J)I
.end method

.method private native nativeInitialize(Landroid/widget/sr/HwSuperResolutionListener;Landroid/widget/sr/SuperResolutionParameter;)I
.end method

.method private native nativeProcess(Landroid/widget/sr/SuperResolutionParameter;IIIIII)I
.end method

.method public static native nativeSRCreate([IIIIIIZ[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/Bitmap;
.end method

.method public static native nativeSetReadOnly(I)I
.end method

.method private native nativeStart(Landroid/widget/sr/HwSuperResolutionListener;ILandroid/widget/sr/SuperResolutionParameter;)I
.end method

.method private native nativeStop(Landroid/widget/sr/SuperResolutionParameter;)I
.end method

.method private setContextThroughReflect()Landroid/content/Context;
    .locals 6

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    .line 70
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 71
    .local v2, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "currentApplication"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 72
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    .line 73
    .local v4, "app":Landroid/app/Application;
    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 74
    return-object v0

    .line 83
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "app":Landroid/app/Application;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "HwSuperResolution"

    const-string v3, "InvocationTargetException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "HwSuperResolution"

    const-string v3, "IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 79
    :catch_2
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "HwSuperResolution"

    const-string v3, "IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 77
    :catch_3
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "HwSuperResolution"

    const-string v3, "NoSuchMethodException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 75
    :catch_4
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "HwSuperResolution"

    const-string v3, "ClassNotfound"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 87
    :goto_1
    return-object v1
.end method


# virtual methods
.method public cancel(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 159
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mBitmapFd:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mBitmapFd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mSupResPar:Landroid/widget/sr/SuperResolutionParameter;

    iget-object v1, p0, Landroid/widget/sr/HwSuperResolution;->mBitmapFd:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/sr/HwSuperResolution;->nativeCancel(Landroid/widget/sr/SuperResolutionParameter;I)I

    move-result v0

    .line 164
    .local v0, "ret":I
    if-nez v0, :cond_1

    .line 165
    iget-object v1, p0, Landroid/widget/sr/HwSuperResolution;->mBitmapFd:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    return v0

    .line 160
    .end local v0    # "ret":I
    :cond_2
    :goto_0
    const-string v0, "HwSuperResolution"

    const-string v1, "bitmap doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, -0x1

    return v0
.end method

.method public process(Landroid/graphics/Bitmap;I)I
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # I

    .line 109
    iget-boolean v0, p0, Landroid/widget/sr/HwSuperResolution;->mSupportSuperResolution:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    sget-boolean v0, Landroid/widget/sr/HwSuperResolution;->sFirstCheckLib:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 114
    :cond_0
    iget-boolean v0, p0, Landroid/widget/sr/HwSuperResolution;->mIsDeviceOwner:Z

    if-nez v0, :cond_1

    .line 115
    const-string v0, "HwSuperResolution"

    const-string v2, "You are not device owner, SuperResolution is not allowed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v1

    .line 119
    :cond_1
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mPowerMode:Landroid/widget/sr/PowerMode;

    invoke-virtual {v0}, Landroid/widget/sr/PowerMode;->isInSuperPowerState()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mPowerMode:Landroid/widget/sr/PowerMode;

    invoke-virtual {v0}, Landroid/widget/sr/PowerMode;->isInNormalPowerState()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p1}, Landroid/widget/sr/BitmapUtils;->isBitmapIllegalSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 125
    .local v0, "retVal":I
    if-ne v1, v0, :cond_3

    .line 126
    const-string v2, "HwSuperResolution"

    const-string v3, "Bitmap size is not illegal, quit process"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v1

    .line 130
    :cond_3
    invoke-static {p1}, Landroid/widget/sr/AshMemBitmap;->createSrcNativeBitmap(Landroid/graphics/Bitmap;)Landroid/widget/sr/NativeBitmap;

    move-result-object v2

    .line 131
    .local v2, "srcBitmap":Landroid/widget/sr/NativeBitmap;
    if-nez v2, :cond_4

    .line 132
    const-string v3, "HwSuperResolution"

    const-string v4, "createSrcNativeBitmap failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v1

    .line 137
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x4

    invoke-static {v3, v4, v5, p2}, Landroid/widget/sr/AshMemBitmap;->createDesNativeBitmap(IIII)Landroid/widget/sr/NativeBitmap;

    move-result-object v3

    .line 138
    .local v3, "desBitmap":Landroid/widget/sr/NativeBitmap;
    if-nez v3, :cond_5

    .line 139
    const-string v4, "HwSuperResolution"

    const-string v5, "createDesNativeBitmap failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v1

    .line 143
    :cond_5
    iget-object v1, p0, Landroid/widget/sr/HwSuperResolution;->mSuperResolutionListener:Landroid/widget/sr/HwSuperResolutionListener;

    iget v4, v3, Landroid/widget/sr/NativeBitmap;->mFd:I

    invoke-virtual {v1, v4, v2}, Landroid/widget/sr/HwSuperResolutionListener;->addSrcFdBitmap(ILandroid/widget/sr/NativeBitmap;)V

    .line 144
    iget-object v1, p0, Landroid/widget/sr/HwSuperResolution;->mSuperResolutionListener:Landroid/widget/sr/HwSuperResolutionListener;

    iget v4, v3, Landroid/widget/sr/NativeBitmap;->mFd:I

    invoke-virtual {v1, v4, v3}, Landroid/widget/sr/HwSuperResolutionListener;->addDesFdBitmap(ILandroid/widget/sr/NativeBitmap;)V

    .line 147
    iget-object v6, p0, Landroid/widget/sr/HwSuperResolution;->mSupResPar:Landroid/widget/sr/SuperResolutionParameter;

    iget v7, v2, Landroid/widget/sr/NativeBitmap;->mFd:I

    .line 148
    invoke-virtual {v2}, Landroid/widget/sr/NativeBitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/sr/NativeBitmap;->getHeight()I

    move-result v9

    iget v10, v3, Landroid/widget/sr/NativeBitmap;->mFd:I

    .line 149
    invoke-virtual {v3}, Landroid/widget/sr/NativeBitmap;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/widget/sr/NativeBitmap;->getHeight()I

    move-result v12

    .line 147
    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Landroid/widget/sr/HwSuperResolution;->nativeProcess(Landroid/widget/sr/SuperResolutionParameter;IIIIII)I

    move-result v1

    .line 150
    .local v1, "processRet":I
    return v1

    .line 120
    .end local v0    # "retVal":I
    .end local v1    # "processRet":I
    .end local v2    # "srcBitmap":Landroid/widget/sr/NativeBitmap;
    .end local v3    # "desBitmap":Landroid/widget/sr/NativeBitmap;
    :cond_6
    :goto_0
    const-string v0, "HwSuperResolution"

    const-string v2, "Power is in save mode, process operation terminated"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 110
    :cond_7
    :goto_1
    const-string v0, "HwSuperResolution"

    const-string v2, "SuperResolution is not supported in your platform"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v1
.end method

.method public start(I)I
    .locals 2
    .param p1, "scene"    # I

    .line 96
    sget-boolean v0, Landroid/widget/sr/HwSuperResolution;->sFirstCheckLib:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/sr/HwSuperResolution;->mSupportSuperResolution:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/sr/HwSuperResolution;->mIsDeviceOwner:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mSuperResolutionListener:Landroid/widget/sr/HwSuperResolutionListener;

    iget-object v1, p0, Landroid/widget/sr/HwSuperResolution;->mSupResPar:Landroid/widget/sr/SuperResolutionParameter;

    invoke-direct {p0, v0, p1, v1}, Landroid/widget/sr/HwSuperResolution;->nativeStart(Landroid/widget/sr/HwSuperResolutionListener;ILandroid/widget/sr/SuperResolutionParameter;)I

    move-result v0

    .line 98
    .local v0, "startRet":I
    return v0

    .line 100
    .end local v0    # "startRet":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public stop()I
    .locals 3

    .line 175
    sget-boolean v0, Landroid/widget/sr/HwSuperResolution;->sFirstCheckLib:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/sr/HwSuperResolution;->mSupportSuperResolution:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/sr/HwSuperResolution;->mIsDeviceOwner:Z

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mSuperResolutionListener:Landroid/widget/sr/HwSuperResolutionListener;

    if-eqz v0, :cond_0

    .line 177
    const v0, 0x3615d355

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/sr/HwSuperResolution;->mSuperResolutionListener:Landroid/widget/sr/HwSuperResolutionListener;

    .line 179
    invoke-virtual {v2}, Landroid/widget/sr/HwSuperResolutionListener;->getCurrentCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 177
    invoke-static {v0, v1, v2}, Landroid/hwcontrol/HwWidgetFactory;->reportSrBigData(IILjava/lang/Object;)V

    .line 180
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mSuperResolutionListener:Landroid/widget/sr/HwSuperResolutionListener;

    invoke-virtual {v0}, Landroid/widget/sr/HwSuperResolutionListener;->resetCurrentCount()V

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/widget/sr/HwSuperResolution;->mSupResPar:Landroid/widget/sr/SuperResolutionParameter;

    invoke-direct {p0, v0}, Landroid/widget/sr/HwSuperResolution;->nativeStop(Landroid/widget/sr/SuperResolutionParameter;)I

    move-result v0

    .line 183
    .local v0, "stopRet":I
    return v0

    .line 186
    .end local v0    # "stopRet":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method
