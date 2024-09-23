.class Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1$29;
.super Ljava/util/HashMap;
.source "LocaleRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1;
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
.field final synthetic this$1:Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1;


# direct methods
.method constructor <init>(Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1$29;->this$1:Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1;

    .line 275
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 277
    const/16 v0, 0x7920

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1;->access$0(Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1;)Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;->access$0(Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/huawei/g11n/tmr/datetime/detect/LocaleRules$1$29;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
