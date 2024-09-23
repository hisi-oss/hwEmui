.class public Lcom/huawei/kvdb/HwKVFullException;
.super Lcom/huawei/kvdb/HwKVException;
.source "HwKVFullException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const-string v0, "No space is left."

    invoke-direct {p0, v0}, Lcom/huawei/kvdb/HwKVException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method
