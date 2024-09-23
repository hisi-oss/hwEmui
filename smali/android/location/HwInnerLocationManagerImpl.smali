.class public Landroid/location/HwInnerLocationManagerImpl;
.super Ljava/lang/Object;
.source "HwInnerLocationManagerImpl.java"

# interfaces
.implements Landroid/location/IHwInnerLocationManager;


# static fields
.field static final CODE_GET_POWR_TYPE:I = 0x3e9

.field static final CODE_GNSS_DETECT:I = 0x3ef

.field static final CODE_LOG_EVENT:I = 0x3ea

.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final SETTINGS_LOCATION_MODE:I = 0x3ee

.field private static final TAG:Ljava/lang/String; = "HwInnerLocationManagerImpl"

.field private static volatile mInstance:Landroid/location/HwInnerLocationManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/location/HwInnerLocationManagerImpl;

    invoke-direct {v0}, Landroid/location/HwInnerLocationManagerImpl;-><init>()V

    sput-object v0, Landroid/location/HwInnerLocationManagerImpl;->mInstance:Landroid/location/HwInnerLocationManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/location/IHwInnerLocationManager;
    .locals 1

    .line 40
    sget-object v0, Landroid/location/HwInnerLocationManagerImpl;->mInstance:Landroid/location/HwInnerLocationManagerImpl;

    return-object v0
.end method


# virtual methods
.method public checkLocationSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .line 106
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 107
    return v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    .line 110
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 111
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 112
    .local v3, "_reply":Landroid/os/Parcel;
    const-string v4, "location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 113
    .local v4, "b":Landroid/os/IBinder;
    nop

    .line 115
    .local v0, "_result":I
    :try_start_0
    const-string v5, "android.location.ILocationManager"

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    const/16 v5, 0x3ee

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 120
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 121
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v5

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 122
    :catch_0
    move-exception v5

    .line 123
    .local v5, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v6, "HwInnerLocationManagerImpl"

    const-string v7, "checkLocationSettings catch RemoteException in HwInnerLocationManagerImpl."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v5    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 127
    nop

    .line 128
    return v0

    .line 125
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v5
.end method

.method public getPowerTypeByPackageName(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 57
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 58
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 59
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, -0x1

    .line 61
    .local v3, "_result":I
    :try_start_0
    const-string v4, "android.location.ILocationManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    const/16 v4, 0x3e9

    const/4 v5, 0x0

    invoke-interface {v2, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 64
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 65
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 66
    :catch_0
    move-exception v4

    .line 68
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "HwInnerLocationManagerImpl"

    const-string v6, "getPowerTypeByPackageName catch RemoteException in HwInnerLocationManagerImpl."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 72
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 73
    nop

    .line 75
    return v3

    .line 71
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 72
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public gnssDetect(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 136
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 137
    .local v2, "b":Landroid/os/IBinder;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v3, "_result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v4, "android.location.ILocationManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    const/16 v4, 0x3ef

    const/4 v5, 0x0

    invoke-interface {v2, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 143
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 144
    :catch_0
    move-exception v4

    .line 145
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "HwInnerLocationManagerImpl"

    const-string v6, "gnssDetect catch RemoteException in HwInnerLocationManagerImpl."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 150
    return-object v3

    .line 147
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public logEvent(IILjava/lang/String;)I
    .locals 7
    .param p1, "type"    # I
    .param p2, "event"    # I
    .param p3, "parameter"    # Ljava/lang/String;

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 81
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 82
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v2, "location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 83
    .local v2, "b":Landroid/os/IBinder;
    const/4 v3, -0x1

    .line 85
    .local v3, "_result":I
    :try_start_0
    const-string v4, "android.location.ILocationManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    const/16 v4, 0x3ea

    const/4 v5, 0x0

    invoke-interface {v2, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 90
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 92
    :catch_0
    move-exception v4

    .line 94
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "HwInnerLocationManagerImpl"

    const-string v6, "logEvent catch RemoteException in HwInnerLocationManagerImpl."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    nop

    .line 100
    return v3

    .line 97
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method
