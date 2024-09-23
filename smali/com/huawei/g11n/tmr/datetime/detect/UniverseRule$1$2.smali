.class Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$2;
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
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$2;->this$1:Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1;

    .line 22
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 27
    const p1, 0x9c43

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<![-/.])([regex_d])\\.?\\s*(-|\u2013|~|\u0926\u0947\u0916\u093f|\u09a5\u09c7\u0995\u09c7)\\s*([regex_d])(?!\\3)(/|-|(\\.[ ]*))([regex_m])(\\6([regex_y])((\\.|\\s*\u0433\\.|\\s*\u0436\\.)?))?(?![-/.])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const p1, 0x9c44

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<![-/.])(([regex_y])\\s*([-/]|\\.)\\s*)([regex_m])\\s*\\5\\s*([regex_d])\\.?(?!\\5])(\\s*(-|\u2013|~|\u0926\u0947\u0916\u093f|\u09a5\u09c7\u0995\u09c7)\\s*)([regex_d])\\.?(?![.\\d\u2013~-])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const p1, 0x9c46

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "(?<![-/.])([regex_m])([-/]|\\.[ ]{0,3})([regex_d])\\.?\\s*(?!\\3)(-|\u2013|~|\u0926\u0947\u0916\u093f|\u09a5\u09c7\u0995\u09c7)\\s*([regex_d])\\.?(?![.\\d\u2013~-])"

    invoke-virtual {p0, p1, v0}, Lcom/huawei/g11n/tmr/datetime/detect/UniverseRule$1$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
