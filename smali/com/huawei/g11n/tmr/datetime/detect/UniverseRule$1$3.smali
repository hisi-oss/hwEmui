.class Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$3;
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
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$3;->this$1:Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;

    .line 44
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const/16 p1, 0x4e2e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]),{0,1}[ ]*)?[regex_d]\\s*(/|-|\\.)\\s*([regex_m])(\\s*\\4\\s*[regex_y]((\\.|\\s*\u0433\\.)?)){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/16 p1, 0x4e2f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]),{0,1}[ ]*)?([regex_m])\\s*(/|-|\\.)\\s*[regex_d](\\s*\\5\\s*[regex_y](\\.{0,1})){0,1}"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/16 p1, 0x4e30

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(([param_EEEE]|[param_E]),{0,1}[ ]*)?[regex_y]\\s*(/|-|\\.)\\s*([regex_m])\\s*\\5\\s*[regex_d]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
