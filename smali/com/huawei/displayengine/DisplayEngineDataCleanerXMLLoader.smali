.class public final Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;
.super Ljava/lang/Object;
.source "DisplayEngineDataCleanerXMLLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_DarkLevelRoofLUT;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_DarkLevelLUT;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_BrightnessLevelLUT;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_AmbientLightLUT;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_OutDoorLevelThresh;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_HBMThresh;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_AlDarkThresh;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_CounterWeightThresh;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_OutlierZoneCounterWeight;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_SafeZoneCounterWeight;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_ComfortZoneCounterWeight;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_DataCleanerConfig;,
        Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;
    }
.end annotation


# static fields
.field private static final HWDEBUG:Z

.field private static final HWFLOW:Z

.field private static final TAG:Ljava/lang/String; = "DisplayEngineDataCleanerXMLLoader"

.field private static mData:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

.field private static mLoader:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    sget-boolean v0, Landroid/util/Log;->HWLog:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->HWDEBUG:Z

    .line 27
    sget-boolean v0, Landroid/util/Log;->HWINFO:Z

    if-nez v0, :cond_3

    sget-boolean v0, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v0, :cond_2

    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    nop

    :cond_3
    :goto_2
    sput-boolean v1, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->HWFLOW:Z

    .line 30
    new-instance v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    invoke-direct {v0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->mData:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "xmlFilePath"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    sget-boolean v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->HWDEBUG:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    const-string v1, "DisplayEngineDataCleanerXMLLoader()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->parseXml(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->mData:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    invoke-virtual {v0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->loadDefaultConfig()V

    .line 162
    :cond_1
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->mData:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    invoke-virtual {v0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->printData()V

    .line 163
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->HWFLOW:Z

    return v0
.end method

.method static synthetic access$1300()Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;
    .locals 1

    .line 24
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->mData:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->parseIntegerList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->parseFloatList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getData(Ljava/lang/String;)Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;
    .locals 6
    .param p0, "xmlFilePath"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "retData":Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->mLoader:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;

    invoke-direct {v2, p0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->mLoader:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;

    .line 140
    :cond_0
    sget-object v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->mData:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    invoke-virtual {v2}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 144
    if-nez v0, :cond_1

    .line 145
    :try_start_1
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    invoke-direct {v2}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;-><init>()V

    :goto_0
    move-object v0, v2

    .line 146
    invoke-virtual {v0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->loadDefaultConfig()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 144
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "DisplayEngineDataCleanerXMLLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getData() error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    if-nez v0, :cond_1

    .line 145
    :try_start_3
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    invoke-direct {v2}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;-><init>()V

    goto :goto_0

    .line 149
    :cond_1
    :goto_1
    monitor-exit v1

    .line 151
    return-object v0

    .line 144
    :goto_2
    if-nez v0, :cond_2

    .line 145
    new-instance v3, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    invoke-direct {v3}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;-><init>()V

    move-object v0, v3

    .line 146
    invoke-virtual {v0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->loadDefaultConfig()V

    goto :goto_3

    .line 149
    :catchall_1
    move-exception v2

    goto :goto_4

    .line 146
    :cond_2
    :goto_3
    throw v2

    .line 149
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private static parseFloatList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "srcString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 347
    if-nez p0, :cond_0

    .line 348
    const/4 v0, 0x0

    return-object v0

    .line 351
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "s":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, "parsedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v2, 0x0

    .local v2, "curInd":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 354
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "curInd":I
    :cond_1
    return-object v1
.end method

.method private static parseIntegerList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "srcString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 361
    if-nez p0, :cond_0

    .line 362
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "s":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v1, "parsedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "curInd":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 368
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v2    # "curInd":I
    :cond_1
    return-object v1
.end method

.method private parseXml(Ljava/lang/String;)Z
    .locals 4
    .param p1, "xmlFilePath"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 167
    const-string v1, "DisplayEngineDataCleanerXMLLoader"

    const-string v2, "parseXml() error! xml file path is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v0

    .line 171
    :cond_0
    new-instance v1, Lcom/huawei/displayengine/HwXmlParser;

    invoke-direct {v1, p1}, Lcom/huawei/displayengine/HwXmlParser;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "xmlParser":Lcom/huawei/displayengine/HwXmlParser;
    invoke-direct {p0, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->registerElement(Lcom/huawei/displayengine/HwXmlParser;)V

    .line 173
    invoke-virtual {v1}, Lcom/huawei/displayengine/HwXmlParser;->parse()Z

    move-result v2

    if-nez v2, :cond_1

    .line 174
    const-string v2, "DisplayEngineDataCleanerXMLLoader"

    const-string v3, "parseXml() error! xmlParser.parse() failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v0

    .line 177
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/displayengine/HwXmlParser;->check()Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    const-string v2, "DisplayEngineDataCleanerXMLLoader"

    const-string v3, "parseXml() error! xmlParser.check() failed!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v0

    .line 182
    :cond_2
    sget-boolean v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->HWFLOW:Z

    if-eqz v0, :cond_3

    .line 183
    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    const-string v2, "parseXml() load success!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private registerElement(Lcom/huawei/displayengine/HwXmlParser;)V
    .locals 3
    .param p1, "parser"    # Lcom/huawei/displayengine/HwXmlParser;

    .line 189
    new-instance v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_DataCleanerConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_DataCleanerConfig;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {p1, v0}, Lcom/huawei/displayengine/HwXmlParser;->registerRootElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    move-result-object v0

    .line 190
    .local v0, "rootElement":Lcom/huawei/displayengine/HwXmlElement;
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_ComfortZoneCounterWeight;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_ComfortZoneCounterWeight;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 191
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_SafeZoneCounterWeight;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_SafeZoneCounterWeight;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 192
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_OutlierZoneCounterWeight;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_OutlierZoneCounterWeight;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 193
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_CounterWeightThresh;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_CounterWeightThresh;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 194
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_AlDarkThresh;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_AlDarkThresh;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 195
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_HBMThresh;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_HBMThresh;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 196
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_OutDoorLevelThresh;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_OutDoorLevelThresh;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 197
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_AmbientLightLUT;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_AmbientLightLUT;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 198
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_BrightnessLevelLUT;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_BrightnessLevelLUT;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 199
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_DarkLevelLUT;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_DarkLevelLUT;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 200
    new-instance v2, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_DarkLevelRoofLUT;

    invoke-direct {v2, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Element_DarkLevelRoofLUT;-><init>(Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$1;)V

    invoke-virtual {v0, v2}, Lcom/huawei/displayengine/HwXmlElement;->registerChildElement(Lcom/huawei/displayengine/HwXmlElement;)Lcom/huawei/displayengine/HwXmlElement;

    .line 201
    return-void
.end method
