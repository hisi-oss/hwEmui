.class Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;
.super Ljava/util/HashMap;
.source "UniverseRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;->this$0:Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule;

    .line 8
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 11
    const/16 p1, 0x4e22

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$1;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const/16 p1, 0x4e23

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$2;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$2;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/16 p1, 0x4e24

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$3;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$3;-><init>(Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;)V

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
