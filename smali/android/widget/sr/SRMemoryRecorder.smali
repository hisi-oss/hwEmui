.class public Landroid/widget/sr/SRMemoryRecorder;
.super Ljava/lang/Object;
.source "SRMemoryRecorder.java"


# static fields
.field private static final MAX_SIZE:I = 0x3300000

.field private static final SR_TAG:Ljava/lang/String; = "SuperResolution"


# instance fields
.field private mMemoryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(I)V
    .locals 3
    .param p1, "size"    # I

    monitor-enter p0

    .line 36
    :try_start_0
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " before add mem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget v0, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 35
    .end local p1    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRMemoryRecorder;
    throw p1
.end method

.method public declared-synchronized enoughRoomForSize(I)Z
    .locals 5
    .param p1, "size"    # I

    monitor-enter p0

    .line 29
    :try_start_0
    iget v0, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I

    add-int/2addr v0, p1

    const/high16 v1, 0x3300000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    .local v0, "ret":Z
    :goto_0
    const-string v2, "SuperResolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enoughRoomForSize: size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  mem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "MAX_SIZE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ret = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return v0

    .line 28
    .end local v0    # "ret":Z
    .end local p1    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRMemoryRecorder;
    throw p1
.end method

.method public declared-synchronized getMemoryCount()I
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget v0, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRMemoryRecorder;
    throw v0
.end method

.method public declared-synchronized remove(I)V
    .locals 3
    .param p1, "size"    # I

    monitor-enter p0

    .line 41
    :try_start_0
    const-string v0, "SuperResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " before remove mem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v0, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/sr/SRMemoryRecorder;->mMemoryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 40
    .end local p1    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/widget/sr/SRMemoryRecorder;
    throw p1
.end method
