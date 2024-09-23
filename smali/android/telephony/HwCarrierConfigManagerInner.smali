.class public Landroid/telephony/HwCarrierConfigManagerInner;
.super Ljava/lang/Object;
.source "HwCarrierConfigManagerInner.java"


# static fields
.field private static final BINARY:I = 0x2

.field public static final HD_ICON_MASK_CALL_LOG:I = 0xc

.field public static final HD_ICON_MASK_DIALER:I = 0xc0

.field public static final HD_ICON_MASK_INCALL_UI:I = 0x3

.field public static final HD_ICON_MASK_STATUS_BAR:I = 0x30

.field private static final HD_ICON_NOT_SET:I = -0x1

.field private static final HW_VOLTE_ICON_RULE:I

.field private static final KEY_CARRIER_SHOW_VOLTE_HD_RULE:Ljava/lang/String; = "carrier_show_volte_hd_rule"

.field private static final KEY_CARRIER_VOLTE_HD_ICON_FLAG:Ljava/lang/String; = "carrier_volte_hd_icon_flag"

.field private static final KEY_CARRIER_VOWIFI_HD_ICON_FLAG:Ljava/lang/String; = "carrier_vowifi_hd_icon_flag"

.field private static final NOT_SET_SHOW_HD_ICON_BY_CARRIER_CONFIG:I = -0x1

.field private static final NOT_SHOW_HD_ICON_BY_CARRIER_CONFIG:I = 0x0

.field private static final OFFSET:I = 0x2

.field private static final SHOW_HD_ICON_BY_CARRIER_CONFIG:I = 0x1

.field private static final SHOW_VOLTE_VOWIFI_ICON_BY_CARRIER_CONFIG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HwCarrierConfigManagerInner"

.field private static sInstance:Landroid/telephony/HwCarrierConfigManagerInner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "ro.config.hw_volte_icon_rule"

    .line 36
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/HwCarrierConfigManagerInner;->HW_VOLTE_ICON_RULE:I

    .line 68
    new-instance v0, Landroid/telephony/HwCarrierConfigManagerInner;

    invoke-direct {v0}, Landroid/telephony/HwCarrierConfigManagerInner;-><init>()V

    sput-object v0, Landroid/telephony/HwCarrierConfigManagerInner;->sInstance:Landroid/telephony/HwCarrierConfigManagerInner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private getConfigForAnySubId(Landroid/content/Context;I)Landroid/os/PersistableBundle;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 283
    const-string v0, "carrier_config"

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 286
    .local v0, "configMgr":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_0

    .line 287
    const/4 v1, 0x0

    return-object v1

    .line 290
    :cond_0
    if-gez p2, :cond_1

    .line 291
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .local v1, "pb":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 293
    .end local v1    # "pb":Landroid/os/PersistableBundle;
    :cond_1
    invoke-virtual {v0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 296
    .restart local v1    # "pb":Landroid/os/PersistableBundle;
    :goto_0
    return-object v1
.end method

.method public static getDefault()Landroid/telephony/HwCarrierConfigManagerInner;
    .locals 1

    .line 72
    sget-object v0, Landroid/telephony/HwCarrierConfigManagerInner;->sInstance:Landroid/telephony/HwCarrierConfigManagerInner;

    return-object v0
.end method

.method private getHDIconFromCarrierConfig(II)I
    .locals 4
    .param p1, "flag"    # I
    .param p2, "mask"    # I

    .line 127
    const-string v0, "HwCarrierConfigManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHDIconFromCarrierConfig flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    and-int v0, p1, p2

    .line 130
    .local v0, "showHDIcon":I
    const-string v1, "HwCarrierConfigManagerInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHDIcon original value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/16 v1, 0xc

    if-eq p2, v1, :cond_2

    const/16 v1, 0x30

    if-eq p2, v1, :cond_1

    const/16 v1, 0xc0

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    shr-int/lit8 v1, v0, 0x2

    shr-int/lit8 v1, v1, 0x2

    shr-int/lit8 v0, v1, 0x2

    .line 144
    goto :goto_0

    .line 140
    :cond_1
    shr-int/lit8 v1, v0, 0x2

    shr-int/lit8 v0, v1, 0x2

    .line 141
    goto :goto_0

    .line 137
    :cond_2
    shr-int/lit8 v0, v0, 0x2

    .line 138
    goto :goto_0

    .line 135
    :cond_3
    nop

    .line 149
    :goto_0
    const-string v1, "HwCarrierConfigManagerInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHDIcon final value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v0
.end method


# virtual methods
.method public getCarrierVolteHDIconFlag(Landroid/content/Context;I)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 161
    const/4 v0, -0x1

    .line 162
    .local v0, "flag":I
    if-nez p1, :cond_0

    .line 163
    return v0

    .line 166
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/HwCarrierConfigManagerInner;->getConfigForAnySubId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 168
    .local v1, "pb":Landroid/os/PersistableBundle;
    if-nez v1, :cond_1

    .line 169
    return v0

    .line 172
    :cond_1
    const-string v2, "carrier_volte_hd_icon_flag"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "flagStr":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 175
    const-string v3, "HwCarrierConfigManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarrierVolteHDIconFlag flagStr null, subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v0

    .line 180
    :cond_2
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 184
    nop

    .line 186
    const-string v3, "HwCarrierConfigManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarrierVolteHDIconFlag flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",flagStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return v0

    .line 181
    :catch_0
    move-exception v3

    .line 182
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "HwCarrierConfigManagerInner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCarrierVolteHDIconFlag parseInt error flagStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v4, -0x1

    return v4
.end method

.method public getCarrierVowifiHDIconFlag(Landroid/content/Context;I)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 198
    const/4 v0, -0x1

    .line 199
    .local v0, "flag":I
    if-nez p1, :cond_0

    .line 200
    return v0

    .line 203
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/HwCarrierConfigManagerInner;->getConfigForAnySubId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 205
    .local v1, "pb":Landroid/os/PersistableBundle;
    if-nez v1, :cond_1

    .line 206
    return v0

    .line 209
    :cond_1
    const-string v2, "carrier_vowifi_hd_icon_flag"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "flagStr":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 212
    const-string v3, "HwCarrierConfigManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarrierVoWifiHDIconFlag flagStr null, subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v0

    .line 217
    :cond_2
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 221
    nop

    .line 223
    const-string v3, "HwCarrierConfigManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarrierVoWifiHDIconFlag flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",flagStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return v0

    .line 218
    :catch_0
    move-exception v3

    .line 219
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "HwCarrierConfigManagerInner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCarrierVoWifiHDIconFlag parseInt error flagStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v4, -0x1

    return v4
.end method

.method public getShowHDIconRule(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 236
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 237
    return v0

    .line 240
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/HwCarrierConfigManagerInner;->getConfigForAnySubId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 242
    .local v1, "pb":Landroid/os/PersistableBundle;
    if-nez v1, :cond_1

    .line 243
    return v0

    .line 246
    :cond_1
    const-string v2, "carrier_show_volte_hd_rule"

    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 247
    .local v0, "result":I
    const-string v2, "HwCarrierConfigManagerInner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getShowHDIconRule result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return v0
.end method

.method public getVolteIconRule(Landroid/content/Context;II)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "mask"    # I

    .line 77
    const/4 v0, -0x1

    .line 79
    .local v0, "volteIconRule":I
    invoke-virtual {p0, p1, p2}, Landroid/telephony/HwCarrierConfigManagerInner;->getCarrierVolteHDIconFlag(Landroid/content/Context;I)I

    move-result v1

    .line 80
    .local v1, "flag":I
    if-ltz v1, :cond_0

    .line 81
    invoke-direct {p0, v1, p3}, Landroid/telephony/HwCarrierConfigManagerInner;->getHDIconFromCarrierConfig(II)I

    move-result v0

    goto :goto_0

    .line 83
    :cond_0
    sget v0, Landroid/telephony/HwCarrierConfigManagerInner;->HW_VOLTE_ICON_RULE:I

    .line 86
    :goto_0
    return v0
.end method

.method public getVowifiIconRule(Landroid/content/Context;II)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "mask"    # I

    .line 94
    const/4 v0, -0x1

    .line 96
    .local v0, "vowifiIconRule":I
    invoke-virtual {p0, p1, p2}, Landroid/telephony/HwCarrierConfigManagerInner;->getCarrierVowifiHDIconFlag(Landroid/content/Context;I)I

    move-result v1

    .line 97
    .local v1, "flag":I
    if-ltz v1, :cond_0

    .line 98
    invoke-direct {p0, v1, p3}, Landroid/telephony/HwCarrierConfigManagerInner;->getHDIconFromCarrierConfig(II)I

    move-result v0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/HwCarrierConfigManagerInner;->getVolteIconRule(Landroid/content/Context;II)I

    move-result v0

    .line 103
    :goto_0
    return v0
.end method

.method public needShowHDIcon(II)Z
    .locals 3
    .param p1, "flag"    # I
    .param p2, "mask"    # I

    .line 264
    const-string v0, "HwCarrierConfigManagerInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needShowHDIcon flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    and-int v0, p2, p1

    if-nez v0, :cond_0

    .line 266
    const-string v0, "HwCarrierConfigManagerInner"

    const-string v1, "needShowHDIcon carrier don\'t want to show HD icon in this UI."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    return v0

    .line 269
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
