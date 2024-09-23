.class Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;
.super Ljava/lang/Object;
.source "DisplayEngineDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableProcessor"
.end annotation


# instance fields
.field protected mMaxSize:I

.field final synthetic this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;


# direct methods
.method public constructor <init>(Lcom/huawei/displayengine/DisplayEngineDBManager;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 p1, 0x0

    iput p1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->mMaxSize:I

    .line 183
    return-void
.end method


# virtual methods
.method public addorUpdateRecord(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method protected getAllRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllRecords(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "info"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 194
    if-nez p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->getAllRecords()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "info"    # Landroid/os/Bundle;

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "size":I
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->this$0:Lcom/huawei/displayengine/DisplayEngineDBManager;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->access$000(Lcom/huawei/displayengine/DisplayEngineDBManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 203
    if-nez p1, :cond_0

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->getSizeWithoutLock()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDBManager$TableProcessor;->getSizeWithoutLock(Landroid/os/Bundle;)I

    move-result v2

    move v0, v2

    .line 208
    :goto_0
    monitor-exit v1

    .line 209
    return v0

    .line 208
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected getSizeWithoutLock()I
    .locals 1

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method protected getSizeWithoutLock(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "info"    # Landroid/os/Bundle;

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxSize(I)Z
    .locals 1
    .param p1, "size"    # I

    .line 186
    const/4 v0, 0x0

    return v0
.end method
