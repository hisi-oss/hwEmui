.class public abstract Lhuawei/cust/aidl/IHwCarrierConfigService$Stub;
.super Landroid/os/Binder;
.source "IHwCarrierConfigService.java"

# interfaces
.implements Lhuawei/cust/aidl/IHwCarrierConfigService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/cust/aidl/IHwCarrierConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/cust/aidl/IHwCarrierConfigService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.cust.aidl.IHwCarrierConfigService"

.field static final TRANSACTION_getConfigForSlotId:I = 0x4

.field static final TRANSACTION_getOpKey:I = 0x3

.field static final TRANSACTION_querySimMatchRule:I = 0x1

.field static final TRANSACTION_updateSimFileInfo:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "huawei.cust.aidl.IHwCarrierConfigService"

    invoke-virtual {p0, p0, v0}, Lhuawei/cust/aidl/IHwCarrierConfigService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/cust/aidl/IHwCarrierConfigService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "huawei.cust.aidl.IHwCarrierConfigService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/cust/aidl/IHwCarrierConfigService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lhuawei/cust/aidl/IHwCarrierConfigService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lhuawei/cust/aidl/IHwCarrierConfigService$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/cust/aidl/IHwCarrierConfigService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const-string v0, "huawei.cust.aidl.IHwCarrierConfigService"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 96
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 101
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/cust/aidl/IHwCarrierConfigService$Stub;->getConfigForSlotId(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4

    .line 102
    .local v4, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 104
    return v2

    .line 86
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/Map;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/cust/aidl/IHwCarrierConfigService$Stub;->getOpKey(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v2

    .line 70
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lhuawei/cust/aidl/SimFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/cust/aidl/SimFileInfo;

    .local v1, "_arg0":Lhuawei/cust/aidl/SimFileInfo;
    goto :goto_0

    .line 76
    .end local v1    # "_arg0":Lhuawei/cust/aidl/SimFileInfo;
    :cond_0
    const/4 v1, 0x0

    .line 79
    .restart local v1    # "_arg0":Lhuawei/cust/aidl/SimFileInfo;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 80
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/cust/aidl/IHwCarrierConfigService$Stub;->updateSimFileInfo(Lhuawei/cust/aidl/SimFileInfo;I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v2

    .line 48
    .end local v1    # "_arg0":Lhuawei/cust/aidl/SimFileInfo;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 57
    .local v5, "_arg3":I
    invoke-virtual {p0, v1, v3, v4, v5}, Lhuawei/cust/aidl/IHwCarrierConfigService$Stub;->querySimMatchRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lhuawei/cust/aidl/SimMatchRule;

    move-result-object v6

    .line 58
    .local v6, "_result":Lhuawei/cust/aidl/SimMatchRule;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v6, :cond_1

    .line 60
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v6, p3, v2}, Lhuawei/cust/aidl/SimMatchRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 64
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    :goto_1
    return v2

    .line 43
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Lhuawei/cust/aidl/SimMatchRule;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
