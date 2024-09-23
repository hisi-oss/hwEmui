.class public Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;
.super Ljava/lang/Object;
.source "HwClipboardReadDelayRegisterImpl.java"

# interfaces
.implements Landroid/hwclipboarddelayread/HwClipboardReadDelayRegister$IHwClipboardReadDelayRegister;


# instance fields
.field private clipLockObj:Ljava/lang/Object;

.field private primaryClipGetedListener:Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;

.field private primaryClipGetedServiceListener:Lcom/huawei/android/content/IOnPrimaryClipGetedListener$Stub;

.field private registedHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedListener:Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;

    .line 29
    iput-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedServiceListener:Lcom/huawei/android/content/IOnPrimaryClipGetedListener$Stub;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->clipLockObj:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;

    .line 26
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->clipLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;

    .line 26
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->registedHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addPrimaryClipGetedListener(Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 37
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->clipLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    iput-object p3, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->registedHandler:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedListener:Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;

    .line 44
    new-instance v1, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;

    invoke-direct {v1, p0}, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl$1;-><init>(Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;)V

    iput-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedServiceListener:Lcom/huawei/android/content/IOnPrimaryClipGetedListener$Stub;

    .line 56
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedServiceListener:Lcom/huawei/android/content/IOnPrimaryClipGetedListener$Stub;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/android/server/clipboard/HwClipboardServiceManager;->addPrimaryClipGetedListener(Lcom/huawei/android/content/IOnPrimaryClipGetedListener;Ljava/lang/String;)V

    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public removePrimaryClipGetedListener()V
    .locals 3

    .line 61
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->clipLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedServiceListener:Lcom/huawei/android/content/IOnPrimaryClipGetedListener$Stub;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedServiceListener:Lcom/huawei/android/content/IOnPrimaryClipGetedListener$Stub;

    invoke-static {v1}, Lcom/huawei/android/server/clipboard/HwClipboardServiceManager;->removePrimaryClipGetedListener(Lcom/huawei/android/content/IOnPrimaryClipGetedListener;)V

    .line 64
    iput-object v2, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedServiceListener:Lcom/huawei/android/content/IOnPrimaryClipGetedListener$Stub;

    .line 66
    :cond_0
    iput-object v2, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->registedHandler:Landroid/os/Handler;

    .line 67
    iput-object v2, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedListener:Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reportPrimaryClipGeted()V
    .locals 2

    .line 76
    iget-object v0, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->clipLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedListener:Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lhuawei/android/hwclipboarddelayread/HwClipboardReadDelayRegisterImpl;->primaryClipGetedListener:Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;

    invoke-interface {v1}, Landroid/content/ClipboardManager$OnPrimaryClipGetedListener;->onPrimaryClipGeted()V

    .line 80
    :cond_0
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGetWaitTime(I)V
    .locals 0
    .param p1, "waitTime"    # I

    .line 72
    invoke-static {p1}, Lcom/huawei/android/server/clipboard/HwClipboardServiceManager;->setGetWaitTime(I)V

    .line 73
    return-void
.end method
