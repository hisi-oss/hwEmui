.class public abstract Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;
.super Landroid/os/Binder;
.source "IVoiceRecognizeService.java"

# interfaces
.implements Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "huawei.android.security.voicerecognition.IVoiceRecognizeService"

.field static final TRANSACTION_cancelEnroll:I = 0x2

.field static final TRANSACTION_continueEnroll:I = 0x10

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getEnrolledVoiceIdList:I = 0x7

.field static final TRANSACTION_getHeadsetStatus:I = 0xe

.field static final TRANSACTION_getHeadsetStatusByMac:I = 0x12

.field static final TRANSACTION_getRemainingNum:I = 0xb

.field static final TRANSACTION_getRemainingTime:I = 0xd

.field static final TRANSACTION_getTotalAuthFailedTimes:I = 0xc

.field static final TRANSACTION_getVoiceCommandList:I = 0x13

.field static final TRANSACTION_getVoiceEnrollStringList:I = 0xf

.field static final TRANSACTION_postEnroll:I = 0x9

.field static final TRANSACTION_preEnroll:I = 0x8

.field static final TRANSACTION_remove:I = 0x3

.field static final TRANSACTION_removeAll:I = 0x4

.field static final TRANSACTION_resetTimeout:I = 0xa

.field static final TRANSACTION_setAuthCallback:I = 0x5

.field static final TRANSACTION_setHeadsetStatusCallback:I = 0x6

.field static final TRANSACTION_startVoiceActivity:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "huawei.android.security.voicerecognition.IVoiceRecognizeService"

    invoke-virtual {p0, p0, v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "huawei.android.security.voicerecognition.IVoiceRecognizeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub$Proxy;

    invoke-direct {v1, p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 40
    const-string v11, "huawei.android.security.voicerecognition.IVoiceRecognizeService"

    .line 41
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v8, v0, :cond_1

    packed-switch v8, :pswitch_data_0

    .line 239
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 225
    :pswitch_0
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->getVoiceCommandList()Lhuawei/android/security/voicerecognition/VoiceCommandList;

    move-result-object v0

    .line 227
    .local v0, "_result":Lhuawei/android/security/voicerecognition/VoiceCommandList;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v0, v10, v12}, Lhuawei/android/security/voicerecognition/VoiceCommandList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 233
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    :goto_0
    return v12

    .line 215
    .end local v0    # "_result":Lhuawei/android/security/voicerecognition/VoiceCommandList;
    :pswitch_1
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v7, v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->getHeadsetStatusByMac(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    return v12

    .line 206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_2
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .local v0, "_arg0":I
    invoke-virtual {v7, v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->startVoiceActivity(I)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    return v12

    .line 199
    .end local v0    # "_arg0":I
    :pswitch_3
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->continueEnroll()V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    return v12

    .line 191
    :pswitch_4
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->getVoiceEnrollStringList()Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 195
    return v12

    .line 183
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->getHeadsetStatus()I

    move-result v0

    .line 185
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return v12

    .line 175
    .end local v0    # "_result":I
    :pswitch_6
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->getRemainingTime()J

    move-result-wide v0

    .line 177
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    return v12

    .line 167
    .end local v0    # "_result":J
    :pswitch_7
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->getTotalAuthFailedTimes()I

    move-result v0

    .line 169
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return v12

    .line 159
    .end local v0    # "_result":I
    :pswitch_8
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->getRemainingNum()I

    move-result v0

    .line 161
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    return v12

    .line 152
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->resetTimeout()V

    .line 154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    return v12

    .line 144
    :pswitch_a
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->postEnroll()I

    move-result v0

    .line 146
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return v12

    .line 136
    .end local v0    # "_result":I
    :pswitch_b
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->preEnroll()J

    move-result-wide v0

    .line 138
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    return v12

    .line 124
    .end local v0    # "_result":J
    :pswitch_c
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->getEnrolledVoiceIdList(ILjava/lang/String;)[I

    move-result-object v2

    .line 130
    .local v2, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 132
    return v12

    .line 115
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[I
    :pswitch_d
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;

    move-result-object v0

    .line 118
    .local v0, "_arg0":Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;
    invoke-virtual {v7, v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->setHeadsetStatusCallback(Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    return v12

    .line 106
    .end local v0    # "_arg0":Lhuawei/android/security/voicerecognition/IHeadsetStatusCallback;
    :pswitch_e
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/IVoiceAuthCallback$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;

    move-result-object v0

    .line 109
    .local v0, "_arg0":Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;
    invoke-virtual {v7, v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->setAuthCallback(Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v12

    .line 93
    .end local v0    # "_arg0":Lhuawei/android/security/voicerecognition/IVoiceAuthCallback;
    :pswitch_f
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 97
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;

    move-result-object v2

    .line 100
    .local v2, "_arg2":Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;
    invoke-virtual {v7, v0, v1, v2}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->removeAll(Landroid/os/IBinder;ILhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v12

    .line 78
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;
    :pswitch_10
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 84
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;

    move-result-object v3

    .line 87
    .local v3, "_arg3":Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;
    invoke-virtual {v7, v0, v1, v2, v3}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->remove(Landroid/os/IBinder;IILhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v12

    .line 69
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;
    :pswitch_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 72
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v7, v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->cancelEnroll(Landroid/os/IBinder;)V

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v12

    .line 50
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_12
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 54
    .local v13, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 56
    .local v14, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 58
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 60
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;

    move-result-object v17

    .line 62
    .local v17, "_arg4":Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 63
    .local v18, "_arg5":Ljava/lang/String;
    move-object v0, v7

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lhuawei/android/security/voicerecognition/IVoiceRecognizeService$Stub;->enroll(Landroid/os/IBinder;[BIILhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v12

    .line 45
    .end local v13    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_arg1":[B
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Lhuawei/android/security/voicerecognition/IVoiceRecognizeServiceReceiver;
    .end local v18    # "_arg5":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v12

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
