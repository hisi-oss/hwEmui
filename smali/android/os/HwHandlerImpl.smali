.class public Landroid/os/HwHandlerImpl;
.super Ljava/lang/Object;
.source "HwHandlerImpl.java"

# interfaces
.implements Landroid/os/IHwHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwHandlerImpl"

.field private static mInstance:Landroid/os/HwHandlerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    sput-object v0, Landroid/os/HwHandlerImpl;->mInstance:Landroid/os/HwHandlerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static declared-synchronized getDefault()Landroid/os/HwHandlerImpl;
    .locals 2

    const-class v0, Landroid/os/HwHandlerImpl;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Landroid/os/HwHandlerImpl;->mInstance:Landroid/os/HwHandlerImpl;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Landroid/os/HwHandlerImpl;

    invoke-direct {v1}, Landroid/os/HwHandlerImpl;-><init>()V

    sput-object v1, Landroid/os/HwHandlerImpl;->mInstance:Landroid/os/HwHandlerImpl;

    .line 14
    :cond_0
    sget-object v1, Landroid/os/HwHandlerImpl;->mInstance:Landroid/os/HwHandlerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public resetMessageDelayMillis(Landroid/os/Message;J)J
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .line 22
    const-wide/16 v0, 0x64

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x12c

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    if-eqz p1, :cond_0

    .line 23
    invoke-static {}, Landroid/rms/iaware/HwIAwareHandler;->getInstance()Landroid/rms/iaware/HwIAwareHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/rms/iaware/HwIAwareHandler;->resetDelayMills(Landroid/os/Message;J)J

    move-result-wide p2

    .line 25
    :cond_0
    return-wide p2
.end method
