.class public Lcom/huawei/ncdft/HwNcDftConnManager;
.super Ljava/lang/Object;
.source "HwNcDftConnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;
    }
.end annotation


# static fields
.field private static final BIND_FAIL:I = 0x1

.field private static final BIND_SUCC:I = 0x0

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "HwNcDftConnManager"

.field private static final VERBOSE:Z


# instance fields
.field protected iNcDft:Lcom/huawei/ncdft/INcDft;

.field private mCallerCallback:Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;

.field private mContext:Landroid/content/Context;

.field protected sConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-string v0, "HwNcDftConnManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ncdft/HwNcDftConnManager;->DEBUG:Z

    .line 33
    const-string v0, "HwNcDftConnManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/ncdft/HwNcDftConnManager;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mCallerCallback:Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;

    .line 44
    iput-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    .line 45
    new-instance v0, Lcom/huawei/ncdft/HwNcDftConnManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/ncdft/HwNcDftConnManager$1;-><init>(Lcom/huawei/ncdft/HwNcDftConnManager;)V

    iput-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->sConn:Landroid/content/ServiceConnection;

    .line 65
    iput-object p1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/huawei/ncdft/HwNcDftConnManager;->bindToService(Landroid/content/Context;)Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mCallerCallback:Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;

    .line 44
    iput-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    .line 45
    new-instance v0, Lcom/huawei/ncdft/HwNcDftConnManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/ncdft/HwNcDftConnManager$1;-><init>(Lcom/huawei/ncdft/HwNcDftConnManager;)V

    iput-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->sConn:Landroid/content/ServiceConnection;

    .line 70
    iput-object p2, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mCallerCallback:Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/huawei/ncdft/HwNcDftConnManager;->bindToService(Landroid/content/Context;)Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/ncdft/HwNcDftConnManager;)Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/ncdft/HwNcDftConnManager;

    .line 29
    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mCallerCallback:Lcom/huawei/ncdft/HwNcDftConnManager$CallBack;

    return-object v0
.end method

.method public static isCommercialUser()Z
    .locals 3

    .line 255
    const-string v0, "ro.logsystem.usertype"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "userType":I
    const/4 v2, 0x3

    if-eq v2, v0, :cond_1

    const/4 v2, 0x4

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    return v1

    .line 258
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private unbindToService()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->sConn:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->sConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    return-void

    .line 101
    :cond_1
    :goto_0
    const-string v0, "HwNcDftConnManager"

    const-string v1, "mContext == null || sConn == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method


# virtual methods
.method public bindToService(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const-string v0, "HwNcDftConnManager"

    const-string v1, "start to bind to NcDftService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 78
    const-string v1, "HwNcDftConnManager"

    const-string v2, "mContext == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return v0

    .line 81
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.ncdft.iNcDft"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.huawei.hiview"

    const-string v3, "com.huawei.ncdft.NcDftService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "HwNcDftConnManager"

    const-string v4, "startService is exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.ncdft.INcDft"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "tent":Landroid/content/Intent;
    const-string v3, "com.huawei.hiview"

    const-string v4, "com.huawei.ncdft.NcDftService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :try_start_1
    iget-object v3, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->sConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v3

    .line 93
    .local v0, "bRet":Z
    return v0

    .line 94
    .end local v0    # "bRet":Z
    :catch_1
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Exception;
    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/huawei/ncdft/HwNcDftConnManager;->unbindToService()V

    .line 110
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 111
    return-void
.end method

.method public isOverseaCommercialUser()Z
    .locals 3

    .line 265
    const-string v0, "ro.logsystem.usertype"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 267
    .local v0, "userType":I
    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reportGnssLocation(IILandroid/location/Location;JLjava/lang/String;)I
    .locals 9
    .param p1, "domain"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Landroid/location/Location;
    .param p4, "time"    # J
    .param p6, "provider"    # Ljava/lang/String;

    .line 215
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/ncdft/HwNcDftConnManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const-string v1, "HwNcDftConnManager"

    const-string v2, "reportGnssLocation, fail to bind service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-eqz v1, :cond_1

    .line 222
    iget-object v2, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/huawei/ncdft/INcDft;->reportGnssLocation(IILandroid/location/Location;JLjava/lang/String;)I

    move-result v1

    return v1

    .line 224
    :cond_1
    const-string v1, "HwNcDftConnManager"

    const-string v2, "reportGnssLocation, iNcdfT is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    return v0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwNcDftConnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportGnssLocation, connect failed! exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v0
.end method

.method public reportGnssSvStatus(III[I[F[F[F)I
    .locals 11
    .param p1, "domain"    # I
    .param p2, "event"    # I
    .param p3, "svCount"    # I
    .param p4, "svs"    # [I
    .param p5, "snrs"    # [F
    .param p6, "svElevations"    # [F
    .param p7, "svAzimuths"    # [F

    move-object v1, p0

    .line 236
    const/4 v2, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, v1, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/huawei/ncdft/HwNcDftConnManager;->bindToService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    const-string v0, "HwNcDftConnManager"

    const-string v3, "reportGnssSvStatus, fail to bind service"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v2

    .line 242
    :cond_0
    iget-object v0, v1, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-eqz v0, :cond_1

    .line 243
    iget-object v3, v1, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/huawei/ncdft/INcDft;->reportGnssSvStatus(III[I[F[F[F)I

    move-result v0

    return v0

    .line 245
    :cond_1
    const-string v0, "HwNcDftConnManager"

    const-string v3, "reportGnssSvStatus, iNcdfT is null !"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    return v2

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "HwNcDftConnManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportGnssSvStatus, connect failed! exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v2
.end method

.method public reportNetworkInfo(IILandroid/net/NetworkInfo;)I
    .locals 5
    .param p1, "domain"    # I
    .param p2, "event"    # I
    .param p3, "info"    # Landroid/net/NetworkInfo;

    .line 195
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/ncdft/HwNcDftConnManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string v1, "HwNcDftConnManager"

    const-string v2, "reportNetworkInfo, fail to bind service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/ncdft/INcDft;->reportNetworkInfo(IILandroid/net/NetworkInfo;)I

    move-result v1

    return v1

    .line 204
    :cond_1
    const-string v1, "HwNcDftConnManager"

    const-string v2, "reportNetworkInfo, iNcdfT is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return v0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwNcDftConnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportGnssApkName, connect failed! exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return v0
.end method

.method public reportToDft(IILandroid/os/Bundle;)I
    .locals 5
    .param p1, "domain"    # I
    .param p2, "ncEventID"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 155
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/ncdft/HwNcDftConnManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const-string v1, "HwNcDftConnManager"

    const-string v2, "reportToDft, fail to bind service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/ncdft/INcDft;->notifyNcDftBundleEvent(IILandroid/os/Bundle;)I

    move-result v1

    return v1

    .line 164
    :cond_1
    const-string v1, "HwNcDftConnManager"

    const-string v2, "reportToDft, iNcdfT is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return v0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwNcDftConnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportToDft, connect failed! exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v0
.end method

.method public reportToDft(IILjava/util/List;)I
    .locals 5
    .param p1, "domain"    # I
    .param p2, "ncEventID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 136
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/ncdft/HwNcDftConnManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "HwNcDftConnManager"

    const-string v2, "reportToDft, fail to bind service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v0

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/ncdft/INcDft;->notifyNcDftEvent(IILjava/util/List;)I

    move-result v1

    return v1

    .line 145
    :cond_1
    const-string v1, "HwNcDftConnManager"

    const-string v2, "reportToDft, iNcdfT is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return v0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwNcDftConnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportToDft, connect failed! exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v0
.end method

.method public triggerUpload(III)Z
    .locals 5
    .param p1, "domain"    # I
    .param p2, "event"    # I
    .param p3, "errorCode"    # I

    .line 116
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/huawei/ncdft/HwNcDftConnManager;->bindToService(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    const-string v1, "HwNcDftConnManager"

    const-string v2, "triggerUpload, fail to bind service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/huawei/ncdft/HwNcDftConnManager;->iNcDft:Lcom/huawei/ncdft/INcDft;

    invoke-interface {v1, p1, p2, p3}, Lcom/huawei/ncdft/INcDft;->triggerUpload(III)Z

    move-result v1

    return v1

    .line 125
    :cond_1
    const-string v1, "HwNcDftConnManager"

    const-string v2, "triggerUpload, iNcdfT is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return v0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "HwNcDftConnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerUpload, connect failed! exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v0
.end method
