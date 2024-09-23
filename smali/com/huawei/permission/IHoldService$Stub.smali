.class public abstract Lcom/huawei/permission/IHoldService$Stub;
.super Landroid/os/Binder;
.source "IHoldService.java"

# interfaces
.implements Lcom/huawei/permission/IHoldService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/permission/IHoldService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/permission/IHoldService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.permission.IHoldService"

.field static final TRANSACTION_addRecord:I = 0x4

.field static final TRANSACTION_authenticateSmsSend:I = 0xb

.field static final TRANSACTION_callHsmService:I = 0x9

.field static final TRANSACTION_checkBeforeShowDialog:I = 0x6

.field static final TRANSACTION_checkBeforeShowDialogWithPid:I = 0x7

.field static final TRANSACTION_checkPreBlock:I = 0xa

.field static final TRANSACTION_checkSystemAppInternal:I = 0x2

.field static final TRANSACTION_getAlwaysForbiddenPerms:I = 0x14

.field static final TRANSACTION_getPendingIntent:I = 0x3

.field static final TRANSACTION_holdServiceByRequestPermission:I = 0x1

.field static final TRANSACTION_notifyBackgroundMgr:I = 0xc

.field static final TRANSACTION_queryAllMaliPkgs:I = 0xd

.field static final TRANSACTION_queryMaliAppInfoByPkg:I = 0xe

.field static final TRANSACTION_queryMaliAppInfoShort:I = 0xf

.field static final TRANSACTION_registMaliAppInfoListener:I = 0x10

.field static final TRANSACTION_releaseHoldService:I = 0x5

.field static final TRANSACTION_removeRuntimePermissions:I = 0x8

.field static final TRANSACTION_reportMaliInfoBean:I = 0x13

.field static final TRANSACTION_setRestrictStatus:I = 0x12

.field static final TRANSACTION_unregistMaliAppInfoListener:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.huawei.permission.IHoldService"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/permission/IHoldService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/permission/IHoldService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.huawei.permission.IHoldService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/permission/IHoldService;

    if-eqz v1, :cond_1

    .line 28
    move-object v1, v0

    check-cast v1, Lcom/huawei/permission/IHoldService;

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/huawei/permission/IHoldService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/huawei/permission/IHoldService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 38
    const-string v10, "com.huawei.permission.IHoldService"

    .line 39
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 322
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 314
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/permission/IHoldService$Stub;->getAlwaysForbiddenPerms()[Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 318
    return v11

    .line 303
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/huawei/permission/MaliInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 307
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/permission/MaliInfoBean;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v1, v11

    nop

    .line 308
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {v6, v0, v1}, Lcom/huawei/permission/IHoldService$Stub;->reportMaliInfoBean(Ljava/util/List;Z)V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    return v11

    .line 292
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/permission/MaliInfoBean;>;"
    .end local v1    # "_arg1":Z
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v11

    nop

    .line 297
    .restart local v1    # "_arg1":Z
    :cond_1
    invoke-virtual {v6, v0, v1}, Lcom/huawei/permission/IHoldService$Stub;->setRestrictStatus(Ljava/lang/String;Z)V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    return v11

    .line 283
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/huawei/permission/IHoldService$Stub;->unregistMaliAppInfoListener(I)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    return v11

    .line 268
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/permission/IHsmMaliAppInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/permission/IHsmMaliAppInfoListener;

    move-result-object v0

    .line 272
    .local v0, "_arg0":Lcom/huawei/permission/IHsmMaliAppInfoListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/huawei/permission/IHoldService$Stub;->registMaliAppInfoListener(Lcom/huawei/permission/IHsmMaliAppInfoListener;III)V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    return v11

    .line 258
    .end local v0    # "_arg0":Lcom/huawei/permission/IHsmMaliAppInfoListener;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/huawei/permission/IHoldService$Stub;->queryMaliAppInfoShort(I)Ljava/util/List;

    move-result-object v1

    .line 262
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/permission/MaliInfoBean;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 264
    return v11

    .line 246
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/permission/MaliInfoBean;>;"
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/huawei/permission/IHoldService$Stub;->queryMaliAppInfoByPkg(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 252
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/permission/MaliInfoBean;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 254
    return v11

    .line 238
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/huawei/permission/MaliInfoBean;>;"
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/permission/IHoldService$Stub;->queryAllMaliPkgs()Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 242
    return v11

    .line 223
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 229
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 231
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 232
    .restart local v3    # "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/huawei/permission/IHoldService$Stub;->notifyBackgroundMgr(Ljava/lang/String;III)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    return v11

    .line 206
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 210
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 212
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 214
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 216
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 217
    .local v16, "_arg4":Ljava/lang/String;
    move-object v0, v6

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/permission/IHoldService$Stub;->authenticateSmsSend(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    return v11

    .line 192
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v11

    nop

    .line 199
    .local v1, "_arg2":Z
    :cond_2
    invoke-virtual {v6, v0, v2, v1}, Lcom/huawei/permission/IHoldService$Stub;->checkPreBlock(IIZ)Z

    move-result v3

    .line 200
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return v11

    .line 169
    .end local v0    # "_arg0":I
    .end local v1    # "_arg2":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    .line 177
    .end local v0    # "_arg1":Landroid/os/Bundle;
    :cond_3
    nop

    .line 179
    .restart local v0    # "_arg1":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v6, v2, v0}, Lcom/huawei/permission/IHoldService$Stub;->callHsmService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 180
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v3, :cond_4

    .line 182
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 186
    :cond_4
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    :goto_1
    return v11

    .line 160
    .end local v0    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/huawei/permission/IHoldService$Stub;->removeRuntimePermissions(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v11

    .line 144
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/huawei/permission/IHoldService$Stub;->checkBeforeShowDialogWithPid(IIILjava/lang/String;)I

    move-result v4

    .line 154
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return v11

    .line 130
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 136
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/huawei/permission/IHoldService$Stub;->checkBeforeShowDialog(IILjava/lang/String;)I

    move-result v3

    .line 138
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return v11

    .line 116
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/huawei/permission/IHoldService$Stub;->releaseHoldService(III)I

    move-result v3

    .line 124
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v11

    .line 101
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v1, v11

    nop

    .line 110
    .local v1, "_arg3":Z
    :cond_5
    invoke-virtual {v6, v0, v2, v3, v1}, Lcom/huawei/permission/IHoldService$Stub;->addRecord(IIIZ)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v11

    .line 76
    .end local v0    # "_arg0":I
    .end local v1    # "_arg3":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 81
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .local v0, "_arg1":Landroid/content/Intent;
    goto :goto_2

    .line 84
    .end local v0    # "_arg1":Landroid/content/Intent;
    :cond_6
    nop

    .line 87
    .restart local v0    # "_arg1":Landroid/content/Intent;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .restart local v3    # "_arg2":I
    invoke-virtual {v6, v2, v0, v3}, Lcom/huawei/permission/IHoldService$Stub;->getPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 89
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v4, :cond_7

    .line 91
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-virtual {v4, v9, v11}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 95
    :cond_7
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    :goto_3
    return v11

    .line 64
    .end local v0    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg0":I
    .end local v3    # "_arg2":I
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :pswitch_12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v1, v11

    nop

    .line 69
    .local v1, "_arg1":Z
    :cond_8
    invoke-virtual {v6, v0, v1}, Lcom/huawei/permission/IHoldService$Stub;->checkSystemAppInternal(IZ)Z

    move-result v2

    .line 70
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    return v11

    .line 48
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/huawei/permission/IHoldService$Stub;->holdServiceByRequestPermission(IIILjava/lang/String;)I

    move-result v4

    .line 58
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v11

    .line 43
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :cond_9
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
