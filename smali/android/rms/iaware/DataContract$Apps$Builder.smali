.class public final Landroid/rms/iaware/DataContract$Apps$Builder;
.super Landroid/rms/iaware/DataContract$BaseBuilder;
.source "DataContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/rms/iaware/DataContract$Apps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Landroid/rms/iaware/DataContract$BaseBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addActivityDisplayedInfo(Ljava/lang/String;IJ)Landroid/rms/iaware/DataContract$Apps$Builder;
    .locals 6
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "displayedTime"    # J

    .line 217
    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/rms/iaware/DataContract$Apps$Builder;->addActivityDisplayedInfoWithUid(Ljava/lang/String;IIJ)Landroid/rms/iaware/DataContract$Apps$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addActivityDisplayedInfoWithUid(Ljava/lang/String;IIJ)Landroid/rms/iaware/DataContract$Apps$Builder;
    .locals 4
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "displayedTime"    # J

    .line 223
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 224
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "activityName"

    invoke-virtual {v0, v1, p1}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "uid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "pid"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "displayedTime"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Landroid/rms/iaware/DataContract$Apps$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "calledApp"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-object p0
.end method

.method public addCalledApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/rms/iaware/DataContract$Apps$Builder;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 153
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 154
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "processName"

    invoke-virtual {v0, v1, p2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "activityName"

    invoke-virtual {v0, v1, p3}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "pid"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "uid"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Landroid/rms/iaware/DataContract$Apps$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "calledApp"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object p0
.end method

.method public addCallerApp(Ljava/lang/String;Ljava/lang/String;II)Landroid/rms/iaware/DataContract$Apps$Builder;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 142
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 143
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "processName"

    invoke-virtual {v0, v1, p2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "pid"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "uid"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Landroid/rms/iaware/DataContract$Apps$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "callerApp"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-object p0
.end method

.method public addCrashCalledApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/rms/iaware/DataContract$Apps$Builder;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "crashReason"    # Ljava/lang/String;
    .param p4, "crashFreq"    # I
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    .line 203
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 204
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "processName"

    invoke-virtual {v0, v1, p2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "crashReason"

    invoke-virtual {v0, v1, p3}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "crashFreq"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "pid"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "uid"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Landroid/rms/iaware/DataContract$Apps$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "calledApp"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-object p0
.end method

.method public addExitCalledApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/rms/iaware/DataContract$Apps$Builder;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "exitMode"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 190
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 191
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "processName"

    invoke-virtual {v0, v1, p2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "exitMode"

    invoke-virtual {v0, v1, p3}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "pid"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "uid"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Landroid/rms/iaware/DataContract$Apps$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "calledApp"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-object p0
.end method

.method public addLaunchCalledApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/rms/iaware/DataContract$Apps$Builder;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "launchMode"    # Ljava/lang/String;
    .param p4, "launchReason"    # Ljava/lang/String;
    .param p5, "pid"    # I
    .param p6, "uid"    # I

    .line 176
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 177
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "processName"

    invoke-virtual {v0, v1, p2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "launchMode"

    invoke-virtual {v0, v1, p3}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "launchReason"

    invoke-virtual {v0, v1, p4}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "pid"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "uid"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Landroid/rms/iaware/DataContract$Apps$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "calledApp"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-object p0
.end method

.method public addRequestMemApp(III)Landroid/rms/iaware/DataContract$Apps$Builder;
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "memkb"    # I

    .line 165
    new-instance v0, Landroid/rms/iaware/DataNormalizer;

    invoke-direct {v0}, Landroid/rms/iaware/DataNormalizer;-><init>()V

    .line 166
    .local v0, "normalizer":Landroid/rms/iaware/DataNormalizer;
    const-string v1, "pid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "uid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "requestMem"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/rms/iaware/DataNormalizer;->appendCondition(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Landroid/rms/iaware/DataContract$Apps$Builder;->mCollects:Landroid/rms/iaware/DataNormalizer;

    const-string v2, "calledApp"

    invoke-virtual {v0}, Landroid/rms/iaware/DataNormalizer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/rms/iaware/DataNormalizer;->appendCollect(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-object p0
.end method

.method public build()Landroid/rms/iaware/CollectData;
    .locals 1

    .line 138
    sget-object v0, Landroid/rms/iaware/AwareConstant$ResourceType;->RES_APP:Landroid/rms/iaware/AwareConstant$ResourceType;

    invoke-static {v0}, Landroid/rms/iaware/AwareConstant$ResourceType;->getReousrceId(Landroid/rms/iaware/AwareConstant$ResourceType;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/rms/iaware/DataContract$BaseBuilder;->build(I)Landroid/rms/iaware/CollectData;

    move-result-object v0

    return-object v0
.end method
