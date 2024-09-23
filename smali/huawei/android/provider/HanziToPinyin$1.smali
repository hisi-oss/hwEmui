.class Lhuawei/android/provider/HanziToPinyin$1;
.super Ljava/util/HashMap;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/provider/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lhuawei/android/provider/HanziToPinyin;


# direct methods
.method constructor <init>(Lhuawei/android/provider/HanziToPinyin;)V
    .locals 2
    .param p1, "this$0"    # Lhuawei/android/provider/HanziToPinyin;

    .line 199
    iput-object p1, p0, Lhuawei/android/provider/HanziToPinyin$1;->this$0:Lhuawei/android/provider/HanziToPinyin;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 201
    const-string v0, "\u6c88"

    const-string v1, "SHEN"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v0, "\u66fe"

    const-string v1, "ZENG"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v0, "\u8d3e"

    const-string v1, "JIA"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "\u4fde"

    const-string v1, "YU"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "\u513f"

    const-string v1, "ER"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "\u5475"

    const-string v1, "HE"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "\u957f"

    const-string v1, "CHANG"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v0, "\u7565"

    const-string v1, "LUE"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "\u63a0"

    const-string v1, "LUE"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "\u4e7e"

    const-string v1, "QIAN"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v0, "\u79d8"

    const-string v1, "bi"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v0, "\u8584"

    const-string v1, "bo"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v0, "\u79cd"

    const-string v1, "chong"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "\u891a"

    const-string v1, "chu"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "\u555c"

    const-string v1, "chuai"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v0, "\u53e5"

    const-string v1, "gou"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v0, "\u839e"

    const-string v1, "guan"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "\u7094"

    const-string v1, "gui"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "\u85c9"

    const-string v1, "ji"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v0, "\u5708"

    const-string v1, "juan"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v0, "\u89d2"

    const-string v1, "jue"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v0, "\u961a"

    const-string v1, "kan"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v0, "\u9646"

    const-string v1, "lu"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, "\u7f2a"

    const-string v1, "miao"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v0, "\u4f74"

    const-string v1, "nai"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v0, "\u5152"

    const-string v1, "ni"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v0, "\u4e5c"

    const-string v1, "nie"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v0, "\u533a"

    const-string v1, "ou"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v0, "\u6734"

    const-string v1, "piao"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v0, "\u7e41"

    const-string v1, "po"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v0, "\u4ec7"

    const-string v1, "qiu"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v0, "\u5355"

    const-string v1, "shan"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v0, "\u76db"

    const-string v1, "sheng"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v0, "\u6298"

    const-string v1, "she"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v0, "\u5bbf"

    const-string v1, "su"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v0, "\u6d17"

    const-string v1, "xian"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v0, "\u89e3"

    const-string v1, "xie"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "\u5458"

    const-string v1, "yun"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "\u7b2e"

    const-string v1, "ze"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v0, "\u76f4"

    const-string v1, "zha"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v0, "\u7fdf"

    const-string v1, "zhai"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "\u796d"

    const-string v1, "zhai"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "\u963f"

    const-string v1, "e"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v0, "\u5b93"

    const-string v1, "fu"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "\u90a3"

    const-string v1, "nuo"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "\u5c09"

    const-string v1, "yu"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, "\u86fe"

    const-string v1, "yi"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v0, "\u67e5"

    const-string v1, "zha"

    invoke-virtual {p0, v0, v1}, Lhuawei/android/provider/HanziToPinyin$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method
