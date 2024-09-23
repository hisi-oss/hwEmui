.class public Landroid/rms/HwSysSpeedRes;
.super Landroid/rms/HwSysResImpl;
.source "HwSysSpeedRes.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.HwSysSpeedRes"

.field private static mWhiteListTypes:[I


# instance fields
.field protected mOverloadNumber:I

.field protected mOverloadPeriod:I

.field protected mPreReportTime:J

.field protected mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sput-object v0, Landroid/rms/HwSysSpeedRes;->mWhiteListTypes:[I

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/rms/HwSysSpeedRes;->mWhiteListTypes:[I

    invoke-direct {p0, p1, p2, v0}, Landroid/rms/HwSysSpeedRes;-><init>(ILjava/lang/String;[I)V

    .line 30
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;[I)V
    .locals 2
    .param p1, "resourceType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mWhiteListTypes"    # [I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/HwSysResImpl;-><init>(ILjava/lang/String;[I)V

    .line 22
    const-string v0, "RMS.HwSysSpeedRes"

    iput-object v0, p0, Landroid/rms/HwSysSpeedRes;->mTag:Ljava/lang/String;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/rms/HwSysSpeedRes;->mPreReportTime:J

    .line 34
    new-instance v0, Landroid/rms/control/ResourceFlowControl;

    invoke-direct {v0}, Landroid/rms/control/ResourceFlowControl;-><init>()V

    iput-object v0, p0, Landroid/rms/HwSysSpeedRes;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    .line 35
    iput-object p2, p0, Landroid/rms/HwSysSpeedRes;->mTag:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected createBundleForResource(JILandroid/rms/config/ResourceConfig;Landroid/rms/control/ResourceFlowControl;)Landroid/os/Bundle;
    .locals 1
    .param p1, "id"    # J
    .param p3, "typeID"    # I
    .param p4, "config"    # Landroid/rms/config/ResourceConfig;
    .param p5, "resourceFlowControl"    # Landroid/rms/control/ResourceFlowControl;

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSpeedOverloadStrategy(I)I
    .locals 5
    .param p1, "typeID"    # I

    .line 43
    iget-object v0, p0, Landroid/rms/HwSysSpeedRes;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/rms/config/ResourceConfig;->getResourceStrategy()I

    move-result v0

    .line 44
    .local v0, "strategy":I
    iget-object v1, p0, Landroid/rms/HwSysSpeedRes;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/rms/config/ResourceConfig;->getResourceMaxPeroid()I

    move-result v1

    .line 46
    .local v1, "maxPeriod":I
    sget-boolean v2, Landroid/rms/utils/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RMS.HwSysSpeedRes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOverloadStrategy  resource_strategy /"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mOverloadPeriod/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/rms/HwSysSpeedRes;->mOverloadPeriod:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " MaxPeriod/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget v2, p0, Landroid/rms/HwSysSpeedRes;->mOverloadPeriod:I

    if-lt v2, v1, :cond_1

    .line 50
    return v0

    .line 52
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method protected isResourceSpeedOverload(ILjava/lang/String;I)Z
    .locals 25
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "typeID"    # I

    move-object/from16 v6, p0

    .line 67
    invoke-super/range {p0 .. p3}, Landroid/rms/HwSysResImpl;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v14

    .line 68
    .local v14, "id":J
    iget-object v0, v6, Landroid/rms/HwSysSpeedRes;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v5, v0, p3

    .line 69
    .local v5, "config":Landroid/rms/config/ResourceConfig;
    invoke-virtual {v5}, Landroid/rms/config/ResourceConfig;->getResourceThreshold()I

    move-result v4

    .line 70
    .local v4, "threshold":I
    invoke-virtual {v5}, Landroid/rms/config/ResourceConfig;->getLoopInterval()I

    move-result v3

    .line 71
    .local v3, "loopInterval":I
    iget-object v0, v6, Landroid/rms/HwSysSpeedRes;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    invoke-virtual {v0, v14, v15, v4, v3}, Landroid/rms/control/ResourceFlowControl;->checkSpeedOverload(JII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {v5}, Landroid/rms/config/ResourceConfig;->getResourceMaxPeroid()I

    move-result v1

    .line 73
    .local v1, "maxPeriod":I
    invoke-virtual {v5}, Landroid/rms/config/ResourceConfig;->getTotalLoopInterval()I

    move-result v16

    .line 74
    .local v16, "totalTimeInterval":I
    iget-object v0, v6, Landroid/rms/HwSysSpeedRes;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    invoke-virtual {v0, v14, v15}, Landroid/rms/control/ResourceFlowControl;->getOverloadPeroid(J)I

    move-result v0

    iput v0, v6, Landroid/rms/HwSysSpeedRes;->mOverloadPeriod:I

    .line 75
    iget v0, v6, Landroid/rms/HwSysSpeedRes;->mOverloadPeriod:I

    if-lt v0, v1, :cond_2

    .line 77
    iget-object v7, v6, Landroid/rms/HwSysSpeedRes;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    iget-wide v11, v6, Landroid/rms/HwSysSpeedRes;->mPreReportTime:J

    move-wide v8, v14

    move v10, v3

    move/from16 v13, v16

    invoke-virtual/range {v7 .. v13}, Landroid/rms/control/ResourceFlowControl;->isReportTime(JIJI)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v6, Landroid/rms/HwSysSpeedRes;->mResourceType:I

    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    move v8, v1

    move v9, v3

    move v10, v4

    move-object v11, v5

    move-object/from16 v4, p2

    goto/16 :goto_1

    .line 78
    :cond_1
    :goto_0
    iget-object v7, v6, Landroid/rms/HwSysSpeedRes;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    move-object v0, v6

    move v8, v1

    move-wide v1, v14

    .end local v1    # "maxPeriod":I
    .local v8, "maxPeriod":I
    move v9, v3

    move/from16 v3, p3

    .end local v3    # "loopInterval":I
    .local v9, "loopInterval":I
    move v10, v4

    move-object v4, v5

    .end local v4    # "threshold":I
    .local v10, "threshold":I
    move-object v11, v5

    move-object v5, v7

    .end local v5    # "config":Landroid/rms/config/ResourceConfig;
    .local v11, "config":Landroid/rms/config/ResourceConfig;
    invoke-virtual/range {v0 .. v5}, Landroid/rms/HwSysSpeedRes;->createBundleForResource(JILandroid/rms/config/ResourceConfig;Landroid/rms/control/ResourceFlowControl;)Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, v6, Landroid/rms/HwSysSpeedRes;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    invoke-virtual {v1, v14, v15}, Landroid/rms/control/ResourceFlowControl;->getOverloadNumber(J)I

    move-result v1

    iput v1, v6, Landroid/rms/HwSysSpeedRes;->mOverloadNumber:I

    .line 80
    iget-object v1, v6, Landroid/rms/HwSysSpeedRes;->mResourceFlowControl:Landroid/rms/control/ResourceFlowControl;

    invoke-virtual {v1, v14, v15}, Landroid/rms/control/ResourceFlowControl;->getCountInPeroid(J)I

    move-result v1

    .line 81
    .local v1, "countInPeriod":I
    iget-object v2, v6, Landroid/rms/HwSysSpeedRes;->mResourceManger:Landroid/rms/HwSysResManager;

    iget v3, v6, Landroid/rms/HwSysSpeedRes;->mResourceType:I

    iget v4, v6, Landroid/rms/HwSysSpeedRes;->mOverloadNumber:I

    iget v5, v6, Landroid/rms/HwSysSpeedRes;->mOverloadPeriod:I

    move-object/from16 v17, v2

    move/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v1

    move-object/from16 v24, v0

    invoke-virtual/range {v17 .. v24}, Landroid/rms/HwSysResManager;->recordResourceOverloadStatus(ILjava/lang/String;IIIILandroid/os/Bundle;)V

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Landroid/rms/HwSysSpeedRes;->mPreReportTime:J

    .line 83
    iget-object v2, v6, Landroid/rms/HwSysSpeedRes;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HwSysSpeedRes is threshold Overload  id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " threshold="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " OverloadPeriod="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Landroid/rms/HwSysSpeedRes;->mOverloadPeriod:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " maxPeriod="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "countInPeriod":I
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 90
    .end local v8    # "maxPeriod":I
    .end local v9    # "loopInterval":I
    .end local v10    # "threshold":I
    .end local v11    # "config":Landroid/rms/config/ResourceConfig;
    .end local v16    # "totalTimeInterval":I
    .restart local v3    # "loopInterval":I
    .restart local v4    # "threshold":I
    .restart local v5    # "config":Landroid/rms/config/ResourceConfig;
    :cond_2
    move v9, v3

    move v10, v4

    move-object v11, v5

    move-object/from16 v4, p2

    .end local v3    # "loopInterval":I
    .end local v4    # "threshold":I
    .end local v5    # "config":Landroid/rms/config/ResourceConfig;
    .restart local v9    # "loopInterval":I
    .restart local v10    # "threshold":I
    .restart local v11    # "config":Landroid/rms/config/ResourceConfig;
    const/4 v0, 0x0

    return v0
.end method
