.class public Lcom/huawei/kvdb/HwKVData;
.super Ljava/lang/Object;
.source "HwKVData.java"


# instance fields
.field public size:I

.field public value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVData;->value:[B

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/kvdb/HwKVData;->size:I

    .line 42
    return-void
.end method
