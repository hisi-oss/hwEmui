.class public abstract Lhuawei/android/pfw/IHwPFWManager$Stub;
.super Landroid/os/Binder;
.source "IHwPFWManager.java"

# interfaces
.implements Lhuawei/android/pfw/IHwPFWManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/pfw/IHwPFWManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/pfw/IHwPFWManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.pfw.IHwPFWManager"

.field static final TRANSACTION_appendExtStartupControlScope:I = 0x2

.field static final TRANSACTION_getStartupControlScope:I = 0x1

.field static final TRANSACTION_getStartupPackageList:I = 0x6

.field static final TRANSACTION_getTopAppInfo:I = 0x8

.field static final TRANSACTION_removeStartupSetting:I = 0x4

.field static final TRANSACTION_setPolicyEnabled:I = 0x5

.field static final TRANSACTION_setStartupPackageList:I = 0x7

.field static final TRANSACTION_updateStartupSettings:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "huawei.android.pfw.IHwPFWManager"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/pfw/IHwPFWManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/pfw/IHwPFWManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "huawei.android.pfw.IHwPFWManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/pfw/IHwPFWManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lhuawei/android/pfw/IHwPFWManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lhuawei/android/pfw/IHwPFWManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/pfw/IHwPFWManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "huawei.android.pfw.IHwPFWManager"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/pfw/IHwPFWManager$Stub;->getTopAppInfo(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v2

    .line 124
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    sget-object v1, Lhuawei/android/pfw/HwPFWStartupPackageList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/pfw/HwPFWStartupPackageList;

    .local v1, "_arg0":Lhuawei/android/pfw/HwPFWStartupPackageList;
    goto :goto_0

    .line 130
    .end local v1    # "_arg0":Lhuawei/android/pfw/HwPFWStartupPackageList;
    :cond_0
    nop

    .line 132
    .restart local v1    # "_arg0":Lhuawei/android/pfw/HwPFWStartupPackageList;
    :goto_0
    invoke-virtual {p0, v1}, Lhuawei/android/pfw/IHwPFWManager$Stub;->setStartupPackageList(Lhuawei/android/pfw/HwPFWStartupPackageList;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v2

    .line 108
    .end local v1    # "_arg0":Lhuawei/android/pfw/HwPFWStartupPackageList;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/pfw/IHwPFWManager$Stub;->getStartupPackageList(I)Lhuawei/android/pfw/HwPFWStartupPackageList;

    move-result-object v4

    .line 112
    .local v4, "_result":Lhuawei/android/pfw/HwPFWStartupPackageList;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v4, p3, v2}, Lhuawei/android/pfw/HwPFWStartupPackageList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    :goto_1
    return v2

    .line 97
    .end local v1    # "_arg0":I
    .end local v4    # "_result":Lhuawei/android/pfw/HwPFWStartupPackageList;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    nop

    .line 102
    .local v3, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v1, v3}, Lhuawei/android/pfw/IHwPFWManager$Stub;->setPolicyEnabled(IZ)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v2

    .line 88
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lhuawei/android/pfw/IHwPFWManager$Stub;->removeStartupSetting(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    return v2

    .line 77
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    sget-object v1, Lhuawei/android/pfw/HwPFWStartupSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/pfw/HwPFWStartupSetting;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v3, v2

    nop

    .line 82
    .restart local v3    # "_arg1":Z
    :cond_3
    invoke-virtual {p0, v1, v3}, Lhuawei/android/pfw/IHwPFWManager$Stub;->updateStartupSettings(Ljava/util/List;Z)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v2

    .line 63
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lhuawei/android/pfw/HwPFWStartupSetting;>;"
    .end local v3    # "_arg1":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    sget-object v1, Lhuawei/android/pfw/HwPFWStartupControlScope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/pfw/HwPFWStartupControlScope;

    .local v1, "_arg0":Lhuawei/android/pfw/HwPFWStartupControlScope;
    goto :goto_2

    .line 69
    .end local v1    # "_arg0":Lhuawei/android/pfw/HwPFWStartupControlScope;
    :cond_4
    nop

    .line 71
    .restart local v1    # "_arg0":Lhuawei/android/pfw/HwPFWStartupControlScope;
    :goto_2
    invoke-virtual {p0, v1}, Lhuawei/android/pfw/IHwPFWManager$Stub;->appendExtStartupControlScope(Lhuawei/android/pfw/HwPFWStartupControlScope;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v2

    .line 49
    .end local v1    # "_arg0":Lhuawei/android/pfw/HwPFWStartupControlScope;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lhuawei/android/pfw/IHwPFWManager$Stub;->getStartupControlScope()Lhuawei/android/pfw/HwPFWStartupControlScope;

    move-result-object v1

    .line 51
    .local v1, "_result":Lhuawei/android/pfw/HwPFWStartupControlScope;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v1, :cond_5

    .line 53
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v1, p3, v2}, Lhuawei/android/pfw/HwPFWStartupControlScope;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    :goto_3
    return v2

    .line 44
    .end local v1    # "_result":Lhuawei/android/pfw/HwPFWStartupControlScope;
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
