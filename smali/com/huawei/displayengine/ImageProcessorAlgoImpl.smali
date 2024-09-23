.class Lcom/huawei/displayengine/ImageProcessorAlgoImpl;
.super Ljava/lang/Object;
.source "ImageProcessorAlgoImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;,
        Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;,
        Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;,
        Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;,
        Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;,
        Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DE J ImageProcessorAlgoImpl"

.field private static mAlgoXmlPath:Ljava/lang/String;


# instance fields
.field private mHandle:I

.field private mInited:Z

.field private final mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mAlgoXmlPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/displayengine/IDisplayEngineServiceEx;)V
    .locals 2
    .param p1, "service"    # Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "ImageProcessorAlgoImpl enter"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    .line 33
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->initAlgo()V

    .line 34
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->initAlgoXmlPath()V

    .line 35
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mAlgoXmlPath:Ljava/lang/String;

    return-object v0
.end method

.method private createImageEngine(Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;)Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    .locals 7
    .param p1, "param"    # Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;

    .line 374
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    if-eqz v0, :cond_1

    .line 378
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "createImageEngineAlgo()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "ret":I
    const-string v1, "createImageEngine"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 381
    const/4 v1, 0x0

    iget v4, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mHandle:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, p1, v6}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v0

    .line 383
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 384
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->getAlgoHandle()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 385
    const-string v1, "DE J ImageProcessorAlgoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createImageEngineAlgo() handle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->getAlgoHandle()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    invoke-virtual {p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;->getAlgoHandle()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;-><init>(J)V

    return-object v1

    .line 388
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createImageEngineAlgo() native_processAlgorithm error, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DE J ImageProcessorAlgoImpl"

    invoke-static {v2, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createImageEngineAlgo failed ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    .end local v0    # "ret":I
    :cond_1
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "createImageEngine() algo init failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createImageEngine algo init failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAlgoXmlFile()Ljava/io/File;
    .locals 8

    .line 132
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->getLcdModelName()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "lcdModelName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    const-string v2, "DE J ImageProcessorAlgoImpl"

    const-string v3, "initAlgoXmlPath() getLcdModelName fail!"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v2, "display/effect/algorithm/imageprocessor/ImageProcessAlgoParam.xml"

    invoke-static {v2, v1}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 137
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "xmlName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display/effect/algorithm/imageprocessor/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 139
    .local v3, "xmlFile":Ljava/io/File;
    if-eqz v3, :cond_1

    .line 140
    return-object v3

    .line 142
    :cond_1
    const-string v4, "display/effect/algorithm/imageprocessor/ImageProcessAlgoParam.xml"

    invoke-static {v4, v1}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_2

    .line 144
    return-object v3

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->getProductName()Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "productName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "xmlNameWithProduct":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gallery/display_engine/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lhuawei/cust/HwCfgFilePolicy;->getCfgFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 151
    .end local v5    # "xmlNameWithProduct":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private getInfoFromCommon(Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;
    .locals 8
    .param p1, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    .line 305
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;-><init>(Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V

    .line 310
    .local v0, "getInfoFromCommonParam":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;
    const/4 v1, 0x0

    .line 311
    .local v1, "ret":I
    const-string v2, "getInfoFromCommon"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 312
    const/4 v2, 0x0

    iget v5, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mHandle:I

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v0, v7}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v1

    .line 314
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 315
    if-nez v1, :cond_0

    .line 316
    return-object v0

    .line 318
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInfoFromCommon() native_processAlgorithm error, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DE J ImageProcessorAlgoImpl"

    invoke-static {v3, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInfoFromCommon failed ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    .end local v0    # "getInfoFromCommonParam":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;
    .end local v1    # "ret":I
    :cond_1
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "getInfoFromCommon() algo init failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getInfoFromCommon algo init failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLcdModelName()Ljava/lang/String;
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v2, "getLcdModelName() mService is null!"

    invoke-static {v0, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v1

    .line 81
    :cond_0
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 82
    .local v0, "name":[B
    const/4 v2, 0x0

    move v3, v2

    .line 84
    .local v3, "ret":I
    :try_start_0
    iget-object v4, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mService:Lcom/huawei/displayengine/IDisplayEngineServiceEx;

    const/16 v5, 0xe

    array-length v6, v0

    invoke-interface {v4, v5, v2, v0, v6}, Lcom/huawei/displayengine/IDisplayEngineServiceEx;->getEffect(II[BI)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v3    # "ret":I
    .local v2, "ret":I
    nop

    .line 90
    if-eqz v2, :cond_1

    .line 91
    const-string v3, "DE J ImageProcessorAlgoImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLcdModelName() getEffect failed! ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v1

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 95
    .local v1, "lcdModel":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v3, "[^A-Za-z0-9_.-]"

    const-string v4, "_"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "lcdModelName":Ljava/lang/String;
    return-object v3

    .line 86
    .end local v1    # "lcdModel":Ljava/lang/String;
    .end local v2    # "ret":I
    .local v3, "ret":I
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "DE J ImageProcessorAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLcdModelName() RemoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v1
.end method

.method private getProductName()Ljava/lang/String;
    .locals 6

    .line 101
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 102
    .local v0, "product":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    const-string v2, "DE J ImageProcessorAlgoImpl"

    const-string v3, "getProductName() get android.os.Build.MODEL failed!"

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object v1

    .line 106
    :cond_0
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "productSplit":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 108
    const-string v3, "DE J ImageProcessorAlgoImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductName() product="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " format error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-object v1

    .line 111
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v2, v1

    .line 112
    .local v1, "productName":Ljava/lang/String;
    const-string v3, "DE J ImageProcessorAlgoImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductName() productName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-object v1
.end method

.method private initAlgo()V
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    if-nez v0, :cond_1

    .line 61
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "initAlgo enter"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "initAlgo"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeInitAlgorithm(I)I

    move-result v0

    .line 64
    .local v0, "ret":I
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 65
    if-ltz v0, :cond_0

    .line 66
    const-string v1, "DE J ImageProcessorAlgoImpl"

    const-string v2, "initAlgo success"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    .line 68
    iput v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mHandle:I

    goto :goto_0

    .line 70
    :cond_0
    const-string v1, "DE J ImageProcessorAlgoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAlgo failed! ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    const-string v1, "DE J ImageProcessorAlgoImpl"

    const-string v2, "initAlgo exit"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "ret":I
    :cond_1
    return-void
.end method

.method private initAlgoXmlPath()V
    .locals 5

    .line 117
    invoke-direct {p0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->getAlgoXmlFile()Ljava/io/File;

    move-result-object v0

    .line 118
    .local v0, "xmlFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 119
    const-string v1, "DE J ImageProcessorAlgoImpl"

    const-string v2, "initAlgoXmlPath() error! can\'t find xml"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 124
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mAlgoXmlPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "DE J ImageProcessorAlgoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAlgoXmlPath() IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    const-string v1, "DE J ImageProcessorAlgoImpl"

    const-string v2, "initAlgoXmlPath() success"

    invoke-static {v1, v2}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method private processImageEngine(Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;)V
    .locals 7
    .param p1, "param"    # Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;

    .line 480
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    if-eqz v0, :cond_1

    .line 484
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "processImageEngine()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "ret":I
    const-string v1, "processImageEngine"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 487
    const/4 v1, 0x0

    iget v4, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mHandle:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, p1, v6}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v0

    .line 489
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 490
    if-nez v0, :cond_0

    .line 494
    return-void

    .line 491
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processImageEngine() native_processAlgorithm error, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DE J ImageProcessorAlgoImpl"

    invoke-static {v2, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImageEngine failed ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    .end local v0    # "ret":I
    :cond_1
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "processImageEngine() algo init failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "processImageEngine algo init failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createCommonInfo(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)J
    .locals 8
    .param p1, "thumbnailParam"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;

    .line 242
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    if-eqz v0, :cond_1

    .line 246
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "createCommonInfo()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;-><init>(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V

    .line 248
    .local v0, "param":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;
    const/4 v1, 0x0

    .line 249
    .local v1, "ret":I
    const-string v2, "createCommonInfo"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 250
    const/4 v2, 0x0

    iget v5, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mHandle:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v0, v7}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v1

    .line 252
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 253
    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;->getCommonHandle()J

    move-result-wide v2

    .line 254
    .local v2, "handle":J
    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 255
    const-string v4, "DE J ImageProcessorAlgoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCommonInfo() commonHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-wide v2

    .line 258
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCommonInfo() native_processAlgorithm error, ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DE J ImageProcessorAlgoImpl"

    invoke-static {v5, v4}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCommonInfo failed ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 243
    .end local v0    # "param":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateCommonAlgoParam;
    .end local v1    # "ret":I
    .end local v2    # "handle":J
    :cond_1
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "createCommonInfo() algo init failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createCommonInfo algo init failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createImageEngine(Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;)Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    .locals 2
    .param p1, "createTileProcessEngineParam"    # Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;

    .line 369
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;-><init>(Lcom/huawei/displayengine/ImageProcessor$CreateTileProcessEngineParam;)V

    .line 370
    .local v0, "createImageEngineAlgoParam":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;
    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->createImageEngine(Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;)Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    move-result-object v1

    return-object v1
.end method

.method public createImageEngine(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    .locals 2
    .param p1, "thumbnailParam"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;

    .line 364
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;-><init>(Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V

    .line 365
    .local v0, "createImageEngineAlgoParam":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;
    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->createImageEngine(Lcom/huawei/displayengine/ImageProcessorAlgoImpl$CreateImageEngineAlgoParam;)Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    move-result-object v1

    return-object v1
.end method

.method public destroyCommonInfo(Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)V
    .locals 9
    .param p1, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    .line 264
    if-eqz p1, :cond_3

    iget-wide v0, p1, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    if-eqz v0, :cond_2

    .line 271
    const-string v0, "DE J ImageProcessorAlgoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyCommonInfo(), commonHandle="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "ret":I
    const-string v1, "destroyCommonInfo"

    const-wide/16 v4, 0x8

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 274
    const/4 v1, 0x0

    iget v6, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mHandle:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, p1, v8}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v0

    .line 276
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 277
    if-nez v0, :cond_1

    .line 278
    iput-wide v2, p1, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    .line 283
    return-void

    .line 280
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyCommonInfo() native_processAlgorithm error, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DE J ImageProcessorAlgoImpl"

    invoke-static {v2, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyCommonInfo failed ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    .end local v0    # "ret":I
    :cond_2
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "destroyCommonInfo() algo init failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "destroyCommonInfo algo init failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_3
    :goto_0
    return-void
.end method

.method public destroyImageEngine(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;)V
    .locals 9
    .param p1, "imageEngine"    # Lcom/huawei/displayengine/ImageProcessor$ImageEngine;

    .line 509
    iget-wide v0, p1, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 510
    return-void

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    if-eqz v0, :cond_2

    .line 516
    const-string v0, "DE J ImageProcessorAlgoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyImageEngine(), handle="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "ret":I
    const-string v1, "destroyImageEngine"

    const-wide/16 v4, 0x8

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 519
    const/4 v1, 0x0

    iget v6, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mHandle:I

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, p1, v8}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v0

    .line 521
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 522
    if-nez v0, :cond_1

    .line 523
    iput-wide v2, p1, Lcom/huawei/displayengine/ImageProcessor$ImageEngine;->mAlgoHandle:J

    .line 528
    return-void

    .line 525
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyImageEngine() native_processAlgorithm error, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DE J ImageProcessorAlgoImpl"

    invoke-static {v2, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyImageEngine failed ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    .end local v0    # "ret":I
    :cond_2
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "destroyImageEngine() algo init failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "destroyImageEngine algo init failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "deinitAlgo enter"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "deinitAlgo"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mHandle:I

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeDeinitAlgorithm(II)I

    .line 50
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "deinitAlgo exit"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-boolean v3, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    nop

    .line 57
    return-void

    .line 55
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getHardwareSharpnessLevel(Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)I
    .locals 4
    .param p1, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;

    .line 299
    const-string v0, "DE J ImageProcessorAlgoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHardwareSharpnessLevel(), handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/huawei/displayengine/ImageProcessor$CommonInfo;->mCommonHandle:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->getInfoFromCommon(Lcom/huawei/displayengine/ImageProcessor$CommonInfo;)Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;

    move-result-object v0

    .line 301
    .local v0, "getInfoFromCommonParam":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;
    invoke-virtual {v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$GetInfoFromCommonParam;->getHardwareSharpnessLevel()I

    move-result v1

    return v1
.end method

.method public isAlgoInitSuccess()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    return v0
.end method

.method public processThumbnail(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V
    .locals 2
    .param p1, "imageEngine"    # Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    .param p2, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;
    .param p3, "thumbnailParam"    # Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;

    .line 497
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "processThumbnail()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;Lcom/huawei/displayengine/ImageProcessor$ThumbnailParam;)V

    .line 499
    .local v0, "processImageEngineAlgoParam":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;
    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->processImageEngine(Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;)V

    .line 500
    return-void
.end method

.method public processTileAlgo(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;Lcom/huawei/displayengine/ImageProcessor$TileParam;)V
    .locals 2
    .param p1, "imageEngine"    # Lcom/huawei/displayengine/ImageProcessor$ImageEngine;
    .param p2, "commonInfo"    # Lcom/huawei/displayengine/ImageProcessor$CommonInfo;
    .param p3, "tileParam"    # Lcom/huawei/displayengine/ImageProcessor$TileParam;

    .line 503
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "processTileAlgo()"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;-><init>(Lcom/huawei/displayengine/ImageProcessor$ImageEngine;Lcom/huawei/displayengine/ImageProcessor$CommonInfo;Lcom/huawei/displayengine/ImageProcessor$TileParam;)V

    .line 505
    .local v0, "processImageEngineAlgoParam":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;
    invoke-direct {p0, v0}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->processImageEngine(Lcom/huawei/displayengine/ImageProcessorAlgoImpl$ProcessImageEngineAlgoParam;)V

    .line 506
    return-void
.end method

.method public transformColorspace(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V
    .locals 8
    .param p1, "colorspaceParam"    # Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;

    .line 197
    iget-boolean v0, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mInited:Z

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "DE J ImageProcessorAlgoImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transformColorspace() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mInColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;->mOutColorspace:Lcom/huawei/displayengine/ImageProcessor$ColorspaceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;

    invoke-direct {v0, p1}, Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;-><init>(Lcom/huawei/displayengine/ImageProcessor$ColorspaceParam;)V

    .line 204
    .local v0, "param":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;
    const/4 v1, 0x0

    .line 205
    .local v1, "ret":I
    const-string v2, "transformColorspace"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 206
    const/4 v2, 0x0

    iget v5, p0, Lcom/huawei/displayengine/ImageProcessorAlgoImpl;->mHandle:I

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v0, v7}, Lcom/huawei/displayengine/DisplayEngineLibraries;->nativeProcessAlgorithm(IIILjava/lang/Object;[B)I

    move-result v1

    .line 208
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 209
    if-nez v1, :cond_0

    .line 213
    return-void

    .line 210
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transformColorspace() native_processAlgorithm error, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DE J ImageProcessorAlgoImpl"

    invoke-static {v3, v2}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transformColorspace failed ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    .end local v0    # "param":Lcom/huawei/displayengine/ImageProcessorAlgoImpl$TransformColorspaceAlgoParam;
    .end local v1    # "ret":I
    :cond_1
    const-string v0, "DE J ImageProcessorAlgoImpl"

    const-string v1, "transformColorspace() algo init failed"

    invoke-static {v0, v1}, Lcom/huawei/displayengine/DElog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "transformColorspace algo init failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
