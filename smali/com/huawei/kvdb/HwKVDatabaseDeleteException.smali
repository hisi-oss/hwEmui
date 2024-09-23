.class public Lcom/huawei/kvdb/HwKVDatabaseDeleteException;
.super Lcom/huawei/kvdb/HwKVException;
.source "HwKVDatabaseDeleteException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    const-string v0, "Database file is deleted"

    invoke-direct {p0, v0}, Lcom/huawei/kvdb/HwKVException;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method
