.class Landroid/app/mtm/MultiTaskManager$1;
.super Landroid/app/mtm/iaware/appmng/IAppCleanCallback$Stub;
.source "MultiTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/mtm/MultiTaskManager;->requestAppCleanFromPG(Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/mtm/MultiTaskManager;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/mtm/MultiTaskManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/mtm/MultiTaskManager;

    .line 304
    iput-object p1, p0, Landroid/app/mtm/MultiTaskManager$1;->this$0:Landroid/app/mtm/MultiTaskManager;

    iput-object p2, p0, Landroid/app/mtm/MultiTaskManager$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/mtm/iaware/appmng/IAppCleanCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleanFinish(Landroid/app/mtm/iaware/appmng/AppCleanParam;)V
    .locals 3
    .param p1, "result"    # Landroid/app/mtm/iaware/appmng/AppCleanParam;

    .line 307
    const-string v0, "MultiTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCleanFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/mtm/MultiTaskManager$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method
