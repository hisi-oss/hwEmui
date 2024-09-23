.class public Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;
.super Ljava/lang/Object;
.source "HwLocaleHelperManagerExImpl.java"

# interfaces
.implements Lcom/android/internal/app/HwLocaleHelperManagerEx;


# static fields
.field private static mInstance:Lcom/android/internal/app/HwLocaleHelperManagerEx;


# instance fields
.field private hkNameMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private moNameMaps:Ljava/util/HashMap;
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
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    .line 30
    iput-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    .line 41
    invoke-direct {p0}, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->initHkMap()V

    .line 42
    invoke-direct {p0}, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->initHkMap1()V

    .line 43
    invoke-direct {p0}, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->initMoMap()V

    .line 44
    invoke-direct {p0}, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->initMoMap1()V

    .line 45
    return-void
.end method

.method public static getDefault()Lcom/android/internal/app/HwLocaleHelperManagerEx;
    .locals 1

    .line 33
    sget-object v0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->mInstance:Lcom/android/internal/app/HwLocaleHelperManagerEx;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;

    invoke-direct {v0}, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;-><init>()V

    sput-object v0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->mInstance:Lcom/android/internal/app/HwLocaleHelperManagerEx;

    .line 36
    :cond_0
    sget-object v0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->mInstance:Lcom/android/internal/app/HwLocaleHelperManagerEx;

    return-object v0
.end method

.method private initHkMap()V
    .locals 3

    .line 48
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "bo"

    const-string v2, "\u0f40\u0fb2\u0f74\u0f44\u0f0b\u0f42\u0f7c\u0f60\u0f72\u0f0b\u0f67\u0f7c\u0f44\u0f0b\u0f40\u0f7c\u0f44\u0f0b\u0f51\u0f58\u0f72\u0f42\u0f66\u0f0b\u0f42\u0f66\u0f63\u0f0b\u0f66\u0fb2\u0f72\u0f51\u0f0b\u0f60\u0f5b\u0f72\u0f53\u0f0b\u0f66\u0f0b\u0f41\u0f74\u0f63\u0f0d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "en"

    const-string v2, "Hong Kong, China"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "da"

    const-string v2, "Hongkong (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "el"

    const-string v2, "\u03a7\u03bf\u03bd\u03b3\u03ba \u039a\u03bf\u03bd\u03b3\u03ba (\u039a\u03af\u03bd\u03b1)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "es"

    const-string v2, "RAE de Hong Kong (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "eu"

    const-string v2, "Hong Kong (Txina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "fa"

    const-string v2, "\u0647\u0646\u06af \u06a9\u0646\u06af (\u0686\u06cc\u0646)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "de"

    const-string v2, "Hongkong (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "fr"

    const-string v2, "Hong Kong (Chine)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "gl"

    const-string v2, "Hong Kong (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "gu"

    const-string v2, "\u0ab9\u0acb\u0a82\u0a97 \u0a95\u0acb\u0a82\u0a97 (\u0a9a\u0abe\u0a87\u0aa8\u0abe)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "hi"

    const-string v2, "\u0939\u093e\u0901\u0917 \u0915\u093e\u0901\u0917 (\u091a\u0940\u0928)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "hu"

    const-string v2, "Hongkong (K\u00edna)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "in"

    const-string v2, "Hong Kong (Tiongkok)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "it"

    const-string v2, "Hong Kong (Cina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "iw"

    const-string v2, "\u05d4\u05d5\u05e0\u05d2 \u05e7\u05d5\u05e0\u05d2 (\u05e1\u05d9\u05df)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ja"

    const-string v2, "\u9999\u6e2f\uff08\u4e2d\u56fd\uff09"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "jv-Latn"

    const-string v2, "Hong Kong (Tiongkok)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "km"

    const-string v2, "\u17a0\u17bb\u1784\u1780\u17bb\u1784 (\u1785\u17b7\u1793)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "kn"

    const-string v2, "\u0cb9\u0cbe\u0c82\u0c97\u0ccd \u0c95\u0cbe\u0c82\u0c97\u0ccd (\u0c9a\u0cc8\u0ca8\u0cbe)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ko"

    const-string v2, "\ud64d\ucf69(\uc911\uad6d)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "vi"

    const-string v2, "H\u1ed3ng K\u00f4ng (Trung Qu\u1ed1c)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ur"

    const-string v2, "\u06c1\u0627\u0646\u06af \u06a9\u0627\u0646\u06af (\u0686\u06cc\u0646)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "uk"

    const-string v2, "\u0413\u043e\u043d\u043a\u043e\u043d\u0433 (\u041a\u0438\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ug"

    const-string v2, "\u062c\u06c7\u06ad\u06af\u0648 \u0634\u064a\u0627\u06ad\u06af\u0627\u06ad \u0626\u0627\u0644\u0627\u06be\u0649\u062f\u06d5 \u0645\u06d5\u0645\u06c7\u0631\u0649\u064a \u0631\u0627\u064a\u0648\u0646\u0649"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "th"

    const-string v2, "\u0e2e\u0e48\u0e2d\u0e07\u0e01\u0e07 (\u0e08\u0e35\u0e19)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ta"

    const-string v2, "\u0bb9\u0bbe\u0b99\u0bcd\u0b95\u0bbe\u0b99\u0bcd (\u0b9a\u0bc0\u0ba9\u0bbe)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "sw"

    const-string v2, "Hong Kong (Uchina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "si"

    const-string v2, "\u0dc4\u0ddc\u0d82 \u0d9a\u0ddc\u0d82 (\u0da0\u0dd3\u0db1\u0dba)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ru"

    const-string v2, "\u0413\u043e\u043d\u043a\u043e\u043d\u0433 (\u041a\u0438\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "pt"

    const-string v2, "Hong Kong (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "pl"

    const-string v2, "SRA Hongkong (Chiny)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "hr"

    const-string v2, "Hong Kong (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "et"

    const-string v2, "Hongkong (Hiina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "lv"

    const-string v2, "Honkonga (\u0136\u012bna)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "nl"

    const-string v2, "Hongkong (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ro"

    const-string v2, "Hong Kong (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "sl"

    const-string v2, "Hongkong (Kitajska)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "cs"

    const-string v2, "Hongkong (\u010c\u00edna)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method private initHkMap1()V
    .locals 3

    .line 90
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "pa-Guru"

    const-string v2, "\u0a39\u0a4b\u0a02\u0a17 \u0a15\u0a4b\u0a02\u0a17 (\u0a1a\u0a40\u0a28)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "or"

    const-string v2, "\u0b39\u0b02 \u0b15\u0b02 (\u0b1a\u0b40\u0b28)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "mr"

    const-string v2, "\u0939\u093e\u0901\u0917 \u0915\u093e\u0901\u0917 (\u091a\u0940\u0928)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "mn-Cyrl"

    const-string v2, "\u0425\u043e\u043d\u0433 \u041a\u043e\u043d\u0433 (\u0425\u044f\u0442\u0430\u0434)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ml"

    const-string v2, "\u0d39\u0d4b\u0d19\u0d4d\u0d15\u0d4b\u0d19\u0d4d\u0d19\u0d4d (\u0d1a\u0d48\u0d28)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "mi"

    const-string v2, "Hongipua (Haina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "bn"

    const-string v2, "\u09b9\u0982\u0995\u0982 (\u099a\u09c0\u09a8)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "fi"

    const-string v2, "Hongkong (Kiina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "kk"

    const-string v2, "\u0413\u043e\u043d\u043a\u043e\u043d\u0433 (\u049a\u044b\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "lo"

    const-string v2, "\u200b\u0eae\u0ec8\u0ead\u0e87\u0e81\u0ebb\u0e87 (\u0e88\u0eb5\u0e99)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "lt"

    const-string v2, "Honkongas (Kinija)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "am"

    const-string v2, "\u1206\u1295\u130d \u12ae\u1295\u130d (\u127b\u12ed\u1293)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ar"

    const-string v2, "\u0647\u0648\u0646\u063a \u0643\u0648\u0646\u063a (\u0627\u0644\u0635\u064a\u0646)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "as"

    const-string v2, "\u09b9\u0982 \u0995\u0982 (\u099a\u09c0\u09a8)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "az-Latn"

    const-string v2, "Honkonq (\u00c7in)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "be"

    const-string v2, "\u0413\u0430\u043d\u043a\u043e\u043d\u0433 (\u041a\u0456\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "bg"

    const-string v2, "\u0425\u043e\u043d\u043a\u043e\u043d\u0433 (\u041a\u0438\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "bs-Latn"

    const-string v2, "Hong Kong (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ca"

    const-string v2, "Hong Kong (Xina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "nb"

    const-string v2, "Hongkong (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ne"

    const-string v2, "\u0939\u0919\u0915\u0919 (\u091a\u0940\u0928)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "sk"

    const-string v2, "Hongkong (\u010c\u00edna)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "sr-Latn"

    const-string v2, "Hongkong (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "sv"

    const-string v2, "Hongkong (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "te"

    const-string v2, "\u0c39\u0c3e\u0c02\u0c17\u0c4d \u0c15\u0c3e\u0c02\u0c17\u0c4d (\u0c1a\u0c46\u0c56\u0c28\u0c3e)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "uz-Latn"

    const-string v2, "Gonkong (Xitoy)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "ka"

    const-string v2, "\u10f0\u10dd\u10dc\u10d9\u10dd\u10dc\u10d2\u10d8 (\u10e9\u10d8\u10dc\u10d4\u10d7\u10d8)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "mai-Deva"

    const-string v2, "\u0939\u093e\u0902\u0917-\u0915\u093e\u0902\u0917 (\u091a\u0940\u0928)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    const-string v1, "mk"

    const-string v2, "\u0425\u043e\u043d\u0433\u043a\u043e\u043d\u0433 (\u041a\u0438\u043d\u0430)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method private initMoMap()V
    .locals 3

    .line 122
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "bo"

    const-string v2, "\u0f40\u0fb2\u0f74\u0f44\u0f0b\u0f42\u0f7c\u0f60\u0f72\u0f0b\u0f68\u0f60\u0f7c\u0f0b\u0f58\u0f53\u0f0b\u0f51\u0f58\u0f72\u0f42\u0f66\u0f0b\u0f42\u0f66\u0f63\u0f0b\u0f66\u0fb2\u0f72\u0f51\u0f0b\u0f60\u0f5b\u0f72\u0f53\u0f0b\u0f66\u0f0b\u0f41\u0f74\u0f63\u0f0d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "en"

    const-string v2, "Macau, China"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "da"

    const-string v2, "Macao (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "es"

    const-string v2, "RAE de Macao (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "el"

    const-string v2, "\u039c\u03b1\u03ba\u03ac\u03bf (\u039a\u03af\u03bd\u03b1)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "eu"

    const-string v2, "Macao (Txina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "fa"

    const-string v2, "\u0645\u0627\u06a9\u0627\u0626\u0648 (\u0686\u06cc\u0646)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "de"

    const-string v2, "Macau (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "fr"

    const-string v2, "Macao (Chine)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "gl"

    const-string v2, "Macau (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "gu"

    const-string v2, "\u0aae\u0a95\u0abe\u0a89 (\u0a9a\u0abe\u0a87\u0aa8\u0abe)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "hi"

    const-string v2, "\u092e\u0915\u093e\u0909 (\u091a\u0940\u0928)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "hu"

    const-string v2, "Maka\u00f3 (K\u00edna)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "in"

    const-string v2, "Makau (Tiongkok)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "it"

    const-string v2, "Macao (Cina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "iw"

    const-string v2, "\u05de\u05e7\u05d0\u05d5 (\u05e1\u05d9\u05df)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ja"

    const-string v2, "\u30de\u30ab\u30aa\uff08\u4e2d\u56fd\uff09"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "jv-Latn"

    const-string v2, "Macau (Tiongkok)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "km"

    const-string v2, "\u1798\u17c9\u17b6\u1780\u17b6\u179c (\u1785\u17b7\u1793)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "kn"

    const-string v2, "\u0cae\u0c95\u0cbe\u0cb5\u0ccd (\u0c9a\u0cc8\u0ca8\u0cbe)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ko"

    const-string v2, "\ub9c8\uce74\uc624(\uc911\uad6d)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "vi"

    const-string v2, "Ma Cao (Trung Qu\u1ed1c)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ur"

    const-string v2, "\u0645\u06a9\u0627\u0624 (\u0686\u06cc\u0646)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "uk"

    const-string v2, "\u041c\u0430\u043a\u0430\u043e (\u041a\u0438\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ug"

    const-string v2, "\u062c\u06c7\u06ad\u06af\u0648 \u0626\u0627\u06cb\u0645\u06d0\u0646 \u0626\u0627\u0644\u0627\u06be\u0649\u062f\u06d5 \u0645\u06d5\u0645\u06c7\u0631\u0649\u064a \u0631\u0627\u064a\u0648\u0646\u0649"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "th"

    const-string v2, "\u0e21\u0e32\u0e40\u0e01\u0e4a\u0e32 (\u0e08\u0e35\u0e19)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ka"

    const-string v2, "\u10db\u10d0\u10d9\u10d0\u10dd (\u10e9\u10d8\u10dc\u10d4\u10d7\u10d8)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "mai-Deva"

    const-string v2, "\u092e\u0915\u093e\u0909 (\u091a\u0940\u0928)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "mk"

    const-string v2, "\u041c\u0430\u043a\u0430\u043e (\u041a\u0438\u043d\u0430)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "hr"

    const-string v2, "Makao (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "et"

    const-string v2, "Macau (Hiina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "lv"

    const-string v2, "Makao (\u0136\u012bna)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "nl"

    const-string v2, "Macau (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ro"

    const-string v2, "Macao (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "sl"

    const-string v2, "Macao (Kitajska)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "cs"

    const-string v2, "Macao (\u010c\u00edna)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method private initMoMap1()V
    .locals 3

    .line 161
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ta"

    const-string v2, "\u0bae\u0b95\u0bcd\u0b95\u0bbe\u0bb5\u0bc1 (\u0b9a\u0bc0\u0ba9\u0bbe)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "sw"

    const-string v2, "Makau (Uchina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "si"

    const-string v2, "\u0db8\u0dd0\u0d9a\u0dcf\u0dc0\u0dd4 (\u0da0\u0dd3\u0db1\u0dba)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ru"

    const-string v2, "\u041c\u0430\u043a\u0430\u043e (\u041a\u0438\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "pt"

    const-string v2, "Macau (China)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "pl"

    const-string v2, "SRA Makau (Chiny)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "pa-Guru"

    const-string v2, "\u0a2e\u0a15\u0a3e\u0a09 (\u0a1a\u0a40\u0a28)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "or"

    const-string v2, "\u0b2e\u0b3e\u0b15\u0b3e\u0b09 (\u0b1a\u0b40\u0b28)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "mr"

    const-string v2, "\u092e\u0915\u093e\u0909 (\u091a\u0940\u0928)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "mn-Cyrl"

    const-string v2, "\u041c\u0430\u043a\u0430\u043e (\u0425\u044f\u0442\u0430\u0434)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ml"

    const-string v2, "\u0d2e\u0d15\u0d4d\u0d15\u0d3e\u0d35\u0d41 (\u0d1a\u0d48\u0d28)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "mi"

    const-string v2, "Makau (Haina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "bn"

    const-string v2, "\u09ae\u09cd\u09af\u09be\u0995\u09be\u0993 (\u099a\u09c0\u09a8)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "fi"

    const-string v2, "Macao (Kiina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "kk"

    const-string v2, "\u041c\u0430\u043a\u0430\u043e (\u049a\u044b\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "lo"

    const-string v2, "\u0ea1\u0eb2\u0ec0\u0e81\u0ebb\u0ec9\u0eb2 (\u0e88\u0eb5\u0e99)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "lt"

    const-string v2, "Makao (Kinija)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "am"

    const-string v2, "\u121b\u12ab\u12cd (\u127b\u12ed\u1293)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ar"

    const-string v2, "\u0645\u0627\u0643\u0627\u0648 (\u0627\u0644\u0635\u064a\u0646)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "as"

    const-string v2, "\u09ae\u09be\u0995\u09be\u0989 (\u099a\u09c0\u09a8)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "az-Latn"

    const-string v2, "Makao (\u00c7in)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "be"

    const-string v2, "\u041c\u0430\u043a\u0430\u0430 (\u041a\u0456\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "bg"

    const-string v2, "\u041c\u0430\u043a\u0430\u043e (\u041a\u0438\u0442\u0430\u0439)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "bs-Latn"

    const-string v2, "Makao (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ca"

    const-string v2, "Macau (Xina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "nb"

    const-string v2, "Macao (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "ne"

    const-string v2, "\u092e\u0915\u093e\u0909 (\u091a\u0940\u0928)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "sk"

    const-string v2, "Macao (\u010c\u00edna)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "sr-Latn"

    const-string v2, "Makao (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "sv"

    const-string v2, "Macao (Kina)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "te"

    const-string v2, "\u0c2e\u0c15\u0c3e\u0c35\u0c41 (\u0c1a\u0c48\u0c28\u0c3e)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    const-string v1, "uz-Latn"

    const-string v2, "Makao (Xitoy)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method


# virtual methods
.method public replaceTaiwan2TaiwanChina(Ljava/util/Locale;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "displayLocale"    # Ljava/util/Locale;
    .param p3, "result"    # Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "localCountry":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "localLanguage":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "localScript":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 209
    .local v3, "localLangScript":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_1

    .line 210
    const-string v4, ""

    return-object v4

    .line 212
    :cond_1
    const-string v4, "TW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 213
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "zh"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "ur"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xe

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "ug"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x14

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "sw"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xd

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "pa"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "or"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xb

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "my"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto/16 :goto_2

    :sswitch_7
    const-string v4, "ml"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xf

    goto/16 :goto_2

    :sswitch_8
    const-string v4, "mi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_9
    const-string v4, "lt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x11

    goto/16 :goto_2

    :sswitch_a
    const-string v4, "jv"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x12

    goto/16 :goto_2

    :sswitch_b
    const-string v4, "iw"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_c
    const-string v4, "gl"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_d
    const-string v4, "et"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x10

    goto :goto_2

    :sswitch_e
    const-string v4, "ca"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_f
    const-string v4, "bo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x13

    goto :goto_2

    :sswitch_10
    const-string v4, "bg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_11
    const-string v4, "be"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_12
    const-string v4, "as"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_13
    const-string v4, "ar"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_14
    const-string v4, "am"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-CN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 287
    .local v4, "cnLocale":Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .end local v4    # "cnLocale":Ljava/util/Locale;
    goto/16 :goto_3

    .line 283
    :pswitch_0
    const-string p3, "\u062a\u06d5\u064a\u06cb\u06d5\u0646\u060c \u062c\u0648\u06ad\u06af\u0648"

    .line 284
    goto/16 :goto_3

    .line 280
    :pswitch_1
    const-string p3, "\u0f40\u0fb2\u0f74\u0f44\u0f0b\u0f42\u0f7c\u0f60\u0f72\u0f0b\u0f50\u0f60\u0f7a\u0f0b\u0f5d\u0f53\u0f0d"

    .line 281
    goto/16 :goto_3

    .line 277
    :pswitch_2
    const-string p3, "Taiwan, Tiongkok"

    .line 278
    goto :goto_3

    .line 274
    :pswitch_3
    const-string p3, "Taivanas (Kinija)"

    .line 275
    goto :goto_3

    .line 271
    :pswitch_4
    const-string p3, "Taiwan, China"

    .line 272
    goto :goto_3

    .line 268
    :pswitch_5
    const-string p3, "\u0d24\u0d3e\u0d2f\u0d4d\u0d35\u0d3e\u0d7b, \u0d1a\u0d48\u0d28"

    .line 269
    goto :goto_3

    .line 265
    :pswitch_6
    const-string p3, "\u062a\u0627\u0626\u06cc\u0648\u0627\u0646\u060c \u0686\u06cc\u0646"

    .line 266
    goto :goto_3

    .line 262
    :pswitch_7
    const-string p3, "Taiwani, Uchina"

    .line 263
    goto :goto_3

    .line 259
    :pswitch_8
    const-string p3, "\u0a24\u0a3e\u0a08\u0a35\u0a3e\u0a28, \u0a1a\u0a40\u0a28"

    .line 260
    goto :goto_3

    .line 256
    :pswitch_9
    const-string p3, "\u0b24\u0b3e\u0b07\u0b71\u0b3e\u0b28, \u0b1a\u0b3e\u0b07\u0b28\u0b3e"

    .line 257
    goto :goto_3

    .line 253
    :pswitch_a
    const-string p3, "Taiwana, Haina"

    .line 254
    goto :goto_3

    .line 250
    :pswitch_b
    const-string p3, "Taiw\u00e1n, China"

    .line 251
    goto :goto_3

    .line 247
    :pswitch_c
    const-string p3, "Taiwan, Xina"

    .line 248
    goto :goto_3

    .line 244
    :pswitch_d
    const-string p3, "\u0422\u0430\u0439\u0432\u0430\u043d, \u041a\u0438\u0442\u0430\u0439"

    .line 245
    goto :goto_3

    .line 241
    :pswitch_e
    const-string p3, "\u0422\u0430\u0439\u0432\u0430\u043d\u044c, \u041a\u0456\u0442\u0430\u0439"

    .line 242
    goto :goto_3

    .line 238
    :pswitch_f
    const-string p3, "\u099f\u09be\u0987\u09f1\u09be\u09a8, \u099a\u09c0\u09a8"

    .line 239
    goto :goto_3

    .line 235
    :pswitch_10
    const-string p3, "\u05d8\u05d9\u05d9\u05d5\u05d5\u05d0\u05df, \u05e1\u05d9\u05df"

    .line 236
    goto :goto_3

    .line 228
    :pswitch_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ZG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 229
    const-string p3, "\u1011\u102d\u102f\u1004\u1039\u101d\u1019\u1039\u104a \u1010\u101b\u102f\u1010\u1039"

    goto :goto_3

    .line 231
    :cond_3
    const-string p3, "\u1011\u102d\u102f\u1004\u103a\u101d\u1019\u103a\u104a \u1010\u101b\u102f\u1010\u103a"

    .line 233
    goto :goto_3

    .line 225
    :pswitch_12
    const-string p3, "\u062a\u0627\u064a\u0648\u0627\u0646\u060c \u0627\u0644\u0635\u064a\u0646"

    .line 226
    goto :goto_3

    .line 222
    :pswitch_13
    const-string p3, "\u1273\u12ed\u12cb\u1295\u1363 \u127b\u12ed\u1293"

    .line 223
    goto :goto_3

    .line 215
    :pswitch_14
    const-string v4, "Hant"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 216
    const-string p3, "\u4e2d\u570b\u53f0\u7063"

    goto :goto_3

    .line 218
    :cond_4
    const-string p3, "\u4e2d\u56fd\u53f0\u6e7e"

    .line 220
    nop

    .line 292
    :cond_5
    :goto_3
    invoke-virtual {p1, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "oldCountry":Ljava/lang/String;
    move-object v5, p3

    .line 294
    .local v5, "displayResult":Ljava/lang/String;
    const-string v6, "HK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 295
    iget-object v6, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->hkNameMaps:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 296
    .local v6, "replaceCountry":Ljava/lang/String;
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 297
    return-object v5

    .line 299
    .end local v6    # "replaceCountry":Ljava/lang/String;
    :cond_6
    const-string v6, "MO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 300
    iget-object v6, p0, Lhuawei/com/android/internal/app/HwLocaleHelperManagerExImpl;->moNameMaps:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 301
    .restart local v6    # "replaceCountry":Ljava/lang/String;
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 302
    return-object v5

    .line 305
    .end local v6    # "replaceCountry":Ljava/lang/String;
    :cond_7
    return-object p3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc2c -> :sswitch_14
        0xc31 -> :sswitch_13
        0xc32 -> :sswitch_12
        0xc43 -> :sswitch_11
        0xc45 -> :sswitch_10
        0xc4d -> :sswitch_f
        0xc5e -> :sswitch_e
        0xcaf -> :sswitch_d
        0xce5 -> :sswitch_c
        0xd2e -> :sswitch_b
        0xd4c -> :sswitch_a
        0xd88 -> :sswitch_9
        0xd9c -> :sswitch_8
        0xd9f -> :sswitch_7
        0xdac -> :sswitch_6
        0xde3 -> :sswitch_5
        0xdf1 -> :sswitch_4
        0xe64 -> :sswitch_3
        0xe92 -> :sswitch_2
        0xe9d -> :sswitch_1
        0xf2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
