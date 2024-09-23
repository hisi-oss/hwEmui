.class public Landroid/net/HwNetworkPolicyManager;
.super Landroid/net/NetworkPolicyManager;
.source "HwNetworkPolicyManager.java"


# static fields
.field public static final POLICY_HW_BASE:I = 0x1

.field public static final POLICY_HW_DEFAULT:I = 0x0

.field public static final POLICY_HW_RESTRICT_MOBILE:I = 0x1

.field public static final POLICY_HW_RESTRICT_ROAMING_MOBILE:I = 0x4

.field public static final POLICY_HW_RESTRICT_WIFI:I = 0x2

.field public static final TAG:Ljava/lang/String; = "HwNetworkPolicyManager"

.field public static final TRANSCODE_ADD_HWUIDPOLICY:I = 0xc9

.field public static final TRANSCODE_FORCE_UPDATE_POLICY:I = 0xcd

.field public static final TRANSCODE_GET_HWUIDPOLICY:I = 0xcb

.field public static final TRANSCODE_GET_UIDS_WITHPOLICY:I = 0xcc

.field public static final TRANSCODE_REMOVE_HWUIDPOLICY:I = 0xca

.field public static final TRANSCODE_SET_HWUIDPOLICY:I = 0xc8


# instance fields
.field private mHwContext:Landroid/content/Context;

.field public mNetworkPolicyManagerService:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/INetworkPolicyManager;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/net/NetworkPolicyManager;-><init>(Landroid/content/Context;Landroid/net/INetworkPolicyManager;)V

    .line 46
    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/HwNetworkPolicyManager;->mNetworkPolicyManagerService:Landroid/os/IBinder;

    .line 47
    iput-object p1, p0, Landroid/net/HwNetworkPolicyManager;->mHwContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/HwNetworkPolicyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    const-string v0, "netpolicy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/HwNetworkPolicyManager;

    return-object v0
.end method


# virtual methods
.method public addHwUidPolicy(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v1, p0, Landroid/net/HwNetworkPolicyManager;->mHwContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Landroid/net/HwNetworkPolicyManager;->mNetworkPolicyManagerService:Landroid/os/IBinder;

    const/16 v2, 0xc9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 84
    const-string v1, "HwNetworkPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addHwUidPolicy uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " opPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/HwNetworkPolicyManager;->mHwContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 92
    :cond_0
    return-void

    .line 88
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw v1
.end method

.method public forceUpdatePolicy(Z)V
    .locals 5
    .param p1, "isRoaming"    # Z

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v1, p0, Landroid/net/HwNetworkPolicyManager;->mNetworkPolicyManagerService:Landroid/os/IBinder;

    const/16 v2, 0xcd

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 173
    const-string v1, "HwNetworkPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceUpdatePolicy isRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    :cond_0
    return-void

    .line 177
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw v1
.end method

.method public getHwUidPolicy(I)I
    .locals 6
    .param p1, "uid"    # I

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "policy":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 120
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 122
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v3, p0, Landroid/net/HwNetworkPolicyManager;->mNetworkPolicyManagerService:Landroid/os/IBinder;

    const/16 v4, 0xcb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 124
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move v0, v3

    .line 125
    const-string v3, "HwNetworkPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHwUidPolicy uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " policy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    :cond_0
    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 136
    :cond_1
    return v0

    .line 129
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    :cond_2
    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v3
.end method

.method public getHwUidsWithPolicy(I)[I
    .locals 6
    .param p1, "policy"    # I

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "uids":[I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 145
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 147
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v3, p0, Landroid/net/HwNetworkPolicyManager;->mNetworkPolicyManagerService:Landroid/os/IBinder;

    const/16 v4, 0xcc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 149
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v3, v3, [I

    move-object v0, v3

    .line 150
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 151
    const-string v3, "HwNetworkPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHwUidPolicy uids = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " policy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    :cond_0
    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 162
    :cond_1
    return-object v0

    .line 155
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 152
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    :cond_2
    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v3
.end method

.method public removeHwUidPolicy(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 100
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v1, p0, Landroid/net/HwNetworkPolicyManager;->mHwContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Landroid/net/HwNetworkPolicyManager;->mNetworkPolicyManagerService:Landroid/os/IBinder;

    const/16 v2, 0xca

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 104
    const-string v1, "HwNetworkPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeHwUidPolicy uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " opPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/HwNetworkPolicyManager;->mHwContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    :cond_0
    return-void

    .line 108
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw v1
.end method

.method public setHwUidPolicy(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 60
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v1, p0, Landroid/net/HwNetworkPolicyManager;->mHwContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Landroid/net/HwNetworkPolicyManager;->mNetworkPolicyManagerService:Landroid/os/IBinder;

    const/16 v2, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 64
    const-string v1, "HwNetworkPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHwUidPolicy uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " policy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " opPackageName =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/HwNetworkPolicyManager;->mHwContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 72
    :cond_0
    return-void

    .line 68
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    throw v1
.end method
