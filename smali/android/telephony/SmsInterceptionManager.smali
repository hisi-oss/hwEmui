.class public Landroid/telephony/SmsInterceptionManager;
.super Ljava/lang/Object;
.source "SmsInterceptionManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SmsInterceptionManager"

.field private static sInstance:Landroid/telephony/SmsInterceptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SmsInterceptionManager;->sInstance:Landroid/telephony/SmsInterceptionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getISmsInterception()Lcom/android/internal/telephony/ISmsInterception;
    .locals 1

    .line 63
    const-string v0, "isms_interception"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISmsInterception$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmsInterception;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/telephony/SmsInterceptionManager;
    .locals 2

    const-class v0, Landroid/telephony/SmsInterceptionManager;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Landroid/telephony/SmsInterceptionManager;->sInstance:Landroid/telephony/SmsInterceptionManager;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Landroid/telephony/SmsInterceptionManager;

    invoke-direct {v1}, Landroid/telephony/SmsInterceptionManager;-><init>()V

    sput-object v1, Landroid/telephony/SmsInterceptionManager;->sInstance:Landroid/telephony/SmsInterceptionManager;

    .line 28
    :cond_0
    sget-object v1, Landroid/telephony/SmsInterceptionManager;->sInstance:Landroid/telephony/SmsInterceptionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public registerListener(Landroid/telephony/SmsInterceptionListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/SmsInterceptionListener;
    .param p2, "priority"    # I

    .line 38
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsInterceptionManager;->getISmsInterception()Lcom/android/internal/telephony/ISmsInterception;

    move-result-object v0

    .line 39
    .local v0, "iSmsInterception":Lcom/android/internal/telephony/ISmsInterception;
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p1, Landroid/telephony/SmsInterceptionListener;->callback:Lcom/android/internal/telephony/ISmsInterceptionListener;

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/ISmsInterception;->registerListener(Lcom/android/internal/telephony/ISmsInterceptionListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "iSmsInterception":Lcom/android/internal/telephony/ISmsInterception;
    :cond_0
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmsInterceptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem while register listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public unregisterListener(I)V
    .locals 4
    .param p1, "priority"    # I

    .line 53
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SmsInterceptionManager;->getISmsInterception()Lcom/android/internal/telephony/ISmsInterception;

    move-result-object v0

    .line 54
    .local v0, "iSmsInterception":Lcom/android/internal/telephony/ISmsInterception;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISmsInterception;->unregisterListener(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "iSmsInterception":Lcom/android/internal/telephony/ISmsInterception;
    :cond_0
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmsInterceptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem while unregister listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
