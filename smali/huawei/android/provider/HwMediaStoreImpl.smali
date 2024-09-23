.class public Lhuawei/android/provider/HwMediaStoreImpl;
.super Ljava/lang/Object;
.source "HwMediaStoreImpl.java"

# interfaces
.implements Landroid/provider/IHwMediaStore;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Landroid/provider/IHwMediaStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/provider/HwMediaStoreImpl;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lhuawei/android/provider/HwMediaStoreImpl;

    invoke-direct {v0}, Lhuawei/android/provider/HwMediaStoreImpl;-><init>()V

    sput-object v0, Lhuawei/android/provider/HwMediaStoreImpl;->mInstance:Landroid/provider/IHwMediaStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/provider/IHwMediaStore;
    .locals 1

    .line 42
    sget-object v0, Lhuawei/android/provider/HwMediaStoreImpl;->mInstance:Landroid/provider/IHwMediaStore;

    return-object v0
.end method


# virtual methods
.method public getPinyinForSort(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 24
    invoke-static {}, Lhuawei/android/provider/HanziToPinyin;->getInstance()Lhuawei/android/provider/HanziToPinyin;

    move-result-object v0

    .line 25
    .local v0, "hanzi":Lhuawei/android/provider/HanziToPinyin;
    invoke-virtual {v0}, Lhuawei/android/provider/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    sget-object v1, Lhuawei/android/provider/HwMediaStoreImpl;->TAG:Ljava/lang/String;

    const-string v2, "Has no chinese transliterator."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-object p1

    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Lhuawei/android/provider/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 31
    .local v1, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lhuawei/android/provider/HanziToPinyin$Token;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .local v2, "pinyin":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 33
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhuawei/android/provider/HanziToPinyin$Token;

    iget-object v4, v4, Lhuawei/android/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhuawei/android/provider/HanziToPinyin$Token;

    iget v4, v4, Lhuawei/android/provider/HanziToPinyin$Token;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 35
    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
