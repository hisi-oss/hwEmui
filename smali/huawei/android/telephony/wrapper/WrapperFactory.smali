.class public Lhuawei/android/telephony/wrapper/WrapperFactory;
.super Ljava/lang/Object;
.source "WrapperFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;
    }
.end annotation


# static fields
.field private static mInstance:Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    :try_start_0
    const-string v0, "huawei.android.telephony.wrapper.WrapperFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    .local v0, "constructorClass":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 15
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;

    sput-object v1, Lhuawei/android/telephony/wrapper/WrapperFactory;->mInstance:Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;

    .line 16
    const-string v1, "WrapperFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got success! mInstance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lhuawei/android/telephony/wrapper/WrapperFactory;->mInstance:Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "constructorClass":Ljava/lang/Class;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WrapperFactory"

    const-string v2, "get mInstance Exception"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 21
    :catch_1
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "WrapperFactory"

    const-string v2, "get mInstance NoSuchMethodException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 19
    :catch_2
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "WrapperFactory"

    const-string v2, "get mInstance SecurityException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_0

    .line 17
    :catch_3
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "WrapperFactory"

    const-string v2, "get mInstance ClassNotFoundException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 27
    :goto_1
    sget-object v0, Lhuawei/android/telephony/wrapper/WrapperFactory;->mInstance:Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lhuawei/android/telephony/wrapper/DummyWrapperFactory;

    invoke-direct {v0}, Lhuawei/android/telephony/wrapper/DummyWrapperFactory;-><init>()V

    sput-object v0, Lhuawei/android/telephony/wrapper/WrapperFactory;->mInstance:Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHuaweiTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/HuaweiTelephonyManagerWrapper;
    .locals 1

    .line 32
    sget-object v0, Lhuawei/android/telephony/wrapper/WrapperFactory;->mInstance:Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;

    invoke-interface {v0}, Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;->getHuaweiTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/HuaweiTelephonyManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getMSimTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;
    .locals 1

    .line 36
    sget-object v0, Lhuawei/android/telephony/wrapper/WrapperFactory;->mInstance:Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;

    invoke-interface {v0}, Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;->getMSimTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;

    move-result-object v0

    return-object v0
.end method
