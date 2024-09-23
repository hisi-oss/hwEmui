.class public abstract Landroid/hishow/IHwHiShowManager$Stub;
.super Landroid/os/Binder;
.source "IHwHiShowManager.java"

# interfaces
.implements Landroid/hishow/IHwHiShowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hishow/IHwHiShowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hishow/IHwHiShowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hishow.IHwHiShowManager"

.field static final TRANSACTION_addNewAlarm:I = 0xb

.field static final TRANSACTION_cancelActivityController:I = 0x12

.field static final TRANSACTION_closeCurrentAlarm:I = 0xe

.field static final TRANSACTION_controlAlarm:I = 0xd

.field static final TRANSACTION_controlFloatButton:I = 0x5

.field static final TRANSACTION_controlHomeButton:I = 0x3

.field static final TRANSACTION_controlRecentButton:I = 0x4

.field static final TRANSACTION_controlStatusBar:I = 0x2

.field static final TRANSACTION_deleteAlarm:I = 0xc

.field static final TRANSACTION_lightOffScreen:I = 0x9

.field static final TRANSACTION_lockScreen:I = 0x1

.field static final TRANSACTION_queryAllAlarmInfo:I = 0xa

.field static final TRANSACTION_requestSpecialInfo:I = 0x13

.field static final TRANSACTION_restorePreLauncher:I = 0x10

.field static final TRANSACTION_setActivityController:I = 0x11

.field static final TRANSACTION_setAsDefaultLauncher:I = 0xf

.field static final TRANSACTION_startToCharge:I = 0x7

.field static final TRANSACTION_stopCharging:I = 0x8

.field static final TRANSACTION_switchDisturb:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hishow.IHwHiShowManager"

    invoke-virtual {p0, p0, v0}, Landroid/hishow/IHwHiShowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hishow/IHwHiShowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.hishow.IHwHiShowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hishow/IHwHiShowManager;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/hishow/IHwHiShowManager;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/hishow/IHwHiShowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hishow/IHwHiShowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const-string v0, "android.hishow.IHwHiShowManager"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 216
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->requestSpecialInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    return v2

    .line 209
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/hishow/IHwHiShowManager$Stub;->cancelActivityController()V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    return v2

    .line 194
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 200
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 202
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 203
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hishow/IHwHiShowManager$Stub;->setActivityController(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    return v2

    .line 186
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/hishow/IHwHiShowManager$Stub;->restorePreLauncher()Z

    move-result v1

    .line 188
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return v2

    .line 174
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/hishow/IHwHiShowManager$Stub;->setAsDefaultLauncher(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 180
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return v2

    .line 167
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/hishow/IHwHiShowManager$Stub;->closeCurrentAlarm()V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    return v2

    .line 157
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 160
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->controlAlarm(Z)Z

    move-result v3

    .line 161
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    return v2

    .line 147
    .end local v1    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->deleteAlarm(I)Z

    move-result v3

    .line 151
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return v2

    .line 132
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    sget-object v1, Landroid/hishow/AlarmInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hishow/AlarmInfo;

    .local v1, "_arg0":Landroid/hishow/AlarmInfo;
    goto :goto_0

    .line 138
    .end local v1    # "_arg0":Landroid/hishow/AlarmInfo;
    :cond_1
    const/4 v1, 0x0

    .line 140
    .restart local v1    # "_arg0":Landroid/hishow/AlarmInfo;
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->addNewAlarm(Landroid/hishow/AlarmInfo;)I

    move-result v3

    .line 141
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return v2

    .line 124
    .end local v1    # "_arg0":Landroid/hishow/AlarmInfo;
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/hishow/IHwHiShowManager$Stub;->queryAllAlarmInfo()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hishow/AlarmInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 128
    return v2

    .line 115
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hishow/AlarmInfo;>;"
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->lightOffScreen(I)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    return v2

    .line 108
    .end local v1    # "_arg0":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/hishow/IHwHiShowManager$Stub;->stopCharging()V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v2

    .line 101
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/hishow/IHwHiShowManager$Stub;->startToCharge()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v2

    .line 92
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 95
    .local v1, "_arg0":Z
    :cond_2
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->switchDisturb(Z)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v2

    .line 83
    .end local v1    # "_arg0":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    .line 86
    .restart local v1    # "_arg0":Z
    :cond_3
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->controlFloatButton(Z)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v2

    .line 74
    .end local v1    # "_arg0":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    nop

    .line 77
    .restart local v1    # "_arg0":Z
    :cond_4
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->controlRecentButton(Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    return v2

    .line 65
    .end local v1    # "_arg0":Z
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    nop

    .line 68
    .restart local v1    # "_arg0":Z
    :cond_5
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->controlHomeButton(Z)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v2

    .line 56
    .end local v1    # "_arg0":Z
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    nop

    .line 59
    .restart local v1    # "_arg0":Z
    :cond_6
    invoke-virtual {p0, v1}, Landroid/hishow/IHwHiShowManager$Stub;->controlStatusBar(Z)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v2

    .line 49
    .end local v1    # "_arg0":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/hishow/IHwHiShowManager$Stub;->lockScreen()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    return v2

    .line 44
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
