.class public abstract Lhuawei/android/os/IHwAntiTheftManager$Stub;
.super Landroid/os/Binder;
.source "IHwAntiTheftManager.java"

# interfaces
.implements Lhuawei/android/os/IHwAntiTheftManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/os/IHwAntiTheftManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/os/IHwAntiTheftManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.os.IHwAntiTheftManager"

.field static final TRANSACTION_checkRootState:I = 0x7

.field static final TRANSACTION_getAntiTheftDataBlockSize:I = 0x4

.field static final TRANSACTION_getAntiTheftEnabled:I = 0x6

.field static final TRANSACTION_isAntiTheftSupported:I = 0x8

.field static final TRANSACTION_readAntiTheftData:I = 0x1

.field static final TRANSACTION_readAntiTheftDataWithType:I = 0x9

.field static final TRANSACTION_setAntiTheftEnabled:I = 0x5

.field static final TRANSACTION_wipeAntiTheftData:I = 0x2

.field static final TRANSACTION_wipeAntiTheftDataWithType:I = 0xa

.field static final TRANSACTION_writeAntiTheftData:I = 0x3

.field static final TRANSACTION_writeAntiTheftDataWithType:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "huawei.android.os.IHwAntiTheftManager"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/os/IHwAntiTheftManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "huawei.android.os.IHwAntiTheftManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/os/IHwAntiTheftManager;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lhuawei/android/os/IHwAntiTheftManager;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lhuawei/android/os/IHwAntiTheftManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/os/IHwAntiTheftManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
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

    .line 38
    const-string v0, "huawei.android.os.IHwAntiTheftManager"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 136
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 140
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->writeAntiTheftDataWithType([BI)I

    move-result v4

    .line 142
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return v2

    .line 126
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->wipeAntiTheftDataWithType(I)I

    move-result v3

    .line 130
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return v2

    .line 116
    .end local v1    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->readAntiTheftDataWithType(I)[B

    move-result-object v3

    .line 120
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 122
    return v2

    .line 108
    .end local v1    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->isAntiTheftSupported()Z

    move-result v1

    .line 110
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v2

    .line 100
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->checkRootState()Z

    move-result v1

    .line 102
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return v2

    .line 92
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->getAntiTheftEnabled()Z

    move-result v1

    .line 94
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v2

    .line 82
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 85
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->setAntiTheftEnabled(Z)I

    move-result v3

    .line 86
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v2

    .line 74
    .end local v1    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->getAntiTheftDataBlockSize()I

    move-result v1

    .line 76
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return v2

    .line 64
    .end local v1    # "_result":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 67
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->writeAntiTheftData([B)I

    move-result v3

    .line 68
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v2

    .line 56
    .end local v1    # "_arg0":[B
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->wipeAntiTheftData()I

    move-result v1

    .line 58
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v2

    .line 48
    .end local v1    # "_result":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lhuawei/android/os/IHwAntiTheftManager$Stub;->readAntiTheftData()[B

    move-result-object v1

    .line 50
    .local v1, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 52
    return v2

    .line 43
    .end local v1    # "_result":[B
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
