.class public Lhuawei/android/telephony/wrapper/DummyWrapperFactory;
.super Ljava/lang/Object;
.source "DummyWrapperFactory.java"

# interfaces
.implements Lhuawei/android/telephony/wrapper/WrapperFactory$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHuaweiTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/HuaweiTelephonyManagerWrapper;
    .locals 1

    .line 8
    invoke-static {}, Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;->getInstance()Lhuawei/android/telephony/wrapper/DummyHuaweiTelephonyManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getMSimTelephonyManagerWrapper()Lhuawei/android/telephony/wrapper/MSimTelephonyManagerWrapper;
    .locals 1

    .line 14
    invoke-static {}, Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;->getInstance()Lhuawei/android/telephony/wrapper/DummyMSimTelephonyManagerWrapper;

    move-result-object v0

    return-object v0
.end method
