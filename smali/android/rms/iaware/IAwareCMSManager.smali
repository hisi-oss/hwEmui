.class public Landroid/rms/iaware/IAwareCMSManager;
.super Ljava/lang/Object;
.source "IAwareCMSManager.java"


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.rms.iaware.ICMSManager"

.field private static final TRANSACTION_configUpdate:I = 0x1

.field private static final TRANSACTION_custConfigUpdate:I = 0x12

.field private static final TRANSACTION_deleteAppCmpTypeInfo:I = 0x11

.field private static final TRANSACTION_deleteCmpTypeInfo:I = 0xf

.field private static final TRANSACTION_disableFeature:I = 0x3

.field private static final TRANSACTION_enableFeature:I = 0x2

.field private static final TRANSACTION_getAllAppTypeInfo:I = 0xb

.field private static final TRANSACTION_getAppPreloadList:I = 0xc

.field private static final TRANSACTION_getAppTypeInfo:I = 0xa

.field private static final TRANSACTION_getCmpTypeList:I = 0x10

.field private static final TRANSACTION_getConfig:I = 0x6

.field private static final TRANSACTION_getCustConfig:I = 0xd

.field private static final TRANSACTION_getDeviceLevel:I = 0x1b

.field private static final TRANSACTION_getDumpData:I = 0x7

.field private static final TRANSACTION_getGameMode:I = 0x15

.field private static final TRANSACTION_getInstalledGameList:I = 0x13

.field private static final TRANSACTION_getStatisticsData:I = 0x8

.field private static final TRANSACTION_getZipFiles:I = 0x9

.field private static final TRANSACTION_insertCmpTypeInfo:I = 0xe

.field private static final TRANSACTION_isAppRecognizedGame:I = 0x14

.field private static final TRANSACTION_isFeatureEnabled:I = 0x4

.field private static final TRANSACTION_isIAwareEnabled:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAppCmpTypeInfo(Landroid/os/IBinder;ILjava/lang/String;)Z
    .locals 4
    .param p0, "remote"    # Landroid/os/IBinder;
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 243
    return v0

    .line 246
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 247
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 251
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.rms.iaware.ICMSManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    const/16 v3, 0x11

    invoke-interface {p0, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 255
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 256
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    nop

    .line 260
    .local v0, "result":Z
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    nop

    .line 261
    nop

    .line 264
    return v0

    .line 260
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public static deleteCmpTypeInfo(Landroid/os/IBinder;Landroid/rms/iaware/CmpTypeInfo;)Z
    .locals 5
    .param p0, "remote"    # Landroid/os/IBinder;
    .param p1, "info"    # Landroid/rms/iaware/CmpTypeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 189
    return v0

    .line 192
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 197
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.rms.iaware.ICMSManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 199
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    invoke-virtual {p1, v1, v0}, Landroid/rms/iaware/CmpTypeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    :goto_0
    const/16 v4, 0xf

    invoke-interface {p0, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 205
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 206
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    move v0, v3

    nop

    .line 210
    .local v0, "result":Z
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 212
    nop

    .line 211
    nop

    .line 214
    return v0

    .line 210
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public static getAllAppTypeInfo(Landroid/os/IBinder;)Ljava/util/List;
    .locals 5
    .param p0, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/List<",
            "Landroid/rms/iaware/AppTypeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 138
    return-object v0

    .line 140
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 141
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 142
    .local v2, "reply":Landroid/os/Parcel;
    nop

    .line 144
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/AppTypeInfo;>;"
    :try_start_0
    const-string v3, "android.rms.iaware.ICMSManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {p0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 146
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 147
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    sget-object v3, Landroid/rms/iaware/AppTypeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 151
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 153
    nop

    .line 154
    return-object v0

    .line 151
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public static getCmpTypeList(Landroid/os/IBinder;)Ljava/util/List;
    .locals 4
    .param p0, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/List<",
            "Landroid/rms/iaware/CmpTypeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    if-nez p0, :cond_0

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 227
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.rms.iaware.ICMSManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 228
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 230
    sget-object v2, Landroid/rms/iaware/CmpTypeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/CmpTypeInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    nop

    .line 235
    nop

    .line 238
    return-object v2

    .line 234
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/rms/iaware/CmpTypeInfo;>;"
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .end local v2    # "exception":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public static getConfig(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Landroid/rms/iaware/AwareConfig;
    .locals 5
    .param p0, "remote"    # Landroid/os/IBinder;
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "configName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 84
    return-object v0

    .line 87
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 89
    .local v2, "reply":Landroid/os/Parcel;
    nop

    .line 91
    .local v0, "result":Landroid/rms/iaware/AwareConfig;
    :try_start_0
    const-string v3, "android.rms.iaware.ICMSManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {p0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 95
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 96
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    sget-object v3, Landroid/rms/iaware/AwareConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/rms/iaware/AwareConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 102
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    nop

    .line 106
    return-object v0

    .line 102
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 99
    :catch_0
    move-exception v3

    .line 100
    .local v3, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v3    # "exception":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public static getCustConfig(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Landroid/rms/iaware/AwareConfig;
    .locals 5
    .param p0, "remote"    # Landroid/os/IBinder;
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "configName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 111
    return-object v0

    .line 114
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 115
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 116
    .local v2, "reply":Landroid/os/Parcel;
    nop

    .line 118
    .local v0, "result":Landroid/rms/iaware/AwareConfig;
    :try_start_0
    const-string v3, "android.rms.iaware.ICMSManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {p0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 122
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 123
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    sget-object v3, Landroid/rms/iaware/AwareConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/rms/iaware/AwareConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 129
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    nop

    .line 133
    return-object v0

    .line 129
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v3    # "exception":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public static getDeviceLevel(Landroid/os/IBinder;)I
    .locals 4
    .param p0, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    if-nez p0, :cond_0

    .line 314
    const/4 v0, -0x1

    return v0

    .line 316
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 317
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 321
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.rms.iaware.ICMSManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 323
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    nop

    .line 329
    nop

    .line 331
    return v2

    .line 328
    .end local v2    # "result":I
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v2    # "exception":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public static getICMSManager()Landroid/os/IBinder;
    .locals 1

    .line 56
    const-string v0, "IAwareCMSService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledGameList(Landroid/os/IBinder;)Ljava/util/List;
    .locals 4
    .param p0, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    if-nez p0, :cond_0

    .line 269
    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 275
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.rms.iaware.ICMSManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    nop

    .line 283
    nop

    .line 286
    return-object v2

    .line 282
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v2    # "exception":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public static insertCmpTypeInfo(Landroid/os/IBinder;Landroid/rms/iaware/CmpTypeInfo;)Z
    .locals 5
    .param p0, "remote"    # Landroid/os/IBinder;
    .param p1, "info"    # Landroid/rms/iaware/CmpTypeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 159
    return v0

    .line 162
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 163
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 167
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.rms.iaware.ICMSManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {p1, v1, v0}, Landroid/rms/iaware/CmpTypeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    :goto_0
    const/16 v4, 0xe

    invoke-interface {p0, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 175
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 176
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    move v0, v3

    nop

    .line 180
    .local v0, "result":Z
    :cond_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    nop

    .line 181
    nop

    .line 184
    return v0

    .line 180
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public static isAppRecognizedGame(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 4
    .param p0, "remote"    # Landroid/os/IBinder;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 291
    return v0

    .line 293
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 294
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 298
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.rms.iaware.ICMSManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    const/16 v3, 0x14

    invoke-interface {p0, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 300
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 301
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    nop

    .line 305
    .local v0, "result":Z
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 307
    nop

    .line 306
    nop

    .line 309
    return v0

    .line 305
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public static isIAwareEnabled(Landroid/os/IBinder;)Z
    .locals 5
    .param p0, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 61
    return v0

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 65
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 66
    .local v2, "reply":Landroid/os/Parcel;
    move v3, v0

    .line 68
    .local v3, "result":Z
    :try_start_0
    const-string v4, "android.rms.iaware.ICMSManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 69
    const/4 v4, 0x5

    invoke-interface {p0, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 70
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 71
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    nop

    .line 75
    .end local v3    # "result":Z
    .local v0, "result":Z
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 76
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 77
    nop

    .line 79
    return v0

    .line 75
    .end local v0    # "result":Z
    .restart local v3    # "result":Z
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "exception":Landroid/os/RemoteException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 76
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
