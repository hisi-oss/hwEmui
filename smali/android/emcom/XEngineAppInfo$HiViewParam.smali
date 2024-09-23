.class public Landroid/emcom/XEngineAppInfo$HiViewParam;
.super Ljava/lang/Object;
.source "XEngineAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/XEngineAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HiViewParam"
.end annotation


# instance fields
.field private mMultiPath:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packName"    # Ljava/lang/String;
    .param p2, "mp"    # I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Landroid/emcom/XEngineAppInfo$HiViewParam;->mPackageName:Ljava/lang/String;

    .line 197
    iput p2, p0, Landroid/emcom/XEngineAppInfo$HiViewParam;->mMultiPath:I

    .line 198
    return-void
.end method


# virtual methods
.method public getMultiPath()I
    .locals 1

    .line 201
    iget v0, p0, Landroid/emcom/XEngineAppInfo$HiViewParam;->mMultiPath:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/emcom/XEngineAppInfo$HiViewParam;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "MultiPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/emcom/XEngineAppInfo$HiViewParam;->mMultiPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
