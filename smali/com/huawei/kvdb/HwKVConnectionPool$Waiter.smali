.class final Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;
.super Ljava/lang/Object;
.source "HwKVConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/kvdb/HwKVConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Waiter"
.end annotation


# instance fields
.field public alreadyHasConnection:Z

.field public connection:Lcom/huawei/kvdb/HwKVConnection;

.field public next:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->next:Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;

    .line 62
    iput-object v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->connection:Lcom/huawei/kvdb/HwKVConnection;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/kvdb/HwKVConnectionPool$Waiter;->alreadyHasConnection:Z

    .line 64
    return-void
.end method
