.class Lcom/huawei/g11n/tmr/address/it/SerEngine$1;
.super Ljava/util/HashSet;
.source "SerEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/address/it/SerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x27945bd2dbc2a28bL


# direct methods
.method constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 50
    const-string v0, "Piazzapulita "

    invoke-virtual {p0, v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "Tokio Hotel "

    invoke-virtual {p0, v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v0, "Piazza Universit\u00e0 "

    invoke-virtual {p0, v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v0, "Ristorante Cinese "

    invoke-virtual {p0, v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v0, "Giardino Inglese "

    invoke-virtual {p0, v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v0, "Ristorante Italiano "

    invoke-virtual {p0, v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v0, "Facolt\u00e0 di Lettere "

    invoke-virtual {p0, v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v0, "Strada Grande Comunicazione "

    invoke-virtual {p0, v0}, Lcom/huawei/g11n/tmr/address/it/SerEngine$1;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
