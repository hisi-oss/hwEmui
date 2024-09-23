.class public Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;
.super Ljava/lang/Object;
.source "HwLocalePickerManagerImpl.java"

# interfaces
.implements Lcom/android/internal/app/HwLocalePickerManager;


# static fields
.field private static final AUTOMATIC:Ljava/lang/String; = "automatic"

.field private static LatinAmerican:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static black_languages:[Ljava/lang/String;

.field private static isShowLanguageOnly:Z

.field private static mEnableSimLang:Z

.field private static mInstance:Lcom/android/internal/app/HwLocalePickerManager;

.field private static white_languages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->white_languages:[Ljava/lang/String;

    .line 77
    sput-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->black_languages:[Ljava/lang/String;

    .line 80
    const-string v0, "ro.config.simlang"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->mEnableSimLang:Z

    .line 83
    sput-boolean v1, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->isShowLanguageOnly:Z

    .line 86
    const-string v2, "AR"

    const-string v3, "BO"

    const-string v4, "CL"

    const-string v5, "CO"

    const-string v6, "CR"

    const-string v7, "CU"

    const-string v8, "DO"

    const-string v9, "EC"

    const-string v10, "GT"

    const-string v11, "HN"

    const-string v12, "MX"

    const-string v13, "NI"

    const-string v14, "PA"

    const-string v15, "PE"

    const-string v16, "PR"

    const-string v17, "PY"

    const-string v18, "SV"

    const-string v19, "UY"

    const-string v20, "VE"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->LatinAmerican:[Ljava/lang/String;

    .line 326
    new-instance v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;

    invoke-direct {v0}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;-><init>()V

    sput-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->mInstance:Lcom/android/internal/app/HwLocalePickerManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLocaleInfo([Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .locals 5
    .param p0, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p1, "newLocaleInfo"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 304
    array-length v0, p0

    .line 305
    .local v0, "finalSize":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 306
    .local v1, "updateLocaleInfos":[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 307
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 308
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p0, v2

    aput-object v4, v1, v3

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static addSIMLocale([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/util/Locale;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .locals 2
    .param p0, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p1, "newLocale"    # Ljava/util/Locale;

    .line 299
    new-instance v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 300
    .local v0, "newLocaleInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-static {p0, v0}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->addLocaleInfo([Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object v1

    return-object v1
.end method

.method private static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 136
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private changeJapanLocale([Lcom/android/internal/app/LocalePicker$LocaleInfo;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .locals 7
    .param p1, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "newLocaleInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    array-length v1, p1

    .line 256
    .local v1, "length":I
    new-array v2, v1, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 257
    .local v2, "updateLocaleInfos":[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 258
    const-string v5, "ja"

    aget-object v6, p1, v3

    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    aget-object v0, p1, v3

    goto :goto_1

    .line 261
    :cond_0
    aget-object v5, p1, v3

    aput-object v5, v2, v4

    .line 262
    add-int/lit8 v4, v4, 0x1

    .line 257
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    if-eqz v0, :cond_2

    .line 266
    add-int/lit8 v3, v1, -0x1

    aput-object v0, v2, v3

    .line 268
    :cond_2
    return-object v2
.end method

.method private static checkHaveLanguage([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)Z
    .locals 3
    .param p0, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p1, "lang"    # Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 274
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static checkHaveLocale([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/util/Locale;)Z
    .locals 3
    .param p0, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p1, "checkLocale"    # Ljava/util/Locale;

    .line 282
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 283
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static getBlackLanguage(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "black_languages":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 125
    .local v1, "black_strings":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "black_languages"

    invoke-static {v2, v3}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "LocalePicker"

    const-string v4, "Could not load default locales"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_0

    .line 130
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    return-object v0
.end method

.method public static getDefault()Lcom/android/internal/app/HwLocalePickerManager;
    .locals 1

    .line 330
    sget-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->mInstance:Lcom/android/internal/app/HwLocalePickerManager;

    return-object v0
.end method

.method private getSimCountry(Landroid/content/Context;Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 231
    const-string v0, ""

    .line 233
    .local v0, "simCountry":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 235
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 236
    const-string v2, "LocalePicker"

    const-string v3, "getClassLoader failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-object v0

    .line 241
    :cond_0
    const-string v2, "com.android.internal.telephony.MccTable"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 242
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 243
    const-string v3, "countryCodeForMcc"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 244
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p2, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 248
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_1
    goto :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "LocalePicker"

    const-string v3, "Could not load mccTable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static getWhiteLanguage(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "white_languages":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 110
    .local v1, "white_strings":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "white_languages"

    invoke-static {v2, v3}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "LocalePicker"

    const-string v4, "Could not load default locales"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_0

    .line 116
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_0
    return-object v0
.end method

.method private static replaceUSLocale([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/util/Locale;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .locals 5
    .param p0, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .param p1, "newLocale"    # Ljava/util/Locale;

    .line 315
    array-length v0, p0

    .line 316
    .local v0, "finalSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 317
    new-instance v2, Ljava/util/Locale;

    const-string v3, "es"

    const-string v4, "US"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    new-instance v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, p0, v1

    .line 319
    goto :goto_1

    .line 316
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    return-object p0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateLocaleForSimCountry(Landroid/content/Context;[Lcom/android/internal/app/LocalePicker$LocaleInfo;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 196
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    if-gtz v1, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    invoke-direct {p0, p1, v0}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->getSimCountry(Landroid/content/Context;Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "simCountry":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    return-void

    .line 203
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    .line 204
    .local v2, "availablelocale":[Ljava/util/Locale;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    .line 208
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 209
    goto :goto_1

    .line 212
    :cond_2
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 213
    :cond_3
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 215
    :cond_4
    const-string v6, "es"

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->LatinAmerican:[Ljava/lang/String;

    invoke-static {v6, v1}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 216
    new-instance v6, Ljava/util/Locale;

    const-string v7, "es"

    invoke-direct {v6, v7, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v6}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->replaceUSLocale([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/util/Locale;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object p2

    .line 217
    goto :goto_1

    .line 220
    :cond_5
    new-instance v6, Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 221
    invoke-static {p2, v5}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->checkHaveLocale([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/util/Locale;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->checkHaveLanguage([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 222
    invoke-static {p2, v5}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->addSIMLocale([Lcom/android/internal/app/LocalePicker$LocaleInfo;Ljava/util/Locale;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object p2

    .line 204
    .end local v5    # "locale":Ljava/util/Locale;
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_7
    return-void
.end method


# virtual methods
.method public addModifyLocaleInfos(Landroid/content/Context;[Lcom/android/internal/app/LocalePicker$LocaleInfo;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localeInfos"    # [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "SimOptr":Ljava/lang/String;
    const-string v1, "FYROM"

    .line 155
    .local v1, "ap_str1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2020156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "ap_str2":Ljava/lang/String;
    const-string v3, ""

    .line 157
    .local v3, "newlabel":Ljava/lang/String;
    array-length v4, p2

    .line 158
    .local v4, "finalSize":I
    const/4 v5, 0x0

    move-object v6, v3

    move v3, v5

    .local v3, "i":I
    .local v6, "newlabel":Ljava/lang/String;
    :goto_0
    if-ge v3, v4, :cond_5

    .line 159
    aget-object v7, p2, v3

    invoke-virtual {v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, p2, v3

    invoke-virtual {v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 160
    :cond_0
    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "294"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 161
    move-object v6, v2

    goto :goto_1

    .line 162
    :cond_1
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ro.config.MkLanguageCust"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 163
    const-string v7, "ro.config.hw_opta"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x96

    if-ne v7, v8, :cond_2

    const-string v7, "ro.config.hw_optb"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x12c

    if-ne v7, v8, :cond_2

    .line 164
    move-object v6, v1

    goto :goto_1

    .line 166
    :cond_2
    move-object v6, v2

    goto :goto_1

    .line 169
    :cond_3
    move-object v6, v1

    .line 171
    :goto_1
    new-instance v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aget-object v8, p2, v3

    invoke-virtual {v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v7, p2, v3

    .line 158
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    .end local v3    # "i":I
    :cond_5
    sget-boolean v3, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->mEnableSimLang:Z

    if-eqz v3, :cond_6

    .line 176
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x20200b1

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/Locale;

    const-string v8, "automatic"

    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v5, v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 178
    .local v3, "aLocaleInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-static {p2, v3}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->addLocaleInfo([Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object p2

    .line 181
    .end local v3    # "aLocaleInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_6
    invoke-direct {p0, p1, p2}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->updateLocaleForSimCountry(Landroid/content/Context;[Lcom/android/internal/app/LocalePicker$LocaleInfo;)V

    .line 185
    const-string v3, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 186
    .local v3, "isChineseDefault":Z
    if-nez v3, :cond_7

    .line 187
    return-object p2

    .line 191
    :cond_7
    invoke-direct {p0, p2}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->changeJapanLocale([Lcom/android/internal/app/LocalePicker$LocaleInfo;)[Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object v5

    return-object v5
.end method

.method public checkCustLanguages(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;

    .line 141
    sget-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->white_languages:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->getWhiteLanguage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->white_languages:[Ljava/lang/String;

    .line 142
    :cond_0
    sget-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->black_languages:[Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p1}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->getBlackLanguage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->black_languages:[Ljava/lang/String;

    .line 144
    :cond_1
    sget-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->white_languages:[Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->white_languages:[Ljava/lang/String;

    invoke-static {v0, p2}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->black_languages:[Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->black_languages:[Ljava/lang/String;

    .line 145
    invoke-static {v0, p2}, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getLanguageNameOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "lableName"    # Ljava/lang/String;

    .line 100
    sget-boolean v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->isShowLanguageOnly:Z

    if-eqz v0, :cond_0

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    const-string v1, "("

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    return-object p1
.end method

.method public getLnumLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 93
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LNum"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 97
    :cond_1
    return-object p1
.end method

.method public initParams(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    const-string v0, "true"

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hw_show_languages_only"

    .line 89
    invoke-static {v1, v2}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lhuawei/com/android/internal/app/HwLocalePickerManagerImpl;->isShowLanguageOnly:Z

    .line 91
    return-void
.end method
