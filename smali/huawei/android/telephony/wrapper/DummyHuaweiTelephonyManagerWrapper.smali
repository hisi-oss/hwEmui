.class public Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "DummyHuaweiTelephonyManagerWrapper.java"

# interfaces
.implements Lhuawei/android/telephony/wrapper/HuaweiTelephonyManagerWrapper;


# static fields
.field private static final CLASS_HuaweiTelephonyManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "DummyHuaweiTelephonyManagerWrapper"

.field private static final METHOD_STATIC_getDefault:Ljava/lang/reflect/Method;

.field private static final METHOD_getCardType:Ljava/lang/reflect/Method;

.field private static final METHOD_getDualCardMode:Ljava/lang/reflect/Method;

.field private static final METHOD_getSubidFromSlotId:Ljava/lang/reflect/Method;

.field private static mInstance:Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;


# instance fields
.field private mHuaweiTelephonyManager:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;

    invoke-direct {v0}, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;-><init>()V

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;

    .line 21
    const-string v0, "com.huawei.telephony.HuaweiTelephonyManager"

    .line 22
    invoke-static {v0}, Lcom/huawei/utils/reflect/HwReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->CLASS_HuaweiTelephonyManager:Ljava/lang/Class;

    .line 25
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->CLASS_HuaweiTelephonyManager:Ljava/lang/Class;

    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 26
    invoke-static {v0, v1, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->METHOD_STATIC_getDefault:Ljava/lang/reflect/Method;

    .line 27
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->CLASS_HuaweiTelephonyManager:Ljava/lang/Class;

    const-string v1, "getSubidFromSlotId"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 28
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->METHOD_getSubidFromSlotId:Ljava/lang/reflect/Method;

    .line 29
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->CLASS_HuaweiTelephonyManager:Ljava/lang/Class;

    const-string v1, "getDualCardMode"

    new-array v4, v2, [Ljava/lang/Class;

    .line 30
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->METHOD_getDualCardMode:Ljava/lang/reflect/Method;

    .line 31
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->CLASS_HuaweiTelephonyManager:Ljava/lang/Class;

    const-string v1, "getCardType"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 32
    invoke-static {v0, v1, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->METHOD_getCardType:Ljava/lang/reflect/Method;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;
    .locals 5

    .line 38
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->METHOD_STATIC_getDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mHuaweiTelephonyManager:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyHuaweiTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_STATIC_getDefault cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v2, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;

    iput-object v0, v2, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mHuaweiTelephonyManager:Ljava/lang/Object;

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getCardType(I)I
    .locals 5
    .param p1, "i"    # I

    .line 74
    :try_start_0
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;

    iget-object v0, v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mHuaweiTelephonyManager:Ljava/lang/Object;

    sget-object v1, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->METHOD_getCardType:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 74
    invoke-static {v0, v1, v2}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DummyHuaweiTelephonyManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "METHOD_getCardType cause exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, -0x1

    return v1
.end method

.method public getDualCardMode()I
    .locals 4

    .line 62
    :try_start_0
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;

    iget-object v0, v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mHuaweiTelephonyManager:Ljava/lang/Object;

    sget-object v1, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->METHOD_getDualCardMode:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DummyHuaweiTelephonyManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "METHOD_getDualCardMode cause exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v1, -0x1

    return v1
.end method

.method public getSubidFromSlotId(I)I
    .locals 5
    .param p1, "slotId"    # I

    .line 51
    :try_start_0
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;

    iget-object v0, v0, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->mHuaweiTelephonyManager:Ljava/lang/Object;

    sget-object v1, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->METHOD_getSubidFromSlotId:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 51
    invoke-static {v0, v1, v2}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DummyHuaweiTelephonyManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "METHOD_getSubidFromSlotId cause exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return p1
.end method
