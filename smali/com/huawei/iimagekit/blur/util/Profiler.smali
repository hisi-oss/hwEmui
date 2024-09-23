.class public Lcom/huawei/iimagekit/blur/util/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# instance fields
.field private mHandle:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/iimagekit/blur/util/Profiler;->mHandle:J

    .line 16
    invoke-direct {p0, p1}, Lcom/huawei/iimagekit/blur/util/Profiler;->init(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/iimagekit/blur/util/Profiler;->mHandle:J

    .line 17
    return-void
.end method

.method private native destroy(J)V
.end method

.method private native init(Ljava/lang/String;)J
.end method


# virtual methods
.method public native begin()V
.end method

.method public native end()V
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 21
    iget-wide v0, p0, Lcom/huawei/iimagekit/blur/util/Profiler;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/iimagekit/blur/util/Profiler;->destroy(J)V

    .line 22
    return-void
.end method

.method public native reset()V
.end method

.method public native setEnableFences(Z)V
.end method
