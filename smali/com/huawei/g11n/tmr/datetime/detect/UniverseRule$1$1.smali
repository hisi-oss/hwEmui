.class Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$1;
.super Ljava/util/HashMap;
.source "UniverseRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$1;->this$1:Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;

    .line 11
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 14
    const/16 p1, 0x4e2c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]),{0,1}[ ]*){0,1}([param_MMMM]|[param_MMM])[ ]+[regex_d][,.]{0,1}([ ]*[regex_y]\\.{0,1}){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const p1, 0x9c45

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "([param_MMMM]|[param_MMM])[ ]+[regex_d]\\s*(-|\u0926\u0947\u0916\u093f|\u09a5\u09c7\u0995\u09c7|ngantos|tekan|\u043f\u0430)\\s*[regex_d],{0,1}(\\s*[regex_y])(\\s*\u0436\\.)?"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
