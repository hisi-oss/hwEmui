.class public Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "DummyMSimTelephonyManagerWrapper.java"

# interfaces
.implements Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;


# static fields
.field private static final CLASS_MSimTelephonyManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "DummyMSimTelephonyManagerWrapper"

.field private static final METHOD_STATIC_getDefault:Ljava/lang/reflect/Method;

.field private static final METHOD_getCurrentPhoneType:Ljava/lang/reflect/Method;

.field private static final METHOD_getDefaultSubscription:Ljava/lang/reflect/Method;

.field private static final METHOD_getMmsAutoSetDataSubscription:Ljava/lang/reflect/Method;

.field private static final METHOD_getNetworkType:Ljava/lang/reflect/Method;

.field private static final METHOD_getPhoneCount:Ljava/lang/reflect/Method;

.field private static final METHOD_getPreferredDataSubscription:Ljava/lang/reflect/Method;

.field private static final METHOD_getVoiceMailNumber:Ljava/lang/reflect/Method;

.field private static final METHOD_hasIccCard:Ljava/lang/reflect/Method;

.field private static final METHOD_isMultiSimEnabled:Ljava/lang/reflect/Method;

.field private static final METHOD_isNetworkRoaming:Ljava/lang/reflect/Method;

.field private static final METHOD_setMmsAutoSetDataSubscription:Ljava/lang/reflect/Method;

.field private static final METHOD_setPreferredDataSubscription:Ljava/lang/reflect/Method;

.field private static mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;


# instance fields
.field private mMSimTelephonyManager:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    invoke-direct {v0}, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;-><init>()V

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    .line 20
    const-string v0, "android.telephony.MSimTelephonyManager"

    .line 21
    invoke-static {v0}, Lcom/huawei/utils/reflect/HwReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    .line 24
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 25
    invoke-static {v0, v1, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_STATIC_getDefault:Ljava/lang/reflect/Method;

    .line 26
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "isMultiSimEnabled"

    new-array v3, v2, [Ljava/lang/Class;

    .line 27
    invoke-static {v0, v1, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_isMultiSimEnabled:Ljava/lang/reflect/Method;

    .line 28
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "getDefaultSubscription"

    new-array v3, v2, [Ljava/lang/Class;

    .line 29
    invoke-static {v0, v1, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getDefaultSubscription:Ljava/lang/reflect/Method;

    .line 30
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "getPhoneCount"

    new-array v3, v2, [Ljava/lang/Class;

    .line 31
    invoke-static {v0, v1, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getPhoneCount:Ljava/lang/reflect/Method;

    .line 32
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "hasIccCard"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 33
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_hasIccCard:Ljava/lang/reflect/Method;

    .line 34
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "setMmsAutoSetDataSubscription"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 35
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_setMmsAutoSetDataSubscription:Ljava/lang/reflect/Method;

    .line 36
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "setPreferredDataSubscription"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 37
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_setPreferredDataSubscription:Ljava/lang/reflect/Method;

    .line 38
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "getPreferredDataSubscription"

    new-array v4, v2, [Ljava/lang/Class;

    .line 39
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getPreferredDataSubscription:Ljava/lang/reflect/Method;

    .line 40
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "getMmsAutoSetDataSubscription"

    new-array v4, v2, [Ljava/lang/Class;

    .line 41
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getMmsAutoSetDataSubscription:Ljava/lang/reflect/Method;

    .line 42
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "isNetworkRoaming"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 43
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_isNetworkRoaming:Ljava/lang/reflect/Method;

    .line 44
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "getNetworkType"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 45
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getNetworkType:Ljava/lang/reflect/Method;

    .line 46
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "getVoiceMailNumber"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    .line 47
    invoke-static {v0, v1, v4}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getVoiceMailNumber:Ljava/lang/reflect/Method;

    .line 48
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->CLASS_MSimTelephonyManager:Ljava/lang/Class;

    const-string v1, "getCurrentPhoneType"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    .line 49
    invoke-static {v0, v1, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getCurrentPhoneType:Ljava/lang/reflect/Method;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;
    .locals 5

    .line 55
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_STATIC_getDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

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

    .line 58
    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iput-object v0, v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public getCurrentPhoneType(I)I
    .locals 5
    .param p1, "subscription"    # I

    .line 189
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getCurrentPhoneType:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 189
    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_getCurrentPhoneType cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v0
.end method

.method public getDefaultSubscription()I
    .locals 5

    .line 79
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getDefaultSubscription:Ljava/lang/reflect/Method;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_getDefaultSubscription cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v0
.end method

.method public getMmsAutoSetDataSubscription()I
    .locals 5

    .line 145
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getMmsAutoSetDataSubscription:Ljava/lang/reflect/Method;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_getMmsAutoSetDataSubscription cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0
.end method

.method public getNetworkType(I)I
    .locals 5
    .param p1, "subscription"    # I

    .line 167
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getNetworkType:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 167
    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_getNetworkType cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v0
.end method

.method public getPhoneCount()I
    .locals 4

    .line 90
    :try_start_0
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v0, v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getPhoneCount:Ljava/lang/reflect/Method;

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

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DummyMSimTelephonyManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "METHOD_getPhoneCount cause exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x1

    return v1
.end method

.method public getPreferredDataSubscription()I
    .locals 5

    .line 134
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getPreferredDataSubscription:Ljava/lang/reflect/Method;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_getPreferredDataSubscription cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subsription"    # I

    .line 178
    :try_start_0
    sget-object v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v0, v0, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_getVoiceMailNumber:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 178
    invoke-static {v0, v1, v2}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DummyMSimTelephonyManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "METHOD_getVoiceMailNumber cause exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasIccCard(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .line 101
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_hasIccCard:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 101
    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_hasIccCard cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 5

    .line 68
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_isMultiSimEnabled:Ljava/lang/reflect/Method;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_isMultiSimEnabled cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .line 156
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_isNetworkRoaming:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 156
    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_isNetworkRoaming cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v0
.end method

.method public setMmsAutoSetDataSubscription(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .line 112
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_setMmsAutoSetDataSubscription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 112
    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_setMmsAutoSetDataSubscription cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 5
    .param p1, "subscription"    # I

    .line 123
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mInstance:Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    iget-object v1, v1, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->mMSimTelephonyManager:Ljava/lang/Object;

    sget-object v2, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->METHOD_setPreferredDataSubscription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 123
    invoke-static {v1, v2, v3}, Lcom/huawei/utils/reflect/HwReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DummyMSimTelephonyManagerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_setPreferredDataSubscription cause exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v0
.end method
