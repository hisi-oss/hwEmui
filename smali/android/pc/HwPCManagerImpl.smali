.class public Landroid/pc/HwPCManagerImpl;
.super Ljava/lang/Object;
.source "HwPCManagerImpl.java"

# interfaces
.implements Landroid/pc/HwPCManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwPCManagerImpl"

.field private static volatile mInstance:Landroid/pc/HwPCManagerImpl;


# instance fields
.field private mService:Landroid/pc/IHwPCManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Landroid/pc/HwPCManagerImpl;->mInstance:Landroid/pc/HwPCManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pc/HwPCManagerImpl;->mService:Landroid/pc/IHwPCManager;

    .line 29
    const-string v0, "hwPcManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 30
    .local v0, "iBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 31
    invoke-static {v0}, Landroid/pc/IHwPCManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/pc/IHwPCManager;

    move-result-object v1

    iput-object v1, p0, Landroid/pc/HwPCManagerImpl;->mService:Landroid/pc/IHwPCManager;

    .line 33
    :cond_0
    return-void
.end method

.method public static declared-synchronized getDefault()Landroid/pc/HwPCManagerImpl;
    .locals 2

    const-class v0, Landroid/pc/HwPCManagerImpl;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Landroid/pc/HwPCManagerImpl;->mInstance:Landroid/pc/HwPCManagerImpl;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/pc/HwPCManagerImpl;->mInstance:Landroid/pc/HwPCManagerImpl;

    invoke-virtual {v1}, Landroid/pc/HwPCManagerImpl;->getService()Landroid/pc/IHwPCManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 19
    :cond_0
    new-instance v1, Landroid/pc/HwPCManagerImpl;

    invoke-direct {v1}, Landroid/pc/HwPCManagerImpl;-><init>()V

    sput-object v1, Landroid/pc/HwPCManagerImpl;->mInstance:Landroid/pc/HwPCManagerImpl;

    .line 21
    :cond_1
    sget-object v1, Landroid/pc/HwPCManagerImpl;->mInstance:Landroid/pc/HwPCManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public execVoiceCmd(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Landroid/pc/HwPCManagerImpl;->mService:Landroid/pc/IHwPCManager;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Landroid/pc/HwPCManagerImpl;->mService:Landroid/pc/IHwPCManager;

    invoke-interface {v0, p1}, Landroid/pc/IHwPCManager;->execVoiceCmd(Landroid/os/Message;)V

    .line 40
    :cond_0
    return-void
.end method

.method public getService()Landroid/pc/IHwPCManager;
    .locals 1

    .line 25
    iget-object v0, p0, Landroid/pc/HwPCManagerImpl;->mService:Landroid/pc/IHwPCManager;

    return-object v0
.end method
