.class Lcom/huawei/g11n/tmr/datetime/detect/Rules$4;
.super Ljava/util/HashMap;
.source "Rules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/detect/Rules;
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
.field final synthetic this$0:Lcom/huawei/g11n/tmr/datetime/detect/Rules;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/detect/Rules;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/detect/Rules$4;->this$0:Lcom/huawei/g11n/tmr/datetime/detect/Rules;

    .line 185
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 187
    const/16 p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "[param_pastForward]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/16 p1, 0x65

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<![0-9])1[0-9]{3}\\s*[./-]"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/Rules$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
