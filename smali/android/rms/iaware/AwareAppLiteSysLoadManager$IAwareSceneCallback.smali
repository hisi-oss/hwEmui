.class final Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;
.super Landroid/rms/iaware/ISceneCallback$Stub;
.source "AwareAppLiteSysLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/AwareAppLiteSysLoadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IAwareSceneCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;


# direct methods
.method private constructor <init>(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)V
    .locals 0

    .line 162
    iput-object p1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-direct {p0}, Landroid/rms/iaware/ISceneCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/rms/iaware/AwareAppLiteSysLoadManager;Landroid/rms/iaware/AwareAppLiteSysLoadManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/rms/iaware/AwareAppLiteSysLoadManager;
    .param p2, "x1"    # Landroid/rms/iaware/AwareAppLiteSysLoadManager$1;

    .line 162
    invoke-direct {p0, p1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;-><init>(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)V

    return-void
.end method


# virtual methods
.method public onSceneChanged(IZIILjava/lang/String;)V
    .locals 3
    .param p1, "scene"    # I
    .param p2, "start"    # Z
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "pkg"    # Ljava/lang/String;

    .line 165
    const-string v0, "AwareAppLiteSysLoadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneChanged: secne ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v0}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$400(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$000(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 168
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/rms/iaware/AwareAppLiteSysLoadManager$IAwareSceneCallback;->this$0:Landroid/rms/iaware/AwareAppLiteSysLoadManager;

    invoke-static {v1}, Landroid/rms/iaware/AwareAppLiteSysLoadManager;->access$400(Landroid/rms/iaware/AwareAppLiteSysLoadManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->setIAwareCacheEnable(Z)V

    .line 170
    :cond_1
    return-void
.end method
