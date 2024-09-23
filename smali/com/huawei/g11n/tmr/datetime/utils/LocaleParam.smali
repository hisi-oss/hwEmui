.class public Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;
.super Ljava/lang/Object;
.source "LocaleParam.java"


# static fields
.field public static final SAVE_OR:Ljava/lang/String; = "\\u0604"

.field public static final WITHNOT_B:Ljava/lang/String; = "\\u0605"

.field private static support:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private defaultParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/lang/String;

.field private param:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param_b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 73

    .line 21
    const-string v0, "en"

    const-string v1, "de"

    const-string v2, "fr"

    const-string v3, "it"

    .line 22
    const-string v4, "pt"

    const-string v5, "es"

    const-string v6, "es_MX"

    const-string v7, "ca"

    const-string v8, "ru"

    const-string v9, "uk"

    const-string v10, "pl"

    const-string v11, "cs"

    const-string v12, "el"

    const-string v13, "hu"

    .line 23
    const-string v14, "hr"

    const-string v15, "ro"

    const-string v16, "da"

    const-string v17, "fi"

    const-string v18, "nl"

    const-string v19, "nb"

    const-string v20, "sv"

    const-string v21, "sk"

    const-string v22, "tr"

    const-string v23, "ar"

    const-string v24, "he"

    .line 24
    const-string v25, "th"

    const-string v26, "ja"

    const-string v27, "zh_hans"

    const-string v28, "ko"

    const-string v29, "ms"

    const-string v30, "hi"

    const-string v31, "id"

    const-string v32, "vi"

    const-string v33, "az"

    const-string v34, "et"

    .line 25
    const-string v35, "eu"

    const-string v36, "bg"

    const-string v37, "bs"

    const-string v38, "fa"

    const-string v39, "km"

    const-string v40, "ka"

    const-string v41, "gl"

    const-string v42, "lv"

    const-string v43, "lt"

    const-string v44, "mk"

    .line 26
    const-string v45, "sr"

    const-string v46, "sl"

    const-string v47, "ur"

    const-string v48, "uz"

    const-string v49, "bo"

    const-string v50, "si"

    const-string v51, "my"

    const-string v52, "be"

    const-string v53, "kk"

    const-string v54, "bn"

    const-string v55, "lo"

    const-string v56, "fil"

    const-string v57, "ne"

    const-string v58, "jv"

    .line 28
    const-string v59, "am"

    const-string v60, "as"

    const-string v61, "or"

    const-string v62, "gu"

    const-string v63, "kn"

    const-string v64, "mr"

    const-string v65, "ml"

    const-string v66, "mai"

    const-string v67, "mi"

    const-string v68, "mn"

    const-string v69, "pa"

    const-string v70, "sw"

    .line 29
    const-string v71, "te"

    const-string v72, "ta"

    .line 21
    filled-new-array/range {v0 .. v72}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->support:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "locale"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    .line 13
    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    .line 267
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam$1;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam$1;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param_b:Ljava/util/HashMap;

    .line 321
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam$2;

    invoke-direct {v0, p0}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam$2;-><init>(Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;)V

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->defaultParam:Ljava/util/HashMap;

    .line 34
    invoke-static {p1}, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->isSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 35
    iput-object p1, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_en;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_en;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_en;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_de;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_de;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_de;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fr;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fr;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fr;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_it;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 45
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pt;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pt;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pt;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "es_MX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es_MX;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es_MX;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_es_MX;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ca;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ca;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ca;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 53
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ru;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ru;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ru;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 54
    :cond_8
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 55
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_uk;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_uk;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_uk;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 56
    :cond_9
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 57
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pl;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 58
    :cond_a
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_cs;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 61
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_el;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_el;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_el;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 62
    :cond_c
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 63
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hu;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 64
    :cond_d
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "hr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 65
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hr;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hr;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hr;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 66
    :cond_e
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 67
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ro;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 68
    :cond_f
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 69
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_da;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_da;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_da;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 70
    :cond_10
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 71
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fi;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fi;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fi;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 72
    :cond_11
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 73
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_nl;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_nl;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_nl;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 74
    :cond_12
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 75
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_nb;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_nb;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_nb;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 76
    :cond_13
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "sv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 77
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sv;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 78
    :cond_14
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 79
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sk;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 80
    :cond_15
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 81
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_tr;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 82
    :cond_16
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 83
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ar;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ar;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ar;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 85
    :cond_17
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 86
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_he;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_he;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_he;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 87
    :cond_18
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 88
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_th;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_th;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_th;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 89
    :cond_19
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 90
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ja;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 91
    :cond_1a
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 92
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ko;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ko;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ko;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 93
    :cond_1b
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 94
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ms;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 95
    :cond_1c
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 96
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_hi;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 97
    :cond_1d
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 98
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_id;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_id;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_id;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 99
    :cond_1e
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 100
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_vi;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 101
    :cond_1f
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "zh_hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 102
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_zh_hans;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 103
    :cond_20
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "az"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 104
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_az;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 105
    :cond_21
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "et"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 106
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_et;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_et;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_et;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 107
    :cond_22
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 108
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_eu;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_eu;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_eu;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 109
    :cond_23
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "bg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 110
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bg;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 111
    :cond_24
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "bs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 112
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bs;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bs;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bs;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 113
    :cond_25
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 114
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fa;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fa;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fa;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 115
    :cond_26
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "bo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 116
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bo;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bo;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bo;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 117
    :cond_27
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "km"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 118
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_km;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_km;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_km;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 119
    :cond_28
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ka"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 120
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ka;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 121
    :cond_29
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 122
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_gl;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_gl;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_gl;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 123
    :cond_2a
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 124
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lv;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 125
    :cond_2b
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "lt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 126
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lt;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lt;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lt;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 127
    :cond_2c
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "mk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 128
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mk;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mk;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mk;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 129
    :cond_2d
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "si"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 130
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_si;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_si;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_si;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 131
    :cond_2e
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "sr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 132
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sr;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sr;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sr;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 133
    :cond_2f
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "sl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 134
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sl;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sl;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sl;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 135
    :cond_30
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 136
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ur;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 137
    :cond_31
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "uz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 138
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_uz;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_uz;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_uz;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 139
    :cond_32
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 140
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_my;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_my;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_my;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 141
    :cond_33
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 142
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_be;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_be;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_be;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 143
    :cond_34
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "kk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 144
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kk;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 145
    :cond_35
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "bn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 146
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_bn;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 147
    :cond_36
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "lo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 148
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lo;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lo;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_lo;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 149
    :cond_37
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "fil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 150
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fil;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fil;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_fil;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 151
    :cond_38
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ne"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 152
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ne;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ne;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ne;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 153
    :cond_39
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "jv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 154
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_jv;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_jv;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_jv;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 156
    :cond_3a
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "am"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 157
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_am;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 158
    :cond_3b
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "as"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 159
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_as;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_as;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_as;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 160
    :cond_3c
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "or"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 161
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_or;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 162
    :cond_3d
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "gu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 163
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_gu;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_gu;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_gu;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 164
    :cond_3e
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 165
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kn;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kn;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_kn;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 166
    :cond_3f
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "mr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 167
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mr;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 168
    :cond_40
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 169
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ml;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 170
    :cond_41
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "mai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 171
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mai;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mai;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mai;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 172
    :cond_42
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 173
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mi;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mi;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mi;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto :goto_0

    .line 174
    :cond_43
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "mn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 175
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_mn;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto :goto_0

    .line 176
    :cond_44
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "pa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 177
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pa;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pa;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_pa;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto :goto_0

    .line 178
    :cond_45
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 179
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_sw;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto :goto_0

    .line 180
    :cond_46
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 181
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_te;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_te;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_te;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    goto :goto_0

    .line 182
    :cond_47
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 183
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ta;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ta;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_ta;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    .line 185
    :cond_48
    :goto_0
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    if-nez v0, :cond_49

    .line 186
    new-instance v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_en;

    invoke-direct {v0}, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_en;-><init>()V

    iget-object v0, v0, Lcom/huawei/g11n/tmr/datetime/data/LocaleParamGet_en;->date:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    .line 188
    :cond_49
    return-void
.end method

.method public static isRelDates(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "isRel":Z
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const-string v1, "zh_hans"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ja"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ko"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    const/4 v0, 0x1

    .line 311
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u060c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ur"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    const/4 v0, 0x1

    .line 314
    :cond_2
    :goto_0
    return v0
.end method

.method public static isSupport(Ljava/lang/String;)Z
    .locals 1
    .param p0, "locale"    # Ljava/lang/String;

    .line 191
    sget-object v0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->support:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "pName"    # Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_1
    const-string v0, ""

    .line 197
    :goto_0
    nop

    .line 200
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->defaultParam:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->defaultParam:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 204
    :cond_2
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 205
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "temp":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 207
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param_b:Ljava/util/HashMap;

    .line 208
    .local v3, "map2":Ljava/util/Map;
    const/4 v4, 0x0

    .line 209
    .local v4, "mark":Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    iget-object v5, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->locale:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 212
    :cond_3
    const-string v4, "\\b"

    .line 213
    :goto_1
    array-length v5, v1

    const/4 v6, 0x0

    move-object v7, v4

    move v4, v6

    .end local v4    # "mark":Ljava/lang/String;
    .local v7, "mark":Ljava/lang/String;
    :goto_2
    if-lt v4, v5, :cond_4

    .line 231
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "temp":[Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "map2":Ljava/util/Map;
    .end local v7    # "mark":Ljava/lang/String;
    goto :goto_4

    .line 213
    .restart local v1    # "temp":[Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "map2":Ljava/util/Map;
    .restart local v7    # "mark":Ljava/lang/String;
    :cond_4
    aget-object v8, v1, v4

    .line 214
    .local v8, "t":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 215
    goto :goto_3

    .line 216
    :cond_5
    const-string v9, "\\u0604"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 217
    const-string v9, "|"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    goto :goto_3

    .line 219
    :cond_6
    const-string v9, "\\u0605"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 220
    const-string v7, ""

    .line 221
    goto :goto_3

    .line 223
    :cond_7
    const-string v9, "\\b"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 224
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_8
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    const-string v9, "\\b"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 228
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :cond_9
    const-string v9, "|"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    .end local v8    # "t":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 235
    .end local v1    # "temp":[Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "map2":Ljava/util/Map;
    .end local v7    # "mark":Ljava/lang/String;
    :cond_a
    :goto_4
    return-object v0
.end method

.method public getWithoutB(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "pName"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/g11n/tmr/datetime/utils/LocaleParam;->param:Ljava/util/HashMap;

    .line 242
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 241
    :goto_0
    nop

    .line 243
    .local v0, "result":Ljava/lang/String;
    const-string v1, "\\u0605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 244
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "temp":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v2, "sb":Ljava/lang/StringBuffer;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-lt v5, v3, :cond_2

    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "temp":[Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    goto :goto_3

    .line 246
    .restart local v1    # "temp":[Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    aget-object v6, v1, v5

    .line 247
    .local v6, "t":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 248
    goto :goto_2

    .line 249
    :cond_3
    const-string v7, "\\u0604"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 250
    goto :goto_2

    .line 251
    :cond_4
    const-string v7, "\\u0605"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 252
    goto :goto_2

    .line 254
    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "|"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    .end local v6    # "t":Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 261
    .end local v1    # "temp":[Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    :goto_3
    return-object v0
.end method
