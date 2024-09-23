.class public Landroid/encrypt/HwPasswordUtil;
.super Ljava/lang/Object;
.source "HwPasswordUtil.java"

# interfaces
.implements Landroid/encrypt/PasswordUtil;


# static fields
.field private static final CHAR_OFFSET:I = 0xa

.field private static final LENGTH:I = 0x4

.field private static final SKEY:Ljava/lang/String; = "skey"

.field private static final TAG:Ljava/lang/String; = "PasswordUtil"

.field private static final mChars:[C

.field private static final mHexStr:Ljava/lang/String; = "0123456789ABCDEF"

.field private static mPasswordUtil:Landroid/encrypt/PasswordUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Landroid/encrypt/HwPasswordUtil;->mChars:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static codeOffset(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 94
    const-string v0, ""

    .line 95
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v1, "buf":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 102
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 103
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 104
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 105
    .local v4, "tempChar":C
    move v5, v4

    .line 106
    .local v5, "tempCharInt":I
    add-int v6, v5, p1

    .line 107
    .local v6, "convertCharInt":I
    int-to-char v7, v6

    .line 108
    .local v7, "convertChar":C
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v4    # "tempChar":C
    .end local v5    # "tempCharInt":I
    .end local v6    # "convertCharInt":I
    .end local v7    # "convertChar":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "PasswordUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "codeOffset:ex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0

    .line 98
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static flagPswd2PlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "flagPswd"    # Ljava/lang/String;

    .line 26
    const-string v0, ""

    .line 28
    .local v0, "plainText":Ljava/lang/String;
    invoke-static {p0}, Landroid/encrypt/HwPasswordUtil;->isFlagPswd(Ljava/lang/String;)Z

    move-result v1

    .line 29
    .local v1, "isFlagPswd":Z
    if-eqz v1, :cond_0

    .line 30
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "pswd":Ljava/lang/String;
    invoke-static {v2}, Landroid/encrypt/PasswordEncrypter;->decrypter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .end local v2    # "pswd":Ljava/lang/String;
    goto :goto_0

    .line 35
    :cond_0
    const-string v2, "PasswordUtil"

    const-string v3, "flagPswd2PlainText: flagPswd is not a flag password!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Landroid/encrypt/PasswordUtil;
    .locals 2

    const-class v0, Landroid/encrypt/HwPasswordUtil;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Landroid/encrypt/HwPasswordUtil;->mPasswordUtil:Landroid/encrypt/PasswordUtil;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Landroid/encrypt/HwPasswordUtil;

    invoke-direct {v1}, Landroid/encrypt/HwPasswordUtil;-><init>()V

    sput-object v1, Landroid/encrypt/HwPasswordUtil;->mPasswordUtil:Landroid/encrypt/PasswordUtil;

    .line 21
    :cond_0
    sget-object v1, Landroid/encrypt/HwPasswordUtil;->mPasswordUtil:Landroid/encrypt/PasswordUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSecretKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "originKey"    # Ljava/lang/String;

    .line 123
    invoke-static {p0}, Landroid/encrypt/HwPasswordUtil;->hexStr2Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/encrypt/HwPasswordUtil;->skey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hexStr2Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "hexStr"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 154
    .local v0, "hexs":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    new-array v1, v1, [B

    .line 155
    .local v1, "bytes":[B
    const/4 v3, 0x0

    .line 157
    .local v3, "iTmp":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 158
    const-string v5, "0123456789ABCDEF"

    mul-int v6, v2, v4

    aget-char v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    shl-int/lit8 v3, v5, 0x4

    .line 159
    const-string v5, "0123456789ABCDEF"

    mul-int v6, v2, v4

    add-int/lit8 v6, v6, 0x1

    aget-char v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    or-int/2addr v3, v5

    .line 160
    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    .end local v4    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public static isFlagPswd(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pswd"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "rtnFlag":Z
    const/16 v1, 0x8

    .line 68
    .local v1, "length":I
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "validationCode":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "code":Ljava/lang/String;
    invoke-static {v2}, Landroid/encrypt/HwPasswordUtil;->validationCode2Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "targetCode":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 78
    const/4 v0, 0x1

    .line 83
    .end local v2    # "validationCode":Ljava/lang/String;
    .end local v3    # "code":Ljava/lang/String;
    .end local v4    # "targetCode":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "PasswordUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FlagPswd:ex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 69
    :cond_2
    :goto_1
    return v0
.end method

.method private static skey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "strOld"    # Ljava/lang/String;

    .line 132
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 133
    .local v0, "data":[B
    const-string v1, "skey"

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 134
    .local v1, "keyData":[B
    const/4 v2, 0x0

    .line 135
    .local v2, "keyIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 136
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 137
    aget-byte v5, v0, v4

    aget-byte v6, v1, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 138
    add-int/lit8 v2, v2, 0x1

    array-length v5, v1

    if-ne v2, v5, :cond_0

    .line 139
    const/4 v2, 0x0

    .line 136
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    .end local v4    # "x":I
    :cond_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v4
.end method

.method private static validationCode2Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # Ljava/lang/String;

    .line 90
    const/16 v0, -0xa

    invoke-static {p0, v0}, Landroid/encrypt/HwPasswordUtil;->codeOffset(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public pswd2PlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "dbPswd"    # Ljava/lang/String;

    .line 44
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, ""

    .line 49
    .local v0, "plainText":Ljava/lang/String;
    invoke-static {p1}, Landroid/encrypt/HwPasswordUtil;->isFlagPswd(Ljava/lang/String;)Z

    move-result v1

    .line 53
    .local v1, "isFlagPswd":Z
    if-eqz v1, :cond_1

    .line 54
    invoke-static {p1}, Landroid/encrypt/HwPasswordUtil;->flagPswd2PlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    move-object v0, p1

    .line 58
    :goto_0
    return-object v0
.end method
