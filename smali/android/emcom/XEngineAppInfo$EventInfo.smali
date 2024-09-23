.class public Landroid/emcom/XEngineAppInfo$EventInfo;
.super Ljava/lang/Object;
.source "XEngineAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/XEngineAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# instance fields
.field private mAccelerateGrade:I

.field private mContainer:Ljava/lang/String;

.field private mKeyword:Ljava/lang/String;

.field private mMaxChildCount:I

.field private mRootView:Ljava/lang/String;

.field private mTreeDepth:I

.field private mainCardPsStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/emcom/XEngineAppInfo$EventInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 116
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mRootView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Landroid/emcom/XEngineAppInfo$EventInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mRootView:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Landroid/emcom/XEngineAppInfo$EventInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 116
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mContainer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/emcom/XEngineAppInfo$EventInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mContainer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/emcom/XEngineAppInfo$EventInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 116
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Landroid/emcom/XEngineAppInfo$EventInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mKeyword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Landroid/emcom/XEngineAppInfo$EventInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 116
    iget v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mTreeDepth:I

    return v0
.end method

.method static synthetic access$302(Landroid/emcom/XEngineAppInfo$EventInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;
    .param p1, "x1"    # I

    .line 116
    iput p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mTreeDepth:I

    return p1
.end method

.method static synthetic access$400(Landroid/emcom/XEngineAppInfo$EventInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 116
    iget v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mMaxChildCount:I

    return v0
.end method

.method static synthetic access$402(Landroid/emcom/XEngineAppInfo$EventInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;
    .param p1, "x1"    # I

    .line 116
    iput p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mMaxChildCount:I

    return p1
.end method

.method static synthetic access$500(Landroid/emcom/XEngineAppInfo$EventInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 116
    iget v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mAccelerateGrade:I

    return v0
.end method

.method static synthetic access$502(Landroid/emcom/XEngineAppInfo$EventInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;
    .param p1, "x1"    # I

    .line 116
    iput p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mAccelerateGrade:I

    return p1
.end method

.method static synthetic access$600(Landroid/emcom/XEngineAppInfo$EventInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;

    .line 116
    iget v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mainCardPsStatus:I

    return v0
.end method

.method static synthetic access$602(Landroid/emcom/XEngineAppInfo$EventInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/emcom/XEngineAppInfo$EventInfo;
    .param p1, "x1"    # I

    .line 116
    iput p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mainCardPsStatus:I

    return p1
.end method


# virtual methods
.method public getContainer()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mContainer:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mAccelerateGrade:I

    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCardPsStatus()I
    .locals 1

    .line 173
    iget v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mainCardPsStatus:I

    return v0
.end method

.method public getMaxChildCount()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mMaxChildCount:I

    return v0
.end method

.method public getRootView()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mRootView:Ljava/lang/String;

    return-object v0
.end method

.method public getTreeDepth()I
    .locals 1

    .line 152
    iget v0, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mTreeDepth:I

    return v0
.end method

.method public setContainer(Ljava/lang/String;)V
    .locals 0
    .param p1, "container"    # Ljava/lang/String;

    .line 143
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mContainer:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setGrade(I)V
    .locals 0
    .param p1, "grade"    # I

    .line 167
    iput p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mAccelerateGrade:I

    .line 168
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mKeyword:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setMainCardPsStatus(I)V
    .locals 0
    .param p1, "psSta"    # I

    .line 170
    iput p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mainCardPsStatus:I

    .line 171
    return-void
.end method

.method public setMaxChildCount(I)V
    .locals 0
    .param p1, "maxChildCount"    # I

    .line 161
    iput p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mMaxChildCount:I

    .line 162
    return-void
.end method

.method public setRootView(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootView"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mRootView:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setTreeDepth(I)V
    .locals 0
    .param p1, "treeDepth"    # I

    .line 155
    iput p1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mTreeDepth:I

    .line 156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "{rootView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mRootView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "container="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mContainer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "keyword="

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "maxDepth="

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mTreeDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "maxChildCount="

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mMaxChildCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "grade="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mAccelerateGrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "mainCardPsStatus="

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/XEngineAppInfo$EventInfo;->mainCardPsStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
