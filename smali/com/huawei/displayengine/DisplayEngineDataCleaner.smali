.class public Lcom/huawei/displayengine/DisplayEngineDataCleaner;
.super Ljava/lang/Object;
.source "DisplayEngineDataCleaner.java"


# static fields
.field private static COMFORT_ZONE_COUNTER_WEIGHT:F = 0.0f

.field private static COUNTER_WEIGHT_THRES:F = 0.0f

.field private static DEBUG:Z = false

.field private static OUTLIER_ZONE_COUNTER_WEIGHT:F = 0.0f

.field private static final RANGE_FLAG_COMFORT:I = 0x1

.field private static final RANGE_FLAG_DEFAULT:I = 0x0

.field private static final RANGE_FLAG_INVALID:I = -0x1

.field private static final RANGE_FLAG_OUTLIER:I = 0x3

.field private static final RANGE_FLAG_SAFE:I = 0x2

.field private static SAFE_ZONE_COUNTER_WEIGHT:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "DE J DisplayEngineDataCleaner"

.field private static THRES_AL_DARK:I = 0x0

.field private static THRES_HBM:I = 0x0

.field private static final XML_DIR:Ljava/lang/String; = "/product/etc/display/effect/displayengine/"

.field private static final XML_EXT:Ljava/lang/String; = ".xml"

.field private static final XML_FILENAME:Ljava/lang/String; = "DataCleanerConfig.xml"

.field private static final XML_FILENAME_WITHOUT_EXT:Ljava/lang/String; = "DataCleanerConfig"

.field private static mAmbientLightLUT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mBrightnessLevelLUT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static mDarkLevelLUT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mDarkLevelRoofLUT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mInstance:Lcom/huawei/displayengine/DisplayEngineDataCleaner;

.field private static mLock:Ljava/lang/Object;

.field private static mOutdoorLevelFloor:I

.field private static mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const/4 v0, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const-string v0, "DE J DisplayEngineDataCleaner"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->DEBUG:Z

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mLock:Ljava/lang/Object;

    .line 37
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->COMFORT_ZONE_COUNTER_WEIGHT:F

    .line 38
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->SAFE_ZONE_COUNTER_WEIGHT:F

    .line 39
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->OUTLIER_ZONE_COUNTER_WEIGHT:F

    .line 40
    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->COUNTER_WEIGHT_THRES:F

    .line 46
    const/16 v0, 0xa

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->THRES_AL_DARK:I

    .line 47
    const/16 v0, 0xbb8

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->THRES_HBM:I

    .line 56
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->getXmlFileName()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "xmlPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->getData(Ljava/lang/String;)Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    move-result-object v1

    sput-object v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    .line 58
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->setParameters()V

    .line 59
    .end local v0    # "xmlPath":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "DE J DisplayEngineDataCleaner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default ambient curve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mAmbientLightLUT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "DE J DisplayEngineDataCleaner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default brightness curve: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mBrightnessLevelLUT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method private calculateRangeFlag(Ljava/util/List;I)I
    .locals 19
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;I)I"
        }
    .end annotation

    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 122
    move/from16 v2, p2

    const/4 v3, 0x0

    if-ltz v2, :cond_b

    if-eqz v1, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    .line 125
    :cond_0
    invoke-direct {v0, v2}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->getRangeFlagByUserId(I)I

    move-result v4

    .line 126
    .local v4, "previousRangeFlag":I
    const-string v5, "DE J DisplayEngineDataCleaner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "previoudRangeFlag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v5, 0x0

    .line 128
    .local v5, "safeZoneCounter":I
    const/4 v6, 0x0

    .line 129
    .local v6, "comfortZoneCounter":I
    const/4 v7, 0x0

    .line 130
    .local v7, "outlierZoneCounter":I
    const/4 v8, 0x0

    .line 131
    .local v8, "weightedCounter":F
    const/4 v9, 0x0

    .line 132
    .local v9, "rangeFlag":I
    iget-object v10, v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getInstance(Landroid/content/Context;)Lcom/huawei/displayengine/DisplayEngineDBManager;

    move-result-object v10

    .line 133
    .local v10, "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    if-nez v10, :cond_1

    .line 134
    return v3

    .line 136
    :cond_1
    nop

    .local v3, "ind":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_9

    .line 137
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 138
    .local v11, "data":Landroid/os/Bundle;
    const-string v12, "ProximityPositive"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 139
    .local v12, "isCovered":Z
    if-eqz v12, :cond_2

    .line 140
    const-string v13, "DE J DisplayEngineDataCleaner"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isCovered="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    nop

    .line 136
    move/from16 v16, v8

    move/from16 v17, v9

    goto/16 :goto_1

    .line 143
    :cond_2
    const-string v13, "StartPoint"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v13

    .line 144
    .local v13, "startPoint":F
    const-string v14, "StopPoint"

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v14

    .line 145
    .local v14, "stopPoint":F
    const-string v15, "AmbientLight"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 146
    .local v15, "ambientLight":I
    const-string v1, "DE J DisplayEngineDataCleaner"

    move/from16 v16, v8

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "weightedCounter":F
    .local v16, "weightedCounter":F
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v9

    const-string v9, "startPoint="

    .end local v9    # "rangeFlag":I
    .local v17, "rangeFlag":I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " stopPoint="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " ambientLight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {v0, v15}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->getOriginalBrightnessLevel(I)F

    move-result v1

    .line 149
    .local v1, "orgBrightnessLevel":F
    const-string v8, "DE J DisplayEngineDataCleaner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v11

    const-string v11, "orgBrightnessLevel="

    .end local v11    # "data":Landroid/os/Bundle;
    .local v18, "data":Landroid/os/Bundle;
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-nez v4, :cond_5

    .line 151
    invoke-direct {v0, v14, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->isDataInComfortZone(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 152
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 153
    :cond_3
    invoke-direct {v0, v14, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->isDataInSafeZone(FF)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 156
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 158
    :cond_5
    const/4 v8, 0x1

    if-ne v4, v8, :cond_8

    .line 159
    invoke-direct {v0, v14, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->isDataInComfortZone(FF)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 160
    goto :goto_1

    .line 161
    :cond_6
    invoke-direct {v0, v14, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->isDataInSafeZone(FF)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 164
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 167
    :cond_8
    const-string v8, "DE J DisplayEngineDataCleaner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "previousRangeFlag="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "orgBrightnessLevel":F
    .end local v12    # "isCovered":Z
    .end local v13    # "startPoint":F
    .end local v14    # "stopPoint":F
    .end local v15    # "ambientLight":I
    .end local v18    # "data":Landroid/os/Bundle;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 170
    .end local v3    # "ind":I
    .end local v16    # "weightedCounter":F
    .end local v17    # "rangeFlag":I
    .restart local v8    # "weightedCounter":F
    .restart local v9    # "rangeFlag":I
    :cond_9
    move/from16 v16, v8

    move/from16 v17, v9

    .end local v8    # "weightedCounter":F
    .end local v9    # "rangeFlag":I
    .restart local v16    # "weightedCounter":F
    .restart local v17    # "rangeFlag":I
    const-string v1, "DE J DisplayEngineDataCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "comfortZoneCounter="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " safeZoneCounter="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " outlierZoneCounter="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {v0, v6, v5, v7}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->getWeightedCounter(III)F

    move-result v1

    .line 172
    .end local v16    # "weightedCounter":F
    .local v1, "weightedCounter":F
    const-string v3, "DE J DisplayEngineDataCleaner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "weightedCounter="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " COUNTER_WEIGHT_THRES="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->COUNTER_WEIGHT_THRES:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget v3, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->COUNTER_WEIGHT_THRES:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_a

    .line 174
    const/4 v3, 0x2

    .end local v17    # "rangeFlag":I
    .local v3, "rangeFlag":I
    :goto_2
    goto :goto_3

    .line 176
    .end local v3    # "rangeFlag":I
    .restart local v17    # "rangeFlag":I
    :cond_a
    const/4 v3, 0x1

    goto :goto_2

    .line 178
    .end local v17    # "rangeFlag":I
    .restart local v3    # "rangeFlag":I
    :goto_3
    const-string v8, "DE J DisplayEngineDataCleaner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rangeFlag="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v8, "data":Landroid/os/Bundle;
    const-string v9, "UserID"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v9, "RangeFlag"

    invoke-virtual {v8, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v9, "TimeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8, v9, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 183
    const-string v9, "DataCleaner"

    invoke-virtual {v10, v9, v8}, Lcom/huawei/displayengine/DisplayEngineDBManager;->addorUpdateRecord(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 184
    return v3

    .line 123
    .end local v1    # "weightedCounter":F
    .end local v3    # "rangeFlag":I
    .end local v4    # "previousRangeFlag":I
    .end local v5    # "safeZoneCounter":I
    .end local v6    # "comfortZoneCounter":I
    .end local v7    # "outlierZoneCounter":I
    .end local v8    # "data":Landroid/os/Bundle;
    .end local v10    # "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    :cond_b
    :goto_4
    return v3
.end method

.method private clamp(FFF)F
    .locals 2
    .param p1, "roof"    # F
    .param p2, "floor"    # F
    .param p3, "value"    # F

    .line 340
    move v0, p3

    .line 341
    .local v0, "ret":F
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_0

    .line 342
    move v0, p1

    .line 344
    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_1

    .line 345
    move v0, p2

    .line 347
    :cond_1
    return v0
.end method

.method private cleanDataWithDarkEnvironmentPolicy(Landroid/os/Bundle;F)Landroid/os/Bundle;
    .locals 6
    .param p1, "rawData"    # Landroid/os/Bundle;
    .param p2, "orgBrightnessLevel"    # F

    .line 305
    if-nez p1, :cond_0

    .line 306
    const-string v0, "DE J DisplayEngineDataCleaner"

    const-string v1, "rawData is null."

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    const-string v0, "AmbientLight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, "ambientLight":I
    const-string v1, "StopPoint"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 311
    .local v1, "stopPoint":F
    const-string v2, "DE J DisplayEngineDataCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanDataWithDarkEnvironmentPolicy stopPoint="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " ambientLight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-ltz v0, :cond_2

    sget v2, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->THRES_AL_DARK:I

    if-ge v0, v2, :cond_2

    .line 313
    sget-object v2, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mDarkLevelLUT:Ljava/util/ArrayList;

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 314
    .local v2, "index":I
    if-ltz v2, :cond_2

    .line 315
    sget-object v3, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mDarkLevelRoofLUT:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mDarkLevelRoofLUT:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    move v1, v3

    .line 316
    const-string v3, "StopPoint"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 317
    const-string v3, "DE J DisplayEngineDataCleaner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cleanDataWithDarkEnvironmentPolicy new stopPoint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " roof="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mDarkLevelRoofLUT:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v2    # "index":I
    :cond_2
    return-object p1
.end method

.method private cleanDataWithHighBrightnessEnvironmentPolicy(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "rawData"    # Landroid/os/Bundle;

    .line 324
    if-nez p1, :cond_0

    .line 325
    const-string v0, "DE J DisplayEngineDataCleaner"

    const-string v1, "rawData is null."

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_0
    const-string v0, "AmbientLight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 329
    .local v0, "ambientLight":I
    const-string v1, "StopPoint"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 330
    .local v1, "stopPoint":F
    const-string v2, "DE J DisplayEngineDataCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanDataWithHighBrightnessEnvironmentPolicy stopPoint="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-ltz v0, :cond_2

    sget v2, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->THRES_HBM:I

    if-lt v0, v2, :cond_2

    .line 332
    sget v2, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mOutdoorLevelFloor:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    sget v2, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mOutdoorLevelFloor:I

    int-to-float v2, v2

    :goto_0
    move v1, v2

    .line 333
    const-string v2, "StopPoint"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 334
    const-string v2, "DE J DisplayEngineDataCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanDataWithHighBrightnessEnvironmentPolicy new stopPoint="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_2
    return-object p1
.end method

.method private cleanDataWithHumanFactorPolicy(Landroid/os/Bundle;IF)Landroid/os/Bundle;
    .locals 4
    .param p1, "rawData"    # Landroid/os/Bundle;
    .param p2, "rangeFlag"    # I
    .param p3, "orgBrightnessLevel"    # F

    .line 283
    if-nez p1, :cond_0

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_0
    const-string v0, "DE J DisplayEngineDataCleaner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StartPoint"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " stopPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StopPoint"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 288
    const-string v0, "StopPoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 289
    .local v0, "stopPoint":F
    const/high16 v1, 0x40400000    # 3.0f

    mul-float v2, v1, p3

    .line 290
    .local v2, "safeRoof":F
    div-float v1, p3, v1

    .line 291
    .local v1, "safeFloor":F
    invoke-direct {p0, v2, v1, v0}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->clamp(FFF)F

    move-result v0

    .line 292
    const-string v3, "StopPoint"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 293
    .end local v0    # "stopPoint":F
    .end local v1    # "safeFloor":F
    .end local v2    # "safeRoof":F
    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 294
    const-string v0, "StopPoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 295
    .restart local v0    # "stopPoint":F
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v2, v1, p3

    .line 296
    .local v2, "comfortRoof":F
    div-float v1, p3, v1

    .line 297
    .local v1, "comfortFloor":F
    invoke-direct {p0, v2, v1, v0}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->clamp(FFF)F

    move-result v0

    .line 298
    const-string v3, "StopPoint"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 300
    .end local v0    # "stopPoint":F
    .end local v1    # "comfortFloor":F
    .end local v2    # "comfortRoof":F
    :cond_2
    :goto_0
    const-string v0, "DE J DisplayEngineDataCleaner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleaned stopPoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StopPoint"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/displayengine/DisplayEngineDataCleaner;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mInstance:Lcom/huawei/displayengine/DisplayEngineDataCleaner;

    if-nez v0, :cond_1

    .line 69
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mInstance:Lcom/huawei/displayengine/DisplayEngineDataCleaner;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;

    invoke-direct {v1, p0}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mInstance:Lcom/huawei/displayengine/DisplayEngineDataCleaner;

    .line 72
    const-string v1, "DE J DisplayEngineDataCleaner"

    const-string v2, "DisplayEngineDataCleaner initialized."

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 76
    :cond_1
    :goto_0
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mInstance:Lcom/huawei/displayengine/DisplayEngineDataCleaner;

    return-object v0
.end method

.method private static getLcdPanelName()Ljava/lang/String;
    .locals 9

    .line 418
    const-string v0, "DisplayEngineExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 419
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 420
    const-string v2, "DE J DisplayEngineDataCleaner"

    const-string v3, "getLcdPanelName() binder is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-object v1

    .line 423
    :cond_0
    invoke-static {v0}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v2

    .line 424
    .local v2, "mService":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-nez v2, :cond_1

    .line 425
    const-string v3, "DE J DisplayEngineDataCleaner"

    const-string v4, "getLcdPanelName() mService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-object v1

    .line 428
    :cond_1
    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 429
    .local v3, "name":[B
    const/4 v4, 0x0

    move v5, v4

    .line 431
    .local v5, "ret":I
    const/16 v6, 0xe

    :try_start_0
    array-length v7, v3

    invoke-interface {v2, v6, v4, v3, v7}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getEffect(II[BI)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 436
    .end local v5    # "ret":I
    .local v4, "ret":I
    nop

    .line 437
    if-eqz v4, :cond_2

    .line 438
    const-string v5, "DE J DisplayEngineDataCleaner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLcdPanelName() getEffect failed! ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-object v1

    .line 441
    :cond_2
    nop

    .line 443
    .local v1, "panelName":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 444
    .local v5, "lcdModel":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 445
    const/16 v6, 0x20

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 446
    const/16 v6, 0x27

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v6

    .line 449
    .end local v5    # "lcdModel":Ljava/lang/String;
    goto :goto_0

    .line 447
    :catch_0
    move-exception v5

    .line 448
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "DE J DisplayEngineDataCleaner"

    const-string v7, "Unsupported encoding type!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v1

    .line 433
    .end local v1    # "panelName":Ljava/lang/String;
    .end local v4    # "ret":I
    .local v5, "ret":I
    :catch_1
    move-exception v4

    .line 434
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "DE J DisplayEngineDataCleaner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLcdPanelName() RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-object v1
.end method

.method private getOriginalBrightnessLevel(I)F
    .locals 10
    .param p1, "currentLight"    # I

    .line 208
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mAmbientLightLUT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 209
    .local v0, "ambientLutSize":I
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mAmbientLightLUT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mBrightnessLevelLUT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mBrightnessLevelLUT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 213
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 214
    .local v2, "ind":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 215
    sget-object v3, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mAmbientLightLUT:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 216
    goto :goto_1

    .line 214
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_2
    :goto_1
    const/high16 v3, -0x40800000    # -1.0f

    .line 221
    .local v3, "orgBrightnessLevel":F
    const/4 v4, 0x1

    if-lt v2, v4, :cond_3

    add-int/lit8 v4, v0, -0x1

    if-gt v2, v4, :cond_3

    .line 222
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mAmbientLightLUT:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 223
    .local v1, "a":I
    sget-object v4, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mAmbientLightLUT:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 224
    .local v4, "b":I
    sub-int v5, p1, v1

    int-to-float v5, v5

    sub-int v6, v4, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 225
    .local v5, "alpha":F
    sget-object v6, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mBrightnessLevelLUT:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v5

    sget-object v8, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mBrightnessLevelLUT:Ljava/util/ArrayList;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 226
    .end local v1    # "a":I
    .end local v3    # "orgBrightnessLevel":F
    .end local v4    # "b":I
    .end local v5    # "alpha":F
    .local v6, "orgBrightnessLevel":F
    goto :goto_3

    .end local v6    # "orgBrightnessLevel":F
    .restart local v3    # "orgBrightnessLevel":F
    :cond_3
    if-nez v2, :cond_4

    .line 227
    sget-object v4, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mBrightnessLevelLUT:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .end local v3    # "orgBrightnessLevel":F
    .restart local v6    # "orgBrightnessLevel":F
    :goto_2
    goto :goto_3

    .line 228
    .end local v6    # "orgBrightnessLevel":F
    .restart local v3    # "orgBrightnessLevel":F
    :cond_4
    add-int/lit8 v1, v0, -0x1

    if-le v2, v1, :cond_5

    .line 229
    sget-object v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mBrightnessLevelLUT:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_2

    .line 231
    :cond_5
    const-string v1, "DE J DisplayEngineDataCleaner"

    const-string v4, "Invalid ind!"

    invoke-static {v1, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_2

    .line 234
    .end local v3    # "orgBrightnessLevel":F
    .restart local v6    # "orgBrightnessLevel":F
    :goto_3
    return v6

    .line 210
    .end local v2    # "ind":I
    .end local v6    # "orgBrightnessLevel":F
    :cond_6
    :goto_4
    const-string v1, "DE J DisplayEngineDataCleaner"

    const-string v2, "getOriginalBrightnessLevel invalid input!"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/high16 v1, -0x40800000    # -1.0f

    return v1
.end method

.method private getRangeFlagByUserId(I)I
    .locals 6
    .param p1, "userId"    # I

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "rangeFlag":I
    if-gez p1, :cond_0

    .line 190
    return v0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getInstance(Landroid/content/Context;)Lcom/huawei/displayengine/DisplayEngineDBManager;

    move-result-object v1

    .line 193
    .local v1, "dbManager":Lcom/huawei/displayengine/DisplayEngineDBManager;
    const-string v2, "DataCleaner"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/huawei/displayengine/DisplayEngineDBManager;->getAllRecords(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 194
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz v2, :cond_2

    .line 195
    const/4 v3, 0x0

    .local v3, "curInd":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 196
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 197
    .local v4, "data":Landroid/os/Bundle;
    const-string v5, "UserID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 198
    const-string v5, "RangeFlag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 199
    goto :goto_1

    .line 195
    .end local v4    # "data":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "curInd":I
    :cond_2
    :goto_1
    return v0
.end method

.method private static getVersionFromLCD()Ljava/lang/String;
    .locals 11

    .line 375
    const-string v0, "DisplayEngineExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 376
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 377
    const-string v2, "DE J DisplayEngineDataCleaner"

    const-string v3, "getLcdPanelName() binder is null!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-object v1

    .line 380
    :cond_0
    invoke-static {v0}, Lcom/huawei/displayengine/IDisplayEngineServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    move-result-object v2

    .line 381
    .local v2, "mService":Lcom/huawei/displayengine/IDisplayEngineServiceEx;
    if-nez v2, :cond_1

    .line 382
    const-string v3, "DE J DisplayEngineDataCleaner"

    const-string v4, "getLcdPanelName() mService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-object v1

    .line 385
    :cond_1
    const/16 v3, 0x20

    new-array v3, v3, [B

    .line 386
    .local v3, "name":[B
    const/4 v4, 0x0

    .line 388
    .local v4, "ret":I
    const/16 v5, 0xe

    const/4 v6, 0x3

    :try_start_0
    array-length v7, v3

    invoke-interface {v2, v5, v6, v3, v7}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getEffect(II[BI)I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v5

    .line 393
    nop

    .line 394
    if-eqz v4, :cond_2

    .line 395
    const-string v5, "DE J DisplayEngineDataCleaner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLcdPanelName() getEffect failed! ret="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v1

    .line 398
    :cond_2
    nop

    .line 400
    .local v1, "panelVersion":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 401
    .local v5, "lcdVersion":Ljava/lang/String;
    nop

    .line 402
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 403
    const-string v6, "VER:"

    .line 404
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 405
    .local v7, "index":I
    const-string v8, "DE J DisplayEngineDataCleaner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVersionFromLCD() index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",lcdVersion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 407
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v8

    .line 412
    .end local v5    # "lcdVersion":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "index":I
    :cond_3
    goto :goto_0

    .line 410
    :catch_0
    move-exception v5

    .line 411
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "DE J DisplayEngineDataCleaner"

    const-string v7, "Unsupported encoding type!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    const-string v5, "DE J DisplayEngineDataCleaner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVersionFromLCD() panelVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object v1

    .line 390
    .end local v1    # "panelVersion":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 391
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "DE J DisplayEngineDataCleaner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLcdPanelName() RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-object v1
.end method

.method private getWeightedCounter(III)F
    .locals 4
    .param p1, "comfortZoneCounter"    # I
    .param p2, "safeZoneCounter"    # I
    .param p3, "outlierZoneCounter"    # I

    .line 256
    add-int v0, p1, p2

    add-int/2addr v0, p3

    .line 257
    .local v0, "sumCounter":I
    if-nez v0, :cond_0

    .line 258
    const/4 v1, 0x0

    return v1

    .line 260
    :cond_0
    sget v1, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->COMFORT_ZONE_COUNTER_WEIGHT:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    sget v2, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->SAFE_ZONE_COUNTER_WEIGHT:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sget v2, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->OUTLIER_ZONE_COUNTER_WEIGHT:F

    int-to-float v3, p3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 264
    .local v1, "weightedCounter":F
    return v1
.end method

.method private static getXmlFileName()Ljava/lang/String;
    .locals 13

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "xmlPath":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->getLcdPanelName()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "panelName":Ljava/lang/String;
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->getVersionFromLCD()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "panelVersion":Ljava/lang/String;
    const-string v3, "%s%s_%s%s"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "/product/etc/display/effect/displayengine/"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "DataCleanerConfig"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const-string v9, ".xml"

    const/4 v10, 0x3

    aput-object v9, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "xmlPathWithPanelName":Ljava/lang/String;
    const-string v5, "%s%s"

    new-array v9, v6, [Ljava/lang/Object;

    const-string v11, "/product/etc/display/effect/displayengine/"

    aput-object v11, v9, v7

    const-string v11, "DataCleanerConfig.xml"

    aput-object v11, v9, v8

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "xmlPathWithoutPanelName":Ljava/lang/String;
    const-string v9, "%s%s_%s_%s%s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "/product/etc/display/effect/displayengine/"

    aput-object v12, v11, v7

    const-string v7, "DataCleanerConfig"

    aput-object v7, v11, v8

    aput-object v1, v11, v6

    aput-object v2, v11, v10

    const-string v6, ".xml"

    aput-object v6, v11, v4

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "xmlPathWithPanelNameAndPanelVersion":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    .local v6, "xmlFileWithPanelName":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v7, "xmlFileWithoutPanelName":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v8, "xmlFileWithPanelNameAndPanelVersion":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 362
    move-object v0, v4

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 364
    move-object v0, v3

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 366
    move-object v0, v5

    goto :goto_0

    .line 368
    :cond_2
    const-string v9, "DE J DisplayEngineDataCleaner"

    const-string v10, "DataCleanerConfig.xml missing."

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-object v0
.end method

.method private isDataInComfortZone(FF)Z
    .locals 4
    .param p1, "stopPoint"    # F
    .param p2, "originalBrightnessLevel"    # F

    .line 238
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v1, p2, v0

    .line 242
    .local v1, "comfortRoof":F
    div-float v0, p2, v0

    .line 243
    .local v0, "comfortFloor":F
    cmpl-float v3, p1, v0

    if-ltz v3, :cond_1

    cmpg-float v3, p1, v1

    if-gtz v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    .line 239
    .end local v0    # "comfortFloor":F
    .end local v1    # "comfortRoof":F
    :cond_2
    :goto_0
    return v2
.end method

.method private isDataInSafeZone(FF)Z
    .locals 4
    .param p1, "stopPoint"    # F
    .param p2, "originalBrightnessLevel"    # F

    .line 247
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v1, p2, v0

    .line 251
    .local v1, "safeRoof":F
    div-float v0, p2, v0

    .line 252
    .local v0, "safeFloor":F
    cmpl-float v3, p1, v0

    if-ltz v3, :cond_1

    cmpg-float v3, p1, v1

    if-gtz v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    .line 248
    .end local v0    # "safeFloor":F
    .end local v1    # "safeRoof":F
    :cond_2
    :goto_0
    return v2
.end method

.method private static setParameters()V
    .locals 1

    .line 269
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->comfortZoneCounterWeight:F

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->COMFORT_ZONE_COUNTER_WEIGHT:F

    .line 270
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->safeZoneCounterWeight:F

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->SAFE_ZONE_COUNTER_WEIGHT:F

    .line 271
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outlierZoneCounterWeight:F

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->OUTLIER_ZONE_COUNTER_WEIGHT:F

    .line 272
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->counterWeightThresh:F

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->COUNTER_WEIGHT_THRES:F

    .line 273
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->alDarkThresh:I

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->THRES_AL_DARK:I

    .line 274
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->hbmTresh:I

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->THRES_HBM:I

    .line 275
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outDoorLevelFloor:I

    sput v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mOutdoorLevelFloor:I

    .line 276
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget-object v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->ambientLightLUT:Ljava/util/ArrayList;

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mAmbientLightLUT:Ljava/util/ArrayList;

    .line 277
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget-object v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->brightnessLevelLUT:Ljava/util/ArrayList;

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mBrightnessLevelLUT:Ljava/util/ArrayList;

    .line 278
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget-object v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelLUT:Ljava/util/ArrayList;

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mDarkLevelLUT:Ljava/util/ArrayList;

    .line 279
    sget-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mParameters:Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    iget-object v0, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelRoofLUT:Ljava/util/ArrayList;

    sput-object v0, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->mDarkLevelRoofLUT:Ljava/util/ArrayList;

    .line 280
    return-void
.end method


# virtual methods
.method public cleanData(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 10
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 80
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v0, "DE J DisplayEngineDataCleaner"

    const-string v1, "enter cleanData func."

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    if-ltz p2, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 85
    :cond_0
    const-string v1, "DE J DisplayEngineDataCleaner"

    const-string v2, "start to  cleanData"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->calculateRangeFlag(Ljava/util/List;I)I

    move-result v1

    .line 87
    .local v1, "rangeFlag":I
    const-string v2, "DE J DisplayEngineDataCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rangeFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-nez v1, :cond_1

    .line 89
    return-object v0

    .line 91
    :cond_1
    const-string v0, "DE J DisplayEngineDataCleaner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw records size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    .local v0, "curInd":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 93
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 94
    .local v2, "data":Landroid/os/Bundle;
    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 95
    const-string v4, "GameState"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 96
    .local v4, "gameState":I
    if-ne v4, v3, :cond_2

    .line 97
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    add-int/lit8 v0, v0, -0x1

    .line 99
    const-string v5, "DE J DisplayEngineDataCleaner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "records index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " removed because of game state == 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_1

    .line 102
    :cond_2
    const-string v5, "AmbientLight"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 103
    .local v5, "ambientLight":I
    invoke-direct {p0, v5}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->getOriginalBrightnessLevel(I)F

    move-result v6

    .line 104
    .local v6, "orgBrightnessLevel":F
    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-lez v7, :cond_4

    .line 105
    invoke-direct {p0, v2, v1, v6}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->cleanDataWithHumanFactorPolicy(Landroid/os/Bundle;IF)Landroid/os/Bundle;

    move-result-object v2

    .line 106
    if-eqz v2, :cond_3

    .line 107
    invoke-direct {p0, v2, v6}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->cleanDataWithDarkEnvironmentPolicy(Landroid/os/Bundle;F)Landroid/os/Bundle;

    move-result-object v2

    .line 109
    :cond_3
    if-eqz v2, :cond_5

    .line 110
    invoke-direct {p0, v2}, Lcom/huawei/displayengine/DisplayEngineDataCleaner;->cleanDataWithHighBrightnessEnvironmentPolicy(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    .line 113
    :cond_4
    const-string v7, "DE J DisplayEngineDataCleaner"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "orgBrightnessLevel="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v4    # "gameState":I
    .end local v5    # "ambientLight":I
    .end local v6    # "orgBrightnessLevel":F
    :cond_5
    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    .line 117
    .end local v0    # "curInd":I
    :cond_6
    const-string v0, "DE J DisplayEngineDataCleaner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleaned records size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object p1

    .line 82
    .end local v1    # "rangeFlag":I
    :cond_7
    :goto_2
    const-string v1, "DE J DisplayEngineDataCleaner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clean data error! userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v0
.end method
