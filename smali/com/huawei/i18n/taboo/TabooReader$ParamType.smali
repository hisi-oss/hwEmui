.class public final enum Lcom/huawei/i18n/taboo/TabooReader$ParamType;
.super Ljava/lang/Enum;
.source "TabooReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/i18n/taboo/TabooReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/i18n/taboo/TabooReader$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/i18n/taboo/TabooReader$ParamType;

.field public static final enum BLACK_CITY:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

.field public static final enum BLACK_LANG:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

.field public static final enum CITY_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

.field public static final enum LANGUAGE_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

.field public static final enum REGION_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

.field public static final enum TABOO_BLACK_LANG:Lcom/huawei/i18n/taboo/TabooReader$ParamType;


# instance fields
.field private prefix:Ljava/lang/String;

.field private scopeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 41
    new-instance v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    const-string v1, "LANGUAGE_NAME"

    const-string v2, "lang"

    const-string v3, "langs"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->LANGUAGE_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    new-instance v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    const-string v1, "REGION_NAME"

    const-string v2, "region"

    const-string v3, "regions"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->REGION_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    new-instance v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    const-string v1, "BLACK_LANG"

    const-string v2, "black_lang"

    const-string v3, ""

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->BLACK_LANG:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    .line 42
    new-instance v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    const-string v1, "TABOO_BLACK_LANG"

    const-string v2, "taboo_black_lang"

    const-string v3, ""

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->TABOO_BLACK_LANG:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    new-instance v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    const-string v1, "CITY_NAME"

    const-string v2, "city"

    const-string v3, "citys"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->CITY_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    new-instance v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    const-string v1, "BLACK_CITY"

    const-string v2, "black_city"

    const-string v3, ""

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/huawei/i18n/taboo/TabooReader$ParamType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->BLACK_CITY:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    sget-object v1, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->LANGUAGE_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->REGION_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->BLACK_LANG:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->TABOO_BLACK_LANG:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->CITY_NAME:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->BLACK_CITY:Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->$VALUES:[Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "scopeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->prefix:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->scopeName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/i18n/taboo/TabooReader$ParamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/i18n/taboo/TabooReader$ParamType;
    .locals 1

    .line 39
    sget-object v0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->$VALUES:[Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    invoke-virtual {v0}, [Lcom/huawei/i18n/taboo/TabooReader$ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/i18n/taboo/TabooReader$ParamType;

    return-object v0
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/huawei/i18n/taboo/TabooReader$ParamType;->scopeName:Ljava/lang/String;

    return-object v0
.end method
