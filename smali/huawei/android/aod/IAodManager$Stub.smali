.class public abstract Lhuawei/android/aod/IAodManager$Stub;
.super Landroid/os/Binder;
.source "IAodManager.java"

# interfaces
.implements Lhuawei/android/aod/IAodManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/aod/IAodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/aod/IAodManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.aod.IAodManager"

.field static final TRANSACTION_beginUpdate:I = 0x8

.field static final TRANSACTION_endUpdate:I = 0x9

.field static final TRANSACTION_getDeviceNodeFD:I = 0xb

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_registerAodCallback:I = 0x1

.field static final TRANSACTION_restoreBacklightBrightnessByLcdFile:I = 0xd

.field static final TRANSACTION_resume:I = 0x7

.field static final TRANSACTION_setAodConfig:I = 0x3

.field static final TRANSACTION_setBacklight:I = 0xe

.field static final TRANSACTION_setBitmapByMemoryFile:I = 0xa

.field static final TRANSACTION_setPowerState:I = 0xc

.field static final TRANSACTION_start:I = 0x4

.field static final TRANSACTION_stop:I = 0x5

.field static final TRANSACTION_unRegisterAodCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "huawei.android.aod.IAodManager"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/aod/IAodManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/aod/IAodManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "huawei.android.aod.IAodManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/aod/IAodManager;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lhuawei/android/aod/IAodManager;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lhuawei/android/aod/IAodManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/aod/IAodManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "huawei.android.aod.IAodManager"

    .line 39
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 166
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/android/aod/IAodManager$Stub;->setBacklight(II)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    return v2

    .line 155
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 160
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lhuawei/android/aod/IAodManager$Stub;->restoreBacklightBrightnessByLcdFile(II)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    return v2

    .line 146
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lhuawei/android/aod/IAodManager$Stub;->setPowerState(I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    return v2

    .line 138
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lhuawei/android/aod/IAodManager$Stub;->getDeviceNodeFD()I

    move-result v1

    .line 140
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return v2

    .line 122
    .end local v1    # "_result":I
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 130
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_0
    nop

    .line 132
    .restart local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_0
    invoke-virtual {p0, v3, v1}, Lhuawei/android/aod/IAodManager$Stub;->setBitmapByMemoryFile(ILandroid/os/ParcelFileDescriptor;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v2

    .line 115
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_arg0":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lhuawei/android/aod/IAodManager$Stub;->endUpdate()V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v2

    .line 108
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lhuawei/android/aod/IAodManager$Stub;->beginUpdate()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v2

    .line 101
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lhuawei/android/aod/IAodManager$Stub;->resume()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v2

    .line 94
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lhuawei/android/aod/IAodManager$Stub;->pause()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v2

    .line 87
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lhuawei/android/aod/IAodManager$Stub;->stop()V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v2

    .line 80
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lhuawei/android/aod/IAodManager$Stub;->start()V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v2

    .line 66
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    sget-object v1, Lhuawei/android/aod/AodConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhuawei/android/aod/AodConfigInfo;

    .local v1, "_arg0":Lhuawei/android/aod/AodConfigInfo;
    goto :goto_1

    .line 72
    .end local v1    # "_arg0":Lhuawei/android/aod/AodConfigInfo;
    :cond_1
    nop

    .line 74
    .restart local v1    # "_arg0":Lhuawei/android/aod/AodConfigInfo;
    :goto_1
    invoke-virtual {p0, v1}, Lhuawei/android/aod/IAodManager$Stub;->setAodConfig(Lhuawei/android/aod/AodConfigInfo;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v2

    .line 57
    .end local v1    # "_arg0":Lhuawei/android/aod/AodConfigInfo;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/aod/IAodCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/aod/IAodCallback;

    move-result-object v1

    .line 60
    .local v1, "_arg0":Lhuawei/android/aod/IAodCallback;
    invoke-virtual {p0, v1}, Lhuawei/android/aod/IAodManager$Stub;->unRegisterAodCallback(Lhuawei/android/aod/IAodCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    return v2

    .line 48
    .end local v1    # "_arg0":Lhuawei/android/aod/IAodCallback;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lhuawei/android/aod/IAodCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/aod/IAodCallback;

    move-result-object v1

    .line 51
    .restart local v1    # "_arg0":Lhuawei/android/aod/IAodCallback;
    invoke-virtual {p0, v1}, Lhuawei/android/aod/IAodManager$Stub;->registerAodCallback(Lhuawei/android/aod/IAodCallback;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v2

    .line 43
    .end local v1    # "_arg0":Lhuawei/android/aod/IAodCallback;
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
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
