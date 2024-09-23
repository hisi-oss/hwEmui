.class public Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;
.super Ljava/lang/Object;
.source "DisplayEngineDataCleanerXMLLoader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public alDarkThresh:I

.field public ambientLightLUT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public brightnessLevelLUT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public comfortZoneCounterWeight:F

.field public counterWeightThresh:F

.field public darkLevelLUT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public darkLevelRoofLUT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public hbmTresh:I

.field public outDoorLevelFloor:I

.field public outlierZoneCounterWeight:F

.field public safeZoneCounterWeight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->comfortZoneCounterWeight:F

    .line 35
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->safeZoneCounterWeight:F

    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outlierZoneCounterWeight:F

    .line 37
    iput v0, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->counterWeightThresh:F

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->alDarkThresh:I

    .line 39
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->hbmTresh:I

    .line 40
    const/16 v0, 0x8b

    iput v0, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outDoorLevelFloor:I

    return-void
.end method

.method private cloneFloatList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 70
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    return-object v0

    .line 76
    .end local v0    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DisplayEngineDataCleanerXMLLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloneList() error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object p1
.end method

.method private cloneIntegerList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    return-object v0

    .line 63
    .end local v0    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DisplayEngineDataCleanerXMLLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloneList() error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object p1
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;

    .line 49
    .local v0, "newData":Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->ambientLightLUT:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->cloneIntegerList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->ambientLightLUT:Ljava/util/ArrayList;

    .line 50
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->brightnessLevelLUT:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->cloneFloatList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->brightnessLevelLUT:Ljava/util/ArrayList;

    .line 51
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelLUT:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->cloneIntegerList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelLUT:Ljava/util/ArrayList;

    .line 52
    iget-object v1, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelRoofLUT:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->cloneFloatList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelRoofLUT:Ljava/util/ArrayList;

    .line 53
    return-object v0
.end method

.method public loadDefaultConfig()V
    .locals 17

    .line 99
    move-object/from16 v0, p0

    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "DisplayEngineDataCleanerXMLLoader"

    const-string v2, "loadDefaultConfig()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->comfortZoneCounterWeight:F

    .line 104
    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->safeZoneCounterWeight:F

    .line 105
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outlierZoneCounterWeight:F

    .line 106
    iput v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->counterWeightThresh:F

    .line 107
    const/16 v1, 0xa

    iput v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->alDarkThresh:I

    .line 108
    const/16 v2, 0xbb8

    iput v2, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->hbmTresh:I

    .line 109
    const/16 v2, 0x8b

    iput v2, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outDoorLevelFloor:I

    .line 111
    iget-object v2, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->ambientLightLUT:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->ambientLightLUT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 114
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x23

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v3, v9

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v3, v11

    const/16 v10, 0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v6

    const/16 v12, 0x1e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x6

    aput-object v12, v3, v13

    const/16 v12, 0x32

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x7

    aput-object v12, v3, v14

    const/16 v12, 0x46

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v15, 0x8

    aput-object v12, v3, v15

    const/16 v12, 0x64

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v15, 0x9

    aput-object v12, v3, v15

    const/16 v12, 0x96

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v12, 0xc8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v1, 0xb

    aput-object v12, v3, v1

    const/16 v12, 0xfa

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v1, 0xc

    aput-object v12, v3, v1

    const/16 v12, 0xd

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v12

    const/16 v1, 0xe

    const/16 v12, 0x15e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    const/16 v1, 0x10

    const/16 v12, 0x1f4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x11

    const/16 v12, 0x258

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x12

    const/16 v12, 0x2bc

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x13

    const/16 v12, 0x320

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x384

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v10

    const/16 v1, 0x15

    const/16 v12, 0x3e8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x16

    const/16 v12, 0x4b0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x17

    const/16 v12, 0x578

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x18

    const/16 v12, 0x708

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x19

    const/16 v12, 0x960

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x1a

    const/16 v12, 0xbb8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x1b

    const/16 v12, 0xfa0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x1c

    const/16 v12, 0x1388

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x1d

    const/16 v12, 0x1770

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x1e

    const/16 v12, 0x1f40

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x1f

    const/16 v12, 0x2710

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x20

    const/16 v12, 0x3a98

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x21

    const/16 v12, 0x4e20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    const/16 v1, 0x22

    const/16 v12, 0x7530

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->ambientLightLUT:Ljava/util/ArrayList;

    .line 116
    iget-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->brightnessLevelLUT:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->brightnessLevelLUT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 119
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x23

    new-array v2, v2, [Ljava/lang/Float;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x40d66666    # 6.7f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    const/high16 v3, 0x41140000    # 9.25f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/high16 v3, 0x41580000    # 13.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v9

    const/high16 v3, 0x418e0000    # 17.75f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v11

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x41d2a9fc    # 26.333f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v13

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v14

    const v3, 0x420e86c2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v12, 0x8

    aput-object v3, v2, v12

    const v3, 0x421250cb

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v15

    const v3, 0x4218a1b1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v12, 0xa

    aput-object v3, v2, v12

    const v3, 0x421ef27c

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v12, 0xb

    aput-object v3, v2, v12

    const v3, 0x42254361

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v12, 0xc

    aput-object v3, v2, v12

    const/16 v3, 0xd

    const v12, 0x422b942c

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v2, v3

    const/16 v3, 0xe

    const v12, 0x4231e512

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v2, v3

    const v3, 0x423835dd

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v8

    const/16 v3, 0x10

    const v12, 0x4244d78d

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v2, v3

    const/16 v3, 0x11

    const v12, 0x4251793e

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v2, v3

    const/16 v3, 0x12

    const v12, 0x425e1aee

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v2, v3

    const/16 v3, 0x13

    const v12, 0x426abac7

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v2, v3

    const v3, 0x42775e4f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v10

    const/16 v3, 0x15

    const/high16 v10, 0x42820000    # 65.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x16

    const v10, 0x428e999a    # 71.3f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x17

    const v10, 0x429b3333    # 77.6f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x18

    const v10, 0x42b46666    # 90.2f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x19

    const v10, 0x42da3333    # 109.1f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x1a

    const/high16 v10, 0x43000000    # 128.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x1b

    const/high16 v10, 0x431e0000    # 158.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x1c

    const v10, 0x4320d553

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x1d

    const v10, 0x4323aaad

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x1e

    const v10, 0x43295553

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x1f

    const/high16 v10, 0x432f0000    # 175.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x20

    const/high16 v10, 0x43430000    # 195.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x21

    const/high16 v10, 0x43570000    # 215.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    const/16 v3, 0x22

    const/high16 v10, 0x437f0000    # 255.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->brightnessLevelLUT:Ljava/util/ArrayList;

    .line 121
    iget-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelLUT:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 122
    iget-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelLUT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 124
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v11

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v6

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v13

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v14

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v10, 0x8

    aput-object v2, v3, v10

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xa

    aput-object v2, v3, v8

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xb

    aput-object v2, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelLUT:Ljava/util/ArrayList;

    .line 126
    iget-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelRoofLUT:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelRoofLUT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 129
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Float;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v9

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v11

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v13

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v14

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v15

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelRoofLUT:Ljava/util/ArrayList;

    .line 130
    return-void
.end method

.method public printData()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printData() comfortZoneCounterWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->comfortZoneCounterWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", safeZoneCounterWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->safeZoneCounterWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", outlierZoneCounterWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outlierZoneCounterWeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", counterWeightThresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->counterWeightThresh:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alDarkThresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->alDarkThresh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", hbmTresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->hbmTresh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", outDoorLevelFloor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->outDoorLevelFloor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambientLightLUT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->ambientLightLUT:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightnessLevelLUT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->brightnessLevelLUT:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "darkLevelLUT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelLUT:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "DisplayEngineDataCleanerXMLLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "darkLevelRoofLUT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/displayengine/DisplayEngineDataCleanerXMLLoader$Data;->darkLevelRoofLUT:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method
