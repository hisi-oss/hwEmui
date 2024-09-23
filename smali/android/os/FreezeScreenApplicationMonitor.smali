.class public Landroid/os/FreezeScreenApplicationMonitor;
.super Ljava/lang/Object;
.source "FreezeScreenApplicationMonitor.java"

# interfaces
.implements Landroid/os/IFreezeScreenApplicationMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FreezeScreenApplicationMonitor"

.field private static mAppMonitor:Landroid/os/FreezeScreenApplicationMonitor;


# instance fields
.field private mSceneMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransparentActivityScene:Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Landroid/os/FreezeScreenApplicationMonitor;->mAppMonitor:Landroid/os/FreezeScreenApplicationMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0}, Landroid/os/FreezeScreenApplicationMonitor;->initScene()V

    .line 55
    invoke-direct {p0}, Landroid/os/FreezeScreenApplicationMonitor;->initSceneMap()V

    .line 56
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/FreezeScreenApplicationMonitor;
    .locals 2

    const-class v0, Landroid/os/FreezeScreenApplicationMonitor;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Landroid/os/FreezeScreenApplicationMonitor;->mAppMonitor:Landroid/os/FreezeScreenApplicationMonitor;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/os/FreezeScreenApplicationMonitor;

    invoke-direct {v1}, Landroid/os/FreezeScreenApplicationMonitor;-><init>()V

    sput-object v1, Landroid/os/FreezeScreenApplicationMonitor;->mAppMonitor:Landroid/os/FreezeScreenApplicationMonitor;

    .line 50
    :cond_0
    sget-object v1, Landroid/os/FreezeScreenApplicationMonitor;->mAppMonitor:Landroid/os/FreezeScreenApplicationMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initScene()V
    .locals 1

    .line 59
    new-instance v0, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;

    invoke-direct {v0}, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;-><init>()V

    iput-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor;->mTransparentActivityScene:Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;

    .line 60
    return-void
.end method

.method private initSceneMap()V
    .locals 3

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor;->mSceneMap:Landroid/util/ArrayMap;

    .line 64
    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor;->mSceneMap:Landroid/util/ArrayMap;

    const-string v1, "TransparentActivityScene"

    const v2, 0x3615d349

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public cancelCheckFreezeScreen(Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor;->mSceneMap:Landroid/util/ArrayMap;

    const-string v1, "checkType"

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x3615d349

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor;->mTransparentActivityScene:Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;

    invoke-virtual {v0, p1}, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->cancelCheckFreezeScreen(Landroid/util/ArrayMap;)V

    .line 88
    nop

    .line 92
    :goto_0
    return-void
.end method

.method public checkFreezeScreen(Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "params":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_2

    const-string v0, "checkType"

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor;->mSceneMap:Landroid/util/ArrayMap;

    const-string v1, "checkType"

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x3615d349

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Landroid/os/FreezeScreenApplicationMonitor;->mTransparentActivityScene:Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;

    invoke-virtual {v0, p1}, Landroid/os/FreezeScreenApplicationMonitor$TransparentActivityScene;->scheduleCheckFreezeScreen(Landroid/util/ArrayMap;)V

    .line 77
    nop

    .line 81
    :goto_0
    return-void

    .line 69
    :cond_2
    :goto_1
    return-void
.end method
