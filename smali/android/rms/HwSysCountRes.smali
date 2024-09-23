.class public Landroid/rms/HwSysCountRes;
.super Landroid/rms/HwSysResImpl;
.source "HwSysCountRes.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RMS.HwSysCountRes"


# instance fields
.field protected mPreReportTime:J

.field protected mResourceCountControl:Landroid/rms/control/ResourceCountControl;

.field private mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "resourceType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/rms/HwSysCountRes;-><init>(ILjava/lang/String;[I)V

    .line 33
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;[I)V
    .locals 2
    .param p1, "resourceType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "whiteListTypes"    # [I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/rms/HwSysResImpl;-><init>(ILjava/lang/String;[I)V

    .line 21
    const-string v0, "RMS.HwSysCountRes"

    iput-object v0, p0, Landroid/rms/HwSysCountRes;->mTag:Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/rms/control/ResourceCountControl;

    invoke-direct {v0}, Landroid/rms/control/ResourceCountControl;-><init>()V

    iput-object v0, p0, Landroid/rms/HwSysCountRes;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/rms/HwSysCountRes;->mPreReportTime:J

    .line 28
    iput-object p2, p0, Landroid/rms/HwSysCountRes;->mTag:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method protected createBundleForResource(JILandroid/rms/config/ResourceConfig;Landroid/rms/control/ResourceCountControl;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "id"    # J
    .param p3, "typeID"    # I
    .param p4, "config"    # Landroid/rms/config/ResourceConfig;
    .param p5, "mResourceCountControl"    # Landroid/rms/control/ResourceCountControl;
    .param p6, "pkg"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCount(ILjava/lang/String;I)I
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "typeID"    # I

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/rms/HwSysResImpl;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v0

    .line 90
    .local v0, "id":J
    iget-object v2, p0, Landroid/rms/HwSysCountRes;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    invoke-virtual {v2, v0, v1}, Landroid/rms/control/ResourceCountControl;->getCount(J)I

    move-result v2

    return v2
.end method

.method protected isResourceCountOverload(ILjava/lang/String;I)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "typeID"    # I

    .line 76
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/rms/HwSysCountRes;->isResourceCountOverload(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected isResourceCountOverload(ILjava/lang/String;II)Z
    .locals 27
    .param p1, "callingUid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "typeID"    # I
    .param p4, "count"    # I

    move-object/from16 v7, p0

    .line 44
    invoke-super/range {p0 .. p3}, Landroid/rms/HwSysResImpl;->getResourceId(ILjava/lang/String;I)J

    move-result-wide v4

    .line 45
    .local v4, "id":J
    iget-object v0, v7, Landroid/rms/HwSysCountRes;->mResourceConfig:[Landroid/rms/config/ResourceConfig;

    aget-object v6, v0, p3

    .line 46
    .local v6, "config":Landroid/rms/config/ResourceConfig;
    invoke-virtual {v6}, Landroid/rms/config/ResourceConfig;->getResouceWarningThreshold()I

    move-result v3

    .line 47
    .local v3, "softThreshold":I
    invoke-virtual {v6}, Landroid/rms/config/ResourceConfig;->getResouceUrgentThreshold()I

    move-result v1

    .line 48
    .local v1, "hardThreshold":I
    invoke-virtual {v6}, Landroid/rms/config/ResourceConfig;->getResouceNormalThreshold()I

    move-result v16

    .line 49
    .local v16, "normalThreshold":I
    invoke-virtual {v6}, Landroid/rms/config/ResourceConfig;->getLoopInterval()I

    move-result v17

    .line 50
    .local v17, "timeInterval":I
    invoke-virtual {v6}, Landroid/rms/config/ResourceConfig;->getTotalLoopInterval()I

    move-result v18

    .line 51
    .local v18, "totalTimeInterval":I
    iget-object v8, v7, Landroid/rms/HwSysCountRes;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    iget v15, v7, Landroid/rms/HwSysCountRes;->mResourceType:I

    move-wide v9, v4

    move v11, v3

    move v12, v1

    move/from16 v13, v16

    move/from16 v14, p4

    invoke-virtual/range {v8 .. v15}, Landroid/rms/control/ResourceCountControl;->checkCountOverload(JIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    sget-boolean v0, Landroid/rms/utils/Utils;->DEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/rms/utils/Utils;->HWFLOW:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    move/from16 v8, p4

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    iget-object v0, v7, Landroid/rms/HwSysCountRes;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HwSysCountRes is threshold Overload  id="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " CurrentCount ="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " softThreshold="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " hardThreshold="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_1
    iget-object v0, v7, Landroid/rms/HwSysCountRes;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    iget-wide v9, v7, Landroid/rms/HwSysCountRes;->mPreReportTime:J

    move v11, v1

    move-wide v1, v4

    .end local v1    # "hardThreshold":I
    .local v11, "hardThreshold":I
    move v12, v3

    move/from16 v3, v17

    .end local v3    # "softThreshold":I
    .local v12, "softThreshold":I
    move-wide v13, v4

    move-wide v4, v9

    .end local v4    # "id":J
    .local v13, "id":J
    move-object v9, v6

    move/from16 v6, v18

    .end local v6    # "config":Landroid/rms/config/ResourceConfig;
    .local v9, "config":Landroid/rms/config/ResourceConfig;
    invoke-virtual/range {v0 .. v6}, Landroid/rms/control/ResourceCountControl;->isReportTime(JIJI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, v7, Landroid/rms/HwSysCountRes;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    invoke-virtual {v0, v13, v14}, Landroid/rms/control/ResourceCountControl;->getOverloadNumber(J)I

    move-result v10

    .line 55
    .local v10, "overloadNum":I
    iget-object v0, v7, Landroid/rms/HwSysCountRes;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    invoke-virtual {v0, v13, v14}, Landroid/rms/control/ResourceCountControl;->getTotalCount(J)I

    move-result v15

    .line 56
    .local v15, "totalCount":I
    iget-object v5, v7, Landroid/rms/HwSysCountRes;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    move-object v0, v7

    move-wide v1, v13

    move/from16 v3, p3

    move-object v4, v9

    move-object/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/rms/HwSysCountRes;->createBundleForResource(JILandroid/rms/config/ResourceConfig;Landroid/rms/control/ResourceCountControl;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v1, v7, Landroid/rms/HwSysCountRes;->mResourceManger:Landroid/rms/HwSysResManager;

    iget v2, v7, Landroid/rms/HwSysCountRes;->mResourceType:I

    const/16 v24, 0x0

    move-object/from16 v19, v1

    move/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v22, v2

    move/from16 v23, v10

    move/from16 v25, v15

    move-object/from16 v26, v0

    invoke-virtual/range {v19 .. v26}, Landroid/rms/HwSysResManager;->recordResourceOverloadStatus(ILjava/lang/String;IIIILandroid/os/Bundle;)V

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Landroid/rms/HwSysCountRes;->mPreReportTime:J

    .line 60
    .end local v0    # "mBundle":Landroid/os/Bundle;
    .end local v10    # "overloadNum":I
    .end local v15    # "totalCount":I
    :cond_2
    iget-object v0, v7, Landroid/rms/HwSysCountRes;->mResourceCountControl:Landroid/rms/control/ResourceCountControl;

    invoke-virtual {v0, v13, v14}, Landroid/rms/control/ResourceCountControl;->getTotalCount(J)I

    move-result v0

    if-le v0, v11, :cond_4

    .line 61
    const/4 v0, 0x1

    return v0

    .line 64
    .end local v9    # "config":Landroid/rms/config/ResourceConfig;
    .end local v11    # "hardThreshold":I
    .end local v12    # "softThreshold":I
    .end local v13    # "id":J
    .restart local v1    # "hardThreshold":I
    .restart local v3    # "softThreshold":I
    .restart local v4    # "id":J
    .restart local v6    # "config":Landroid/rms/config/ResourceConfig;
    :cond_3
    move/from16 v8, p4

    move v11, v1

    move v12, v3

    move-wide v13, v4

    move-object v9, v6

    .end local v1    # "hardThreshold":I
    .end local v3    # "softThreshold":I
    .end local v4    # "id":J
    .end local v6    # "config":Landroid/rms/config/ResourceConfig;
    .restart local v9    # "config":Landroid/rms/config/ResourceConfig;
    .restart local v11    # "hardThreshold":I
    .restart local v12    # "softThreshold":I
    .restart local v13    # "id":J
    :cond_4
    const/4 v0, 0x0

    return v0
.end method
