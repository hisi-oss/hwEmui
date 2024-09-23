.class public Landroid/rms/iaware/DataContract$BaseBuilder;
.super Ljava/lang/Object;
.source "DataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/DataContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBuilder"
.end annotation


# instance fields
.field protected final mCollectEvent:Landroid/rms/iaware/DataNormalizer;

.field protected final mCollects:Landroid/rms/iaware/DataNormalizer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/DataContract$BaseBuilder;->mCollectEvent:Landroid/rms/iaware/DataNormalizer;

    .line 75
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    iput-object v0, p0, Landroid/rms/iaware/DataContract$BaseBuilder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    return-void
.end method


# virtual methods
.method public addEvent(I)Landroid/rms/iaware/DataContract$BaseBuilder;
    .locals 4
    .param p1, "event"    # I

    .line 78
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 79
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "event"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Landroid/rms/iaware/DataContract$BaseBuilder;->mCollectEvent:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "event"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object p0
.end method

.method public build(I)Landroid/rms/iaware/CollectData;
    .locals 4
    .param p1, "resId"    # I

    .line 85
    iget-object v0, p0, Landroid/rms/iaware/DataContract$BaseBuilder;->mCollectEvent:Landroid/rms/iaware/DataNormalizer;

    iget-object v1, p0, Landroid/rms/iaware/DataContract$BaseBuilder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    invoke-virtual {v1}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Landroid/rms/iaware/DataContract$BaseBuilder;->mCollectEvent:Landroid/rms/iaware/DataNormalizer;

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Landroid/rms/iaware/CollectData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3, v0}, Landroid/rms/iaware/CollectData;-><init>(IJLjava/lang/String;)V

    .line 88
    .local v1, "collectData":Landroid/rms/iaware/CollectData;
    return-object v1
.end method
