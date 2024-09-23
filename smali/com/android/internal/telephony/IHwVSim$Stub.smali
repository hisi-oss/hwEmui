.class public abstract Lcom/android/internal/telephony/IHwVSim$Stub;
.super Landroid/os/Binder;
.source "IHwVSim.java"

# interfaces
.implements Lcom/android/internal/telephony/IHwVSim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IHwVSim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHwVSim$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IHwVSim"

.field static final TRANSACTION_clearTrafficData:I = 0xb

.field static final TRANSACTION_dialupForVSim:I = 0x1f

.field static final TRANSACTION_disableVSim:I = 0x5

.field static final TRANSACTION_dsFlowCfg:I = 0xc

.field static final TRANSACTION_enableVSim:I = 0x4

.field static final TRANSACTION_enableVSimV2:I = 0x1e

.field static final TRANSACTION_enableVSimV3:I = 0x20

.field static final TRANSACTION_getCpserr:I = 0xe

.field static final TRANSACTION_getDevSubMode:I = 0x12

.field static final TRANSACTION_getPlatformSupportVSimVer:I = 0x1d

.field static final TRANSACTION_getPreferredNetworkTypeForVSim:I = 0x13

.field static final TRANSACTION_getRegPlmn:I = 0x9

.field static final TRANSACTION_getSimMode:I = 0x7

.field static final TRANSACTION_getSimStateViaSysinfoEx:I = 0xd

.field static final TRANSACTION_getTrafficData:I = 0xa

.field static final TRANSACTION_getUserReservedSubId:I = 0x11

.field static final TRANSACTION_getVSimCurCardType:I = 0x14

.field static final TRANSACTION_getVSimNetworkType:I = 0x15

.field static final TRANSACTION_getVSimOccupiedSubId:I = 0x19

.field static final TRANSACTION_getVSimSubId:I = 0x2

.field static final TRANSACTION_getVSimSubscriberId:I = 0x16

.field static final TRANSACTION_getVSimULOnlyMode:I = 0x18

.field static final TRANSACTION_hasHardIccCardForVSim:I = 0x6

.field static final TRANSACTION_hasVSimIccCard:I = 0x1

.field static final TRANSACTION_isSupportVSimByOperation:I = 0x21

.field static final TRANSACTION_isVSimEnabled:I = 0x3

.field static final TRANSACTION_isVSimInProcess:I = 0x1a

.field static final TRANSACTION_isVSimOn:I = 0x1b

.field static final TRANSACTION_recoverSimMode:I = 0x8

.field static final TRANSACTION_scanVsimAvailableNetworks:I = 0xf

.field static final TRANSACTION_setUserReservedSubId:I = 0x10

.field static final TRANSACTION_setVSimULOnlyMode:I = 0x17

.field static final TRANSACTION_switchVSimWorkMode:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.IHwVSim"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IHwVSim;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.android.internal.telephony.IHwVSim"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IHwVSim;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IHwVSim;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IHwVSim$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IHwVSim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 38
    const-string v13, "com.android.internal.telephony.IHwVSim"

    .line 39
    .local v13, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_2

    packed-switch v10, :pswitch_data_0

    .line 384
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 374
    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 377
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->isSupportVSimByOperation(I)Z

    move-result v1

    .line 378
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    return v14

    .line 357
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 365
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    .line 367
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/IHwVSim$Stub;->enableVSimV3(ILandroid/os/Bundle;)I

    move-result v2

    .line 368
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    return v14

    .line 349
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->dialupForVSim()I

    move-result v0

    .line 351
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    return v14

    .line 325
    .end local v0    # "_result":I
    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 329
    .local v15, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 331
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 333
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 335
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 337
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 339
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 341
    .local v21, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 342
    .local v22, "_arg7":Ljava/lang/String;
    move-object v0, v9

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/IHwVSim$Stub;->enableVSimV2(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 343
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    return v14

    .line 315
    .end local v0    # "_result":I
    .end local v15    # "_arg0":I
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":I
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Ljava/lang/String;
    .end local v21    # "_arg6":I
    .end local v22    # "_arg7":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getPlatformSupportVSimVer(I)I

    move-result v1

    .line 319
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    return v14

    .line 305
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 308
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->switchVSimWorkMode(I)Z

    move-result v1

    .line 309
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    return v14

    .line 297
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->isVSimOn()Z

    move-result v0

    .line 299
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    return v14

    .line 289
    .end local v0    # "_result":Z
    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->isVSimInProcess()Z

    move-result v0

    .line 291
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return v14

    .line 281
    .end local v0    # "_result":Z
    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getVSimOccupiedSubId()I

    move-result v0

    .line 283
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    return v14

    .line 273
    .end local v0    # "_result":I
    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getVSimULOnlyMode()Z

    move-result v0

    .line 275
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    return v14

    .line 263
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v14

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 266
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->setVSimULOnlyMode(Z)Z

    move-result v1

    .line 267
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    return v14

    .line 255
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getVSimSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    return v14

    .line 247
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getVSimNetworkType()I

    move-result v0

    .line 249
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    return v14

    .line 239
    .end local v0    # "_result":I
    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getVSimCurCardType()I

    move-result v0

    .line 241
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return v14

    .line 229
    .end local v0    # "_result":I
    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getPreferredNetworkTypeForVSim(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    return v14

    .line 219
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getDevSubMode(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    .restart local v1    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    return v14

    .line 211
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getUserReservedSubId()I

    move-result v0

    .line 213
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return v14

    .line 201
    .end local v0    # "_result":I
    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->setUserReservedSubId(I)Z

    move-result v1

    .line 205
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    return v14

    .line 189
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 194
    .local v1, "_arg1":I
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/IHwVSim$Stub;->scanVsimAvailableNetworks(II)I

    move-result v2

    .line 195
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return v14

    .line 179
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getCpserr(I)I

    move-result v1

    .line 183
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    return v14

    .line 169
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getSimStateViaSysinfoEx(I)I

    move-result v1

    .line 173
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return v14

    .line 153
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .local v3, "_arg3":I
    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/IHwVSim$Stub;->dsFlowCfg(IIII)Z

    move-result v4

    .line 163
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return v14

    .line 145
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->clearTrafficData()Z

    move-result v0

    .line 147
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v14

    .line 137
    .end local v0    # "_result":Z
    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getTrafficData()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v14

    .line 127
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getRegPlmn(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v14

    .line 120
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->recoverSimMode()V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v14

    .line 110
    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getSimMode(I)I

    move-result v1

    .line 114
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return v14

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/IHwVSim$Stub;->hasHardIccCardForVSim(I)Z

    move-result v1

    .line 104
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v14

    .line 92
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->disableVSim()Z

    move-result v0

    .line 94
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return v14

    .line 72
    .end local v0    # "_result":Z
    :pswitch_1d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 76
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 80
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 82
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 84
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 85
    .local v18, "_arg5":Ljava/lang/String;
    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IHwVSim$Stub;->enableVSim(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v14

    .line 64
    .end local v0    # "_result":I
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->isVSimEnabled()Z

    move-result v0

    .line 66
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    return v14

    .line 56
    .end local v0    # "_result":Z
    :pswitch_1f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->getVSimSubId()I

    move-result v0

    .line 58
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v14

    .line 48
    .end local v0    # "_result":I
    :pswitch_20
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IHwVSim$Stub;->hasVSimIccCard()Z

    move-result v0

    .line 50
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return v14

    .line 43
    .end local v0    # "_result":Z
    :cond_2
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
