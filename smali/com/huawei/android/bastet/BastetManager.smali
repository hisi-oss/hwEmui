.class public abstract Lcom/huawei/android/bastet/BastetManager;
.super Ljava/lang/Object;
.source "BastetManager.java"


# static fields
.field private static final BASTET_SERVICE:Ljava/lang/String; = "BastetService"

.field private static final TAG:Ljava/lang/String; = "BastetManager"

.field private static mBastetService:Landroid/os/IBinder;


# instance fields
.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field protected mHandler:Landroid/os/Handler;

.field protected mIBastetListener:Lcom/huawei/android/bastet/IBastetListener;

.field protected mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/huawei/android/bastet/BastetManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/bastet/BastetManager$1;-><init>(Lcom/huawei/android/bastet/BastetManager;)V

    iput-object v0, p0, Lcom/huawei/android/bastet/BastetManager;->mIBastetListener:Lcom/huawei/android/bastet/IBastetListener;

    .line 120
    new-instance v0, Lcom/huawei/android/bastet/BastetManager$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/bastet/BastetManager$2;-><init>(Lcom/huawei/android/bastet/BastetManager;)V

    iput-object v0, p0, Lcom/huawei/android/bastet/BastetManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 34
    const-string v0, "BastetService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/bastet/BastetManager;->mBastetService:Landroid/os/IBinder;

    .line 35
    sget-object v0, Lcom/huawei/android/bastet/BastetManager;->mBastetService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "BastetManager"

    const-string v1, "Failed to get bastet service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 40
    :cond_0
    :try_start_0
    sget-object v0, Lcom/huawei/android/bastet/BastetManager;->mBastetService:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/huawei/android/bastet/BastetManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 41
    sget-object v0, Lcom/huawei/android/bastet/BastetManager;->mBastetService:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/huawei/android/bastet/IBastetManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/android/bastet/IBastetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/bastet/BastetManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 46
    :goto_0
    return-void
.end method

.method static synthetic access$000()Landroid/os/IBinder;
    .locals 1

    .line 26
    sget-object v0, Lcom/huawei/android/bastet/BastetManager;->mBastetService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$002(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Landroid/os/IBinder;

    .line 26
    sput-object p0, Lcom/huawei/android/bastet/BastetManager;->mBastetService:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method protected abstract handleProxyMessage(III)V
.end method

.method public inquireNetworkQuality()I
    .locals 2

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "level":I
    invoke-virtual {p0}, Lcom/huawei/android/bastet/BastetManager;->isBastetAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/bastet/BastetManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/huawei/android/bastet/BastetManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    invoke-interface {v1}, Lcom/huawei/android/bastet/IBastetManager;->inquireNetworkQuality()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 88
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 91
    :cond_1
    :goto_0
    return v0
.end method

.method public isBastetAvailable()Z
    .locals 2

    .line 55
    const/4 v0, 0x0

    .line 58
    .local v0, "available":Z
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/bastet/BastetManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/huawei/android/bastet/BastetManager;->mIBastetManager:Lcom/huawei/android/bastet/IBastetManager;

    invoke-interface {v1}, Lcom/huawei/android/bastet/IBastetManager;->isProxyServiceAvailable()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 65
    :cond_0
    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 67
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method protected abstract onBastetDied()V
.end method

.method protected sendMessage(I)V
    .locals 1
    .param p1, "msgId"    # I

    .line 106
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    :cond_0
    return-void
.end method

.method protected sendMessage(II)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "val"    # I

    .line 112
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/huawei/android/bastet/BastetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 115
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 116
    iget-object v1, p0, Lcom/huawei/android/bastet/BastetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
