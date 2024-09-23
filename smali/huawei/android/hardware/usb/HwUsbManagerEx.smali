.class public Lhuawei/android/hardware/usb/HwUsbManagerEx;
.super Ljava/lang/Object;
.source "HwUsbManagerEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwUsbManagerEx"

.field private static volatile mInstance:Lhuawei/android/hardware/usb/HwUsbManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/hardware/usb/HwUsbManagerEx;->mInstance:Lhuawei/android/hardware/usb/HwUsbManagerEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "HwUsbManagerEx"

    const-string v1, "construction"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/hardware/usb/HwUsbManagerEx;
    .locals 2

    const-class v0, Lhuawei/android/hardware/usb/HwUsbManagerEx;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lhuawei/android/hardware/usb/HwUsbManagerEx;->mInstance:Lhuawei/android/hardware/usb/HwUsbManagerEx;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lhuawei/android/hardware/usb/HwUsbManagerEx;

    invoke-direct {v1}, Lhuawei/android/hardware/usb/HwUsbManagerEx;-><init>()V

    sput-object v1, Lhuawei/android/hardware/usb/HwUsbManagerEx;->mInstance:Lhuawei/android/hardware/usb/HwUsbManagerEx;

    .line 27
    :cond_0
    sget-object v1, Lhuawei/android/hardware/usb/HwUsbManagerEx;->mInstance:Lhuawei/android/hardware/usb/HwUsbManagerEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getService()Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    .locals 2

    .line 35
    const-string v0, "hwUsbExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 36
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lhuawei/android/hardware/usb/IHwUsbManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Lhuawei/android/hardware/usb/IHwUsbManagerEx;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public allowUsbHDB(ZLjava/lang/String;)V
    .locals 3
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 41
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/hardware/usb/HwUsbManagerEx;->getService()Lhuawei/android/hardware/usb/IHwUsbManagerEx;

    move-result-object v0

    .line 42
    .local v0, "service":Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p1, p2}, Lhuawei/android/hardware/usb/IHwUsbManagerEx;->allowUsbHDB(ZLjava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "HwUsbManagerEx"

    const-string v2, "allowUsbHDB service is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "service":Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    :goto_0
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwUsbManagerEx"

    const-string v2, "HwUsbEx service binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public clearUsbHDBKeys()V
    .locals 3

    .line 67
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/hardware/usb/HwUsbManagerEx;->getService()Lhuawei/android/hardware/usb/IHwUsbManagerEx;

    move-result-object v0

    .line 68
    .local v0, "service":Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Lhuawei/android/hardware/usb/IHwUsbManagerEx;->clearUsbHDBKeys()V

    goto :goto_0

    .line 71
    :cond_0
    const-string v1, "HwUsbManagerEx"

    const-string v2, "clearUsbHDBKeys service is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "service":Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    :goto_0
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwUsbManagerEx"

    const-string v2, "HwUsbManagerEx service binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public denyUsbHDB()V
    .locals 3

    .line 54
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/hardware/usb/HwUsbManagerEx;->getService()Lhuawei/android/hardware/usb/IHwUsbManagerEx;

    move-result-object v0

    .line 55
    .local v0, "service":Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lhuawei/android/hardware/usb/IHwUsbManagerEx;->denyUsbHDB()V

    goto :goto_0

    .line 58
    :cond_0
    const-string v1, "HwUsbManagerEx"

    const-string v2, "denyUsbHDB service is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "service":Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    :goto_0
    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwUsbManagerEx"

    const-string v2, "HwUsbManagerEx service binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 95
    :try_start_0
    const-string v0, "hwUsbExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 96
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    const-string v1, "HwUsbManagerEx"

    const-string v2, "dump service is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwUsbManagerEx"

    const-string v2, "HwUsbManagerEx service binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public setHdbEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 82
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/hardware/usb/HwUsbManagerEx;->getService()Lhuawei/android/hardware/usb/IHwUsbManagerEx;

    move-result-object v0

    .line 83
    .local v0, "service":Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0, p1}, Lhuawei/android/hardware/usb/IHwUsbManagerEx;->setHdbEnabled(Z)V

    goto :goto_0

    .line 86
    :cond_0
    const-string v1, "HwUsbManagerEx"

    const-string v2, "setHdbEnabled service is null!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "service":Lhuawei/android/hardware/usb/IHwUsbManagerEx;
    :goto_0
    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "HwUsbManagerEx"

    const-string v2, "HwUsbManagerEx service binder error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
