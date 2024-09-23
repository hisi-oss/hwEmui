.class public Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;
.super Ljava/lang/Object;
.source "FindTargetRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/i18n/taboo/FindTargetRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemParam"
.end annotation


# instance fields
.field private country:Ljava/lang/String;

.field private hbcCountry:Ljava/lang/String;

.field private mccList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mccmncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private optb:Ljava/lang/String;

.field private optbopta:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private vendorCountry:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->mccList:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->mccmncList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    .line 146
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->mccmncList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    .line 146
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->mccList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    .line 146
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->optbopta:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    .line 146
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->optb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    .line 146
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->hbcCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    .line 146
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->vendorCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    .line 146
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    .line 146
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->region:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemParam()Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;
    .locals 4

    .line 197
    new-instance v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;

    invoke-direct {v0}, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;-><init>()V

    .line 198
    .local v0, "sysParam":Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;
    const-string v1, "ro.config.hw_optb"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->optb:Ljava/lang/String;

    .line 199
    const-string v1, "ro.product.locale.region"

    const-string v2, ""

    .line 200
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->country:Ljava/lang/String;

    .line 201
    const-string v1, "ro.config.hw.region"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->region:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/huawei/i18n/taboo/FindTargetRules;->access$000()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->mccList:Ljava/util/List;

    .line 203
    const-string v1, "hbc.country"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->hbcCountry:Ljava/lang/String;

    .line 204
    const-string v1, "ro.config.hw_opta"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "systemOpta":Ljava/lang/String;
    const-string v2, ""

    iget-object v3, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->optb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->optb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    iput-object v2, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->optbopta:Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/huawei/i18n/taboo/FindTargetRules;->access$100()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->mccmncList:Ljava/util/List;

    .line 208
    const-string v2, "ro.hw.country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->vendorCountry:Ljava/lang/String;

    .line 209
    return-object v0
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getHbcCountry()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->hbcCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getMccList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->mccList:Ljava/util/List;

    return-object v0
.end method

.method public getMccmncList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->mccmncList:Ljava/util/List;

    return-object v0
.end method

.method public getOptb()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->optb:Ljava/lang/String;

    return-object v0
.end method

.method public getOptbopta()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->optbopta:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorCountry()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/huawei/i18n/taboo/FindTargetRules$SystemParam;->vendorCountry:Ljava/lang/String;

    return-object v0
.end method
