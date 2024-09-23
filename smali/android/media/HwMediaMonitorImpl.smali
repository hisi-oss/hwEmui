.class public Landroid/media/HwMediaMonitorImpl;
.super Ljava/lang/Object;
.source "HwMediaMonitorImpl.java"

# interfaces
.implements Landroid/media/IHwMediaMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HwMediaMonitorImpl$ErrorCallback;
    }
.end annotation


# static fields
.field public static final STATUS_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_DIED:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HwMediaMonitorImpl"

.field private static mHwMediaMonitor:Landroid/media/IHwMediaMonitor;


# instance fields
.field private mErrorCallback:Landroid/media/HwMediaMonitorImpl$ErrorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "mediamonitor_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/media/HwMediaMonitorImpl;->mHwMediaMonitor:Landroid/media/IHwMediaMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private checkMediaLogPermission()Z
    .locals 1

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method private errorCallbackFromNative(I)V
    .locals 3
    .param p1, "error"    # I

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "errorCallback":Landroid/media/HwMediaMonitorImpl$ErrorCallback;
    const-class v1, Landroid/media/HwMediaMonitorImpl;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-object v2, p0, Landroid/media/HwMediaMonitorImpl;->mErrorCallback:Landroid/media/HwMediaMonitorImpl$ErrorCallback;

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, p0, Landroid/media/HwMediaMonitorImpl;->mErrorCallback:Landroid/media/HwMediaMonitorImpl$ErrorCallback;

    move-object v0, v2

    .line 287
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    if-eqz v0, :cond_1

    .line 289
    invoke-interface {v0, p1}, Landroid/media/HwMediaMonitorImpl$ErrorCallback;->onError(I)V

    .line 291
    :cond_1
    return-void

    .line 287
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private native forceLogSendNative(I)I
.end method

.method public static getDefault()Landroid/media/IHwMediaMonitor;
    .locals 2

    .line 64
    const-class v0, Landroid/media/HwMediaMonitorImpl;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Landroid/media/HwMediaMonitorImpl;->mHwMediaMonitor:Landroid/media/IHwMediaMonitor;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Landroid/media/HwMediaMonitorImpl;

    invoke-direct {v1}, Landroid/media/HwMediaMonitorImpl;-><init>()V

    sput-object v1, Landroid/media/HwMediaMonitorImpl;->mHwMediaMonitor:Landroid/media/IHwMediaMonitor;

    .line 68
    :cond_0
    sget-object v1, Landroid/media/HwMediaMonitorImpl;->mHwMediaMonitor:Landroid/media/IHwMediaMonitor;

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPackageNameByPid(I)Ljava/lang/String;
    .locals 7
    .param p1, "pid"    # I

    .line 190
    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 191
    const-string v1, "HwMediaMonitorImpl"

    const-string v2, "getPackageNameByPid  pid<=0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-object v0

    .line 194
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 195
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 196
    return-object v0

    .line 198
    :cond_1
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 199
    .local v2, "activityManager":Landroid/app/ActivityManager;
    if-nez v2, :cond_2

    .line 200
    const-string v3, "HwMediaMonitorImpl"

    const-string v4, "getPackageNameByPid  activityManager == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-object v0

    .line 203
    :cond_2
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 204
    .local v3, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v3, :cond_3

    .line 205
    const-string v4, "HwMediaMonitorImpl"

    const-string v5, "getPackageNameByPid  appProcesses == null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v0

    .line 208
    :cond_3
    const/4 v0, 0x0

    .line 209
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 210
    .local v5, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_4

    .line 211
    iget-object v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 212
    goto :goto_1

    .line 214
    .end local v5    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    goto :goto_0

    .line 215
    :cond_5
    :goto_1
    return-object v0
.end method

.method private native writeBigDataNative(ILjava/lang/String;)I
.end method

.method private native writeBigDataNative(ILjava/lang/String;II)I
.end method

.method private native writeBigDataNative(ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method private native writeKpisNative(Ljava/lang/String;)I
.end method

.method private native writeLogMsgNative(IIILjava/lang/String;)I
.end method

.method private native writeLogMsgNative(IILjava/lang/String;)I
.end method

.method private native writeMediaBigDataNative(IILjava/lang/String;)I
.end method


# virtual methods
.method public native checkAudioFlinger()I
.end method

.method public forceLogSend(I)I
    .locals 1
    .param p1, "level"    # I

    .line 225
    invoke-direct {p0, p1}, Landroid/media/HwMediaMonitorImpl;->forceLogSendNative(I)I

    move-result v0

    return v0
.end method

.method public setErrorCallback(Landroid/media/HwMediaMonitorImpl$ErrorCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/media/HwMediaMonitorImpl$ErrorCallback;

    .line 273
    const-class v0, Landroid/media/HwMediaMonitorImpl;

    monitor-enter v0

    .line 274
    :try_start_0
    iput-object p1, p0, Landroid/media/HwMediaMonitorImpl;->mErrorCallback:Landroid/media/HwMediaMonitorImpl$ErrorCallback;

    .line 275
    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/media/HwMediaMonitorImpl;->checkAudioFlinger()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/media/HwMediaMonitorImpl$ErrorCallback;->onError(I)V

    .line 278
    :cond_0
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native systemReady()I
.end method

.method public writeBigData(ILjava/lang/String;)I
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "subType"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/media/HwMediaMonitorImpl;->writeBigDataNative(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeBigData(ILjava/lang/String;II)I
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "ext1"    # I
    .param p4, "ext2"    # I

    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/HwMediaMonitorImpl;->writeBigDataNative(ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public writeBigData(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "sext1"    # Ljava/lang/String;
    .param p4, "ext2"    # I

    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/HwMediaMonitorImpl;->writeBigDataNative(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public writeKpis(Ljava/lang/String;)I
    .locals 1
    .param p1, "kpis"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0, p1}, Landroid/media/HwMediaMonitorImpl;->writeKpisNative(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeLogMsg(IIILjava/lang/String;)I
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "eventLevel"    # I
    .param p3, "subType"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/HwMediaMonitorImpl;->writeLogMsgNative(IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeLogMsg(IILjava/lang/String;)I
    .locals 1
    .param p1, "priority"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/media/HwMediaMonitorImpl;->writeLogMsgNative(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeMediaBigData(IILjava/lang/String;)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/media/HwMediaMonitorImpl;->writeMediaBigDataNative(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public writeMediaBigDataByReportInf(IILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 180
    return-void
.end method
