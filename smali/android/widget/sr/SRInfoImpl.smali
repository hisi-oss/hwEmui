.class public final Landroid/widget/sr/SRInfoImpl;
.super Ljava/lang/Object;
.source "SRInfoImpl.java"

# interfaces
.implements Landroid/widget/sr/SRInfo;


# static fields
.field private static final SR_TAG:Ljava/lang/String; = "SuperResolution"


# instance fields
.field private mFirstTryTime:J

.field private mInvalidateDrawableCount:I

.field private mIsFullScreen:Z

.field private mIsInWhiteList:Z

.field private mMatchResolution:Z

.field private mSRDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mScaleX:F

.field private mScaleY:F

.field private mSrcDrawable:Landroid/graphics/drawable/Drawable;

.field private mStatus:I

.field private mTaskInfo:Landroid/widget/sr/SRTaskInfo;

.field private mTryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/sr/SRInfoImpl;->mIsInWhiteList:Z

    .line 44
    iput-boolean v0, p0, Landroid/widget/sr/SRInfoImpl;->mIsFullScreen:Z

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/sr/SRInfoImpl;->clearInfoWithStatus(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public clearInfoWithStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/sr/SRInfoImpl;->mTaskInfo:Landroid/widget/sr/SRTaskInfo;

    .line 55
    iput p1, p0, Landroid/widget/sr/SRInfoImpl;->mStatus:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/sr/SRInfoImpl;->mInvalidateDrawableCount:I

    .line 57
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/sr/SRInfoImpl;->mFirstTryTime:J

    .line 58
    iput v1, p0, Landroid/widget/sr/SRInfoImpl;->mTryCount:I

    .line 59
    iput-boolean v1, p0, Landroid/widget/sr/SRInfoImpl;->mMatchResolution:Z

    .line 60
    iput-object v0, p0, Landroid/widget/sr/SRInfoImpl;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    iput-object v0, p0, Landroid/widget/sr/SRInfoImpl;->mSRDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/sr/SRInfoImpl;->mScaleX:F

    .line 63
    iput v0, p0, Landroid/widget/sr/SRInfoImpl;->mScaleY:F

    .line 64
    return-void
.end method

.method public getFirstTryTime()J
    .locals 2

    .line 138
    iget-wide v0, p0, Landroid/widget/sr/SRInfoImpl;->mFirstTryTime:J

    return-wide v0
.end method

.method public getInvalidateDrawableCount()I
    .locals 1

    .line 130
    iget v0, p0, Landroid/widget/sr/SRInfoImpl;->mInvalidateDrawableCount:I

    return v0
.end method

.method public getIsFullScreen()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Landroid/widget/sr/SRInfoImpl;->mIsFullScreen:Z

    return v0
.end method

.method public getIsInWhiteList()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Landroid/widget/sr/SRInfoImpl;->mIsInWhiteList:Z

    return v0
.end method

.method public getMatchResolution()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Landroid/widget/sr/SRInfoImpl;->mMatchResolution:Z

    return v0
.end method

.method public getSRDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/widget/sr/SRInfoImpl;->mSRDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .line 178
    iget v0, p0, Landroid/widget/sr/SRInfoImpl;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 186
    iget v0, p0, Landroid/widget/sr/SRInfoImpl;->mScaleY:F

    return v0
.end method

.method public getSrcDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/widget/sr/SRInfoImpl;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/widget/sr/SRInfoImpl;->mStatus:I

    return v0
.end method

.method public getTaskInfo()Landroid/widget/sr/SRTaskInfo;
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/widget/sr/SRInfoImpl;->mTaskInfo:Landroid/widget/sr/SRTaskInfo;

    return-object v0
.end method

.method public getTryCount()I
    .locals 1

    .line 146
    iget v0, p0, Landroid/widget/sr/SRInfoImpl;->mTryCount:I

    return v0
.end method

.method public increaseInvalidateDrawableCount()V
    .locals 1

    .line 80
    iget v0, p0, Landroid/widget/sr/SRInfoImpl;->mInvalidateDrawableCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/sr/SRInfoImpl;->mInvalidateDrawableCount:I

    .line 81
    return-void
.end method

.method public increaseTryCount()V
    .locals 1

    .line 87
    iget v0, p0, Landroid/widget/sr/SRInfoImpl;->mTryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/sr/SRInfoImpl;->mTryCount:I

    .line 88
    return-void
.end method

.method public setFirstTryTime(J)V
    .locals 0
    .param p1, "firstTryTime"    # J

    .line 134
    iput-wide p1, p0, Landroid/widget/sr/SRInfoImpl;->mFirstTryTime:J

    .line 135
    return-void
.end method

.method public setInvalidateDrawableCount(I)V
    .locals 0
    .param p1, "invalidateDrawableCount"    # I

    .line 126
    iput p1, p0, Landroid/widget/sr/SRInfoImpl;->mInvalidateDrawableCount:I

    .line 127
    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .line 102
    iput-boolean p1, p0, Landroid/widget/sr/SRInfoImpl;->mIsFullScreen:Z

    .line 103
    return-void
.end method

.method public setIsInWhiteList(Z)V
    .locals 0
    .param p1, "isInWhiteList"    # Z

    .line 94
    iput-boolean p1, p0, Landroid/widget/sr/SRInfoImpl;->mIsInWhiteList:Z

    .line 95
    return-void
.end method

.method public setMatchResolution(Z)V
    .locals 0
    .param p1, "matchResolution"    # Z

    .line 110
    iput-boolean p1, p0, Landroid/widget/sr/SRInfoImpl;->mMatchResolution:Z

    .line 111
    return-void
.end method

.method public setSRDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .param p1, "SRDrawable"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 166
    iput-object p1, p0, Landroid/widget/sr/SRInfoImpl;->mSRDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .line 174
    iput p1, p0, Landroid/widget/sr/SRInfoImpl;->mScaleX:F

    .line 175
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .line 182
    iput p1, p0, Landroid/widget/sr/SRInfoImpl;->mScaleY:F

    .line 183
    return-void
.end method

.method public setSrcDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "srcDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 158
    iput-object p1, p0, Landroid/widget/sr/SRInfoImpl;->mSrcDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 118
    iput p1, p0, Landroid/widget/sr/SRInfoImpl;->mStatus:I

    .line 119
    return-void
.end method

.method public setTaskInfo(Landroid/widget/sr/SRTaskInfo;)V
    .locals 0
    .param p1, "taskInfo"    # Landroid/widget/sr/SRTaskInfo;

    .line 150
    iput-object p1, p0, Landroid/widget/sr/SRInfoImpl;->mTaskInfo:Landroid/widget/sr/SRTaskInfo;

    .line 151
    return-void
.end method

.method public setTryCount(I)V
    .locals 0
    .param p1, "tryCount"    # I

    .line 142
    iput p1, p0, Landroid/widget/sr/SRInfoImpl;->mTryCount:I

    .line 143
    return-void
.end method

.method public shouldDoSRProcess()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Landroid/widget/sr/SRInfoImpl;->mIsInWhiteList:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/sr/SRInfoImpl;->mMatchResolution:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/sr/SRInfoImpl;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/sr/SRInfoImpl;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
