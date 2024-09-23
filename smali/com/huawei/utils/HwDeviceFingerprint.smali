.class public Lcom/huawei/utils/HwDeviceFingerprint;
.super Ljava/lang/Object;
.source "HwDeviceFingerprint.java"


# static fields
.field private static final BRAND:Ljava/lang/String;

.field private static final DEVICE:Ljava/lang/String;

.field private static final EMUI_VERSION:Ljava/lang/String;

.field private static final EXPOSE_PRODUCT_HARDWARE_INFO:Z

.field private static final HIDE_PRODUCT_INFO:Z

.field private static final ID:Ljava/lang/String;

.field static final MATCHERS:[Ljava/lang/String;

.field private static final NO_HOTA:Z

.field private static final PRODUCT:Ljava/lang/String;

.field private static final RELEASE:Ljava/lang/String;

.field static final REPLACEMENTS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HwDeviceFingerprint"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-string v0, "ro.build.hide.matchers"

    const-string v1, ""

    .line 26
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->MATCHERS:[Ljava/lang/String;

    .line 27
    const-string v0, "ro.build.hide.replacements"

    const-string v1, ""

    .line 28
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->REPLACEMENTS:[Ljava/lang/String;

    .line 30
    const-string v0, "ro.build.nohota"

    .line 31
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/utils/HwDeviceFingerprint;->NO_HOTA:Z

    .line 33
    invoke-static {}, Lcom/huawei/utils/HwDeviceFingerprint;->isNeedHidden()Z

    move-result v0

    sput-boolean v0, Lcom/huawei/utils/HwDeviceFingerprint;->HIDE_PRODUCT_INFO:Z

    .line 35
    const-string v0, "ro.build.hardware_expose"

    .line 36
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/utils/HwDeviceFingerprint;->EXPOSE_PRODUCT_HARDWARE_INFO:Z

    .line 48
    const-string v0, "ro.product.device"

    invoke-static {v0}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->DEVICE:Ljava/lang/String;

    .line 50
    const-string v0, "ro.build.version.release"

    invoke-static {v0}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->RELEASE:Ljava/lang/String;

    .line 55
    const-string v0, "ro.build.version.emui"

    const-string v1, ""

    .line 56
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->EMUI_VERSION:Ljava/lang/String;

    .line 58
    const-string v0, "ro.product.brand"

    invoke-static {v0}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->BRAND:Ljava/lang/String;

    .line 63
    const-string v0, "ro.product.name"

    invoke-static {v0}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->PRODUCT:Ljava/lang/String;

    .line 65
    const-string v0, "ro.build.id"

    invoke-static {v0}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->ID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static deriveFingerprint()Ljava/lang/String;
    .locals 5

    .line 79
    const-string v0, "ro.huawei.build.fingerprint"

    invoke-static {v0}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "finger":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ro.product.brand"

    invoke-static {v2}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "ro.product.name"

    .line 82
    invoke-static {v3}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "ro.product.device"

    .line 83
    invoke-static {v3}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "ro.build.version.release"

    .line 84
    invoke-static {v4}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "ro.build.id"

    .line 85
    invoke-static {v4}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "ro.huawei.build.version.incremental"

    .line 86
    invoke-static {v4}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "ro.build.type"

    .line 87
    invoke-static {v3}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "ro.build.tags"

    .line 88
    invoke-static {v2}, Lcom/huawei/utils/HwDeviceFingerprint;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "property"    # Ljava/lang/String;

    .line 100
    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "str":Ljava/lang/String;
    sget-boolean v1, Lcom/huawei/utils/HwDeviceFingerprint;->NO_HOTA:Z

    if-eqz v1, :cond_0

    const-string v1, "ro.huawei.build.display.id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_NoHota"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    sget-boolean v1, Lcom/huawei/utils/HwDeviceFingerprint;->HIDE_PRODUCT_INFO:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/huawei/utils/HwDeviceFingerprint;->EXPOSE_PRODUCT_HARDWARE_INFO:Z

    if-eqz v1, :cond_1

    const-string v1, "ro.product.model"

    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    return-object v0

    .line 109
    :cond_1
    sget-boolean v1, Lcom/huawei/utils/HwDeviceFingerprint;->HIDE_PRODUCT_INFO:Z

    if-eqz v1, :cond_3

    const-string v1, "ro.build.id"

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.huawei.build.host"

    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.build.user"

    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.product.manufacturer"

    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.hardware"

    .line 114
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.huawei.build.display.id"

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.huawei.build.fingerprint"

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.product.board"

    .line 117
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.product.device"

    .line 118
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.product.model"

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.product.name"

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.product.brand"

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ro.build.version.codename"

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    :cond_2
    invoke-static {p0, v0}, Lcom/huawei/utils/HwDeviceFingerprint;->hide_build_info(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 125
    :cond_3
    return-object v0
.end method

.method private static hide_build_info(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .line 131
    sget-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->MATCHERS:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/huawei/utils/HwDeviceFingerprint;->MATCHERS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    move-object v0, p1

    .line 171
    .local v0, "s":Ljava/lang/String;
    nop

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/huawei/utils/HwDeviceFingerprint;->MATCHERS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 172
    sget-object v2, Lcom/huawei/utils/HwDeviceFingerprint;->MATCHERS:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 175
    .local v2, "match":Ljava/lang/String;
    sget-object v3, Lcom/huawei/utils/HwDeviceFingerprint;->REPLACEMENTS:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    const-string v3, "unknown"

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/huawei/utils/HwDeviceFingerprint;->REPLACEMENTS:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 176
    .local v3, "replace":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v2, v3}, Landroid/os/Build;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .end local v2    # "match":Ljava/lang/String;
    .end local v3    # "replace":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 132
    .end local v0    # "s":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string v0, "unknown"

    .line 133
    .local v0, "tar":Ljava/lang/String;
    const-string v1, "C\\w{2}B\\d{3}SP\\d{2}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 134
    .local v1, "pnHwverSP":Ljava/util/regex/Pattern;
    const-string v2, "C\\w{2}B\\d{3}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 135
    .local v2, "pnHwver":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 136
    .local v3, "mhwSP":Ljava/util/regex/Matcher;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 137
    .local v4, "mhw":Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 138
    .local v5, "ver":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 139
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 140
    :cond_4
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 141
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 143
    :cond_5
    const-string v6, "HwDeviceFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ver = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_3
    const-string v6, "ro.huawei.build.fingerprint"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 148
    if-nez v5, :cond_6

    .line 149
    const-string v5, "KRT16M"

    .line 151
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/huawei/utils/HwDeviceFingerprint;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/huawei/utils/HwDeviceFingerprint;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/huawei/utils/HwDeviceFingerprint;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/huawei/utils/HwDeviceFingerprint;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/huawei/utils/HwDeviceFingerprint;->ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":user/release-keys"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 154
    :cond_7
    const-string v6, "ro.build.user"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 155
    const-string v0, "android"

    goto :goto_4

    .line 156
    :cond_8
    const-string v6, "ro.huawei.build.host"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 157
    const-string v0, "localhost"

    goto :goto_4

    .line 158
    :cond_9
    const-string v6, "ro.build.version.codename"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 159
    const-string v0, "NOTREL"

    goto :goto_4

    .line 160
    :cond_a
    if-eqz v5, :cond_b

    .line 161
    move-object v0, v5

    goto :goto_4

    .line 163
    :cond_b
    const-string v6, "HwDeviceFingerprint"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tar = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_4
    return-object v0
.end method

.method private static isNeedHidden()Z
    .locals 10

    .line 183
    const-wide/16 v0, 0x2

    .line 184
    .local v0, "MSPES_HIDDEN_MASK":J
    const-string v2, "ro.mspes.config"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "mspesStr":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "unknown"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .local v4, "config":J
    const-wide/16 v6, 0x2

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 189
    return v3

    .line 191
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 193
    .end local v4    # "config":J
    :catch_0
    move-exception v4

    .line 194
    .local v4, "ex":Ljava/lang/NumberFormatException;
    const-string v5, "HwDeviceFingerprint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mspes config decode number fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    const-string v4, "ro.build.hide"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3
.end method
