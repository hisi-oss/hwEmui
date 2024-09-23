.class Landroid/rms/iaware/AwareAppScheduleManager$1;
.super Ljava/lang/Thread;
.source "AwareAppScheduleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/rms/iaware/AwareAppScheduleManager;->compileArt(Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/rms/iaware/AwareAppScheduleManager;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Landroid/rms/iaware/AwareAppScheduleManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/rms/iaware/AwareAppScheduleManager;
    .param p2, "x0"    # Ljava/lang/String;

    .line 206
    iput-object p1, p0, Landroid/rms/iaware/AwareAppScheduleManager$1;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    iput-object p3, p0, Landroid/rms/iaware/AwareAppScheduleManager$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 210
    :try_start_0
    const-string v0, "AwareAppScheduleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Tread fast compile try begin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 213
    const/16 v0, 0x19

    move v1, v0

    .line 214
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    .line 215
    const-string v2, "AwareAppScheduleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v4, v1, 0x19

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Tread wait profile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 217
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager$1;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareAppScheduleManager;->access$000(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const-string v0, "AwareAppScheduleManager"

    const-string v2, "Tread artFile or art64File exists"

    invoke-static {v0, v2}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    goto :goto_1

    .line 221
    :cond_0
    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager$1;->this$0:Landroid/rms/iaware/AwareAppScheduleManager;

    iget-object v3, p0, Landroid/rms/iaware/AwareAppScheduleManager$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareAppScheduleManager;->access$100(Landroid/rms/iaware/AwareAppScheduleManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const-string v2, "AwareAppScheduleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", has valid profile, begin to compile."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v0, p0, Landroid/rms/iaware/AwareAppScheduleManager$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, "speed-profile-opt"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 224
    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    .line 225
    .local v0, "result":Z
    const-string v2, "AwareAppScheduleManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", Thread fast-compile end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    goto :goto_1

    .line 228
    .end local v0    # "result":Z
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 232
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ignored":Ljava/lang/InterruptedException;
    const-string v1, "AwareAppScheduleManager"

    const-string v2, "fast_compile_thread interrupted"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 230
    :catch_1
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AwareAppScheduleManager"

    const-string v2, "fast_compile_thread synchronized process failed!"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    nop

    .line 235
    :goto_2
    const-string v0, "AwareAppScheduleManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/rms/iaware/AwareAppScheduleManager$1;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Thread fast compile try end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method
