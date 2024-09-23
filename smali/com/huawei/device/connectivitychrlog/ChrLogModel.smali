.class public Lcom/huawei/device/connectivitychrlog/ChrLogModel;
.super Ljava/lang/Object;
.source "ChrLogModel.java"


# instance fields
.field public chrLogComHeadModel:Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;

.field public chrLogFileHeadModel:Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;

.field public logEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;

    .line 27
    new-instance v0, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;

    invoke-direct {v0}, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogModel;->logEvents:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;

    invoke-virtual {v0}, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->getTotalBytes()I

    move-result v0

    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;

    .line 37
    invoke-virtual {v1}, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->getTotalBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    .local v0, "length":I
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;

    .line 42
    .local v2, "logEvent":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    invoke-virtual {v2}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->getTotalBytes()I

    move-result v3

    add-int/2addr v0, v3

    .line 43
    .end local v2    # "logEvent":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    goto :goto_0

    .line 45
    :cond_0
    new-array v1, v0, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 47
    .local v1, "bytebuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;

    invoke-virtual {v2}, Lcom/huawei/device/connectivitychrlog/CSegFILEHEAD;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 48
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;

    invoke-virtual {v2}, Lcom/huawei/device/connectivitychrlog/CSegCOMHEAD;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 50
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;

    .line 51
    .local v3, "logEvent":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    invoke-virtual {v3}, Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 52
    .end local v3    # "logEvent":Lcom/huawei/device/connectivitychrlog/ChrLogBaseModel;
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
