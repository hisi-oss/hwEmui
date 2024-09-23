.class public abstract Landroid/app/mtm/IMultiTaskManagerService$Stub;
.super Landroid/os/Binder;
.source "IMultiTaskManagerService.java"

# interfaces
.implements Landroid/app/mtm/IMultiTaskManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/mtm/IMultiTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/mtm/IMultiTaskManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.mtm.IMultiTaskManagerService"

.field static final TRANSACTION_acquirePolicyData:I = 0xa

.field static final TRANSACTION_forcestopApps:I = 0x8

.field static final TRANSACTION_killProcess:I = 0x4

.field static final TRANSACTION_notifyProcessDiedChange:I = 0x7

.field static final TRANSACTION_notifyProcessGroupChange:I = 0x5

.field static final TRANSACTION_notifyProcessStatusChange:I = 0x6

.field static final TRANSACTION_notifyResourceStatusOverload:I = 0x3

.field static final TRANSACTION_registerObserver:I = 0x1

.field static final TRANSACTION_removeAppStartupSetting:I = 0xe

.field static final TRANSACTION_reportScene:I = 0x9

.field static final TRANSACTION_requestAppCleanWithCallback:I = 0x10

.field static final TRANSACTION_retrieveAppStartupPackages:I = 0xc

.field static final TRANSACTION_retrieveAppStartupSettings:I = 0xb

.field static final TRANSACTION_unregisterObserver:I = 0x2

.field static final TRANSACTION_updateAppStartupSettings:I = 0xd

.field static final TRANSACTION_updateCloudPolicy:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.mtm.IMultiTaskManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/mtm/IMultiTaskManagerService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "android.app.mtm.IMultiTaskManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/mtm/IMultiTaskManagerService;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Landroid/app/mtm/IMultiTaskManagerService;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Landroid/app/mtm/IMultiTaskManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/mtm/IMultiTaskManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
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

    .line 41
    const-string v10, "android.app.mtm.IMultiTaskManagerService"

    .line 42
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    .line 270
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 255
    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, Landroid/app/mtm/iaware/appmng/AppCleanParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/mtm/iaware/appmng/AppCleanParam;

    .local v1, "_arg0":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    goto :goto_0

    .line 261
    .end local v1    # "_arg0":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    :cond_0
    nop

    .restart local v1    # "_arg0":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    :goto_0
    move-object v0, v1

    .line 264
    .end local v1    # "_arg0":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    .local v0, "_arg0":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/mtm/iaware/appmng/IAppCleanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/mtm/iaware/appmng/IAppCleanCallback;

    move-result-object v1

    .line 265
    .local v1, "_arg1":Landroid/app/mtm/iaware/appmng/IAppCleanCallback;
    invoke-virtual {v6, v0, v1}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->requestAppCleanWithCallback(Landroid/app/mtm/iaware/appmng/AppCleanParam;Landroid/app/mtm/iaware/appmng/IAppCleanCallback;)V

    .line 266
    return v11

    .line 245
    .end local v0    # "_arg0":Landroid/app/mtm/iaware/appmng/AppCleanParam;
    .end local v1    # "_arg1":Landroid/app/mtm/iaware/appmng/IAppCleanCallback;
    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->updateCloudPolicy(Ljava/lang/String;)Z

    move-result v1

    .line 249
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    return v11

    .line 235
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->removeAppStartupSetting(Ljava/lang/String;)Z

    move-result v1

    .line 239
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    return v11

    .line 223
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    sget-object v1, Landroid/app/mtm/iaware/HwAppStartupSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 227
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/mtm/iaware/HwAppStartupSetting;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v11

    nop

    .line 228
    .local v0, "_arg1":Z
    :cond_1
    invoke-virtual {v6, v1, v0}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->updateAppStartupSettings(Ljava/util/List;Z)Z

    move-result v2

    .line 229
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return v11

    .line 207
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/mtm/iaware/HwAppStartupSetting;>;"
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 213
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 215
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 216
    .local v3, "_arg3":[I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->retrieveAppStartupPackages(Ljava/util/List;[I[I[I)Ljava/util/List;

    move-result-object v4

    .line 217
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 219
    return v11

    .line 190
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":[I
    .end local v2    # "_arg2":[I
    .end local v3    # "_arg3":[I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 194
    .restart local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    sget-object v1, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/mtm/iaware/HwAppStartupSettingFilter;

    .local v1, "_arg1":Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    goto :goto_1

    .line 198
    .end local v1    # "_arg1":Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    :cond_2
    nop

    .line 200
    .restart local v1    # "_arg1":Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    :goto_1
    invoke-virtual {v6, v0, v1}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->retrieveAppStartupSettings(Ljava/util/List;Landroid/app/mtm/iaware/HwAppStartupSettingFilter;)Ljava/util/List;

    move-result-object v2

    .line 201
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/mtm/iaware/HwAppStartupSetting;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 203
    return v11

    .line 167
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Landroid/app/mtm/iaware/HwAppStartupSettingFilter;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/mtm/iaware/HwAppStartupSetting;>;"
    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    sget-object v1, Landroid/app/mtm/iaware/RSceneData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/mtm/iaware/RSceneData;

    .local v1, "_arg1":Landroid/app/mtm/iaware/RSceneData;
    goto :goto_2

    .line 175
    .end local v1    # "_arg1":Landroid/app/mtm/iaware/RSceneData;
    :cond_3
    nop

    .line 177
    .restart local v1    # "_arg1":Landroid/app/mtm/iaware/RSceneData;
    :goto_2
    invoke-virtual {v6, v2, v1}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->acquirePolicyData(ILandroid/app/mtm/iaware/RSceneData;)Landroid/rms/iaware/RPolicyData;

    move-result-object v3

    .line 178
    .local v3, "_result":Landroid/rms/iaware/RPolicyData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v3, :cond_4

    .line 180
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {v3, v9, v11}, Landroid/rms/iaware/RPolicyData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 184
    :cond_4
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    :goto_3
    return v11

    .line 150
    .end local v1    # "_arg1":Landroid/app/mtm/iaware/RSceneData;
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/rms/iaware/RPolicyData;
    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    sget-object v1, Landroid/app/mtm/iaware/RSceneData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/mtm/iaware/RSceneData;

    .restart local v1    # "_arg1":Landroid/app/mtm/iaware/RSceneData;
    goto :goto_4

    .line 158
    .end local v1    # "_arg1":Landroid/app/mtm/iaware/RSceneData;
    :cond_5
    nop

    .line 160
    .restart local v1    # "_arg1":Landroid/app/mtm/iaware/RSceneData;
    :goto_4
    invoke-virtual {v6, v0, v1}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->reportScene(ILandroid/app/mtm/iaware/RSceneData;)Z

    move-result v2

    .line 161
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    return v11

    .line 140
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/mtm/iaware/RSceneData;
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .restart local v0    # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->forcestopApps(I)Z

    move-result v1

    .line 144
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return v11

    .line 129
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->notifyProcessDiedChange(II)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v11

    .line 112
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 116
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 120
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 122
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 123
    .local v16, "_arg4":I
    move-object v0, v6

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->notifyProcessStatusChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    return v11

    .line 101
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->notifyProcessGroupChange(II)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v11

    .line 89
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v11

    nop

    .line 94
    .local v0, "_arg1":Z
    :cond_6
    invoke-virtual {v6, v1, v0}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->killProcess(IZ)Z

    move-result v2

    .line 95
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return v11

    .line 69
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    .line 78
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .local v1, "_arg3":Landroid/os/Bundle;
    goto :goto_5

    .line 81
    .end local v1    # "_arg3":Landroid/os/Bundle;
    :cond_7
    nop

    .line 83
    .restart local v1    # "_arg3":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {v6, v0, v2, v3, v1}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->notifyResourceStatusOverload(ILjava/lang/String;ILandroid/os/Bundle;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    return v11

    .line 60
    .end local v0    # "_arg0":I
    .end local v1    # "_arg3":Landroid/os/Bundle;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    :pswitch_e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/mtm/IMultiTaskProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/mtm/IMultiTaskProcessObserver;

    move-result-object v0

    .line 63
    .local v0, "_arg0":Landroid/app/mtm/IMultiTaskProcessObserver;
    invoke-virtual {v6, v0}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->unregisterObserver(Landroid/app/mtm/IMultiTaskProcessObserver;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v11

    .line 51
    .end local v0    # "_arg0":Landroid/app/mtm/IMultiTaskProcessObserver;
    :pswitch_f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/mtm/IMultiTaskProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/mtm/IMultiTaskProcessObserver;

    move-result-object v0

    .line 54
    .restart local v0    # "_arg0":Landroid/app/mtm/IMultiTaskProcessObserver;
    invoke-virtual {v6, v0}, Landroid/app/mtm/IMultiTaskManagerService$Stub;->registerObserver(Landroid/app/mtm/IMultiTaskProcessObserver;)V

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    return v11

    .line 46
    .end local v0    # "_arg0":Landroid/app/mtm/IMultiTaskProcessObserver;
    :cond_8
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
