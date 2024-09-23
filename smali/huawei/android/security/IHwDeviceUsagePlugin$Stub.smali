.class public abstract Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;
.super Landroid/os/Binder;
.source "IHwDeviceUsagePlugin.java"

# interfaces
.implements Lhuawei/android/security/IHwDeviceUsagePlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/IHwDeviceUsagePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/IHwDeviceUsagePlugin$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.IHwDeviceUsagePlugin"

.field static final TRANSACTION_detectActivationWithDuration:I = 0xb

.field static final TRANSACTION_getChargeTime:I = 0x2

.field static final TRANSACTION_getFristUseTime:I = 0x4

.field static final TRANSACTION_getScreenOnTime:I = 0x1

.field static final TRANSACTION_getTalkTime:I = 0x3

.field static final TRANSACTION_isDeviceActivated:I = 0xa

.field static final TRANSACTION_resetActivation:I = 0xc

.field static final TRANSACTION_setChargeTime:I = 0x7

.field static final TRANSACTION_setFristUseTime:I = 0x9

.field static final TRANSACTION_setOpenFlag:I = 0x5

.field static final TRANSACTION_setScreenOnTime:I = 0x6

.field static final TRANSACTION_setTalkTime:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "huawei.android.security.IHwDeviceUsagePlugin"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/IHwDeviceUsagePlugin;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "huawei.android.security.IHwDeviceUsagePlugin"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/IHwDeviceUsagePlugin;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/IHwDeviceUsagePlugin;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "huawei.android.security.IHwDeviceUsagePlugin"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 143
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->resetActivation()V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    return v2

    .line 134
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 137
    .local v3, "_arg0":J
    invoke-virtual {p0, v3, v4}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->detectActivationWithDuration(J)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    return v2

    .line 126
    .end local v3    # "_arg0":J
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->isDeviceActivated()Z

    move-result v1

    .line 128
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v2

    .line 117
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 120
    .restart local v3    # "_arg0":J
    invoke-virtual {p0, v3, v4}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->setFristUseTime(J)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v2

    .line 108
    .end local v3    # "_arg0":J
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 111
    .restart local v3    # "_arg0":J
    invoke-virtual {p0, v3, v4}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->setTalkTime(J)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v2

    .line 99
    .end local v3    # "_arg0":J
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 102
    .restart local v3    # "_arg0":J
    invoke-virtual {p0, v3, v4}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->setChargeTime(J)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v2

    .line 90
    .end local v3    # "_arg0":J
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 93
    .restart local v3    # "_arg0":J
    invoke-virtual {p0, v3, v4}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->setScreenOnTime(J)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    return v2

    .line 81
    .end local v3    # "_arg0":J
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->setOpenFlag(I)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    return v2

    .line 73
    .end local v1    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->getFristUseTime()J

    move-result-wide v3

    .line 75
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    return v2

    .line 65
    .end local v3    # "_result":J
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->getTalkTime()J

    move-result-wide v3

    .line 67
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    return v2

    .line 57
    .end local v3    # "_result":J
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->getChargeTime()J

    move-result-wide v3

    .line 59
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    return v2

    .line 49
    .end local v3    # "_result":J
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lhuawei/android/security/IHwDeviceUsagePlugin$Stub;->getScreenOnTime()J

    move-result-wide v3

    .line 51
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    return v2

    .line 44
    .end local v3    # "_result":J
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
