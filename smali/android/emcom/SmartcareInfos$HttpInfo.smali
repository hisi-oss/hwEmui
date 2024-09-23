.class public Landroid/emcom/SmartcareInfos$HttpInfo;
.super Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;
.source "SmartcareInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/SmartcareInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpInfo"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public endTime:I

.field public host:Ljava/lang/String;

.field public numStreams:I

.field public startDate:I

.field public startTime:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addToInfos(Landroid/emcom/SmartcareInfos;)V
    .locals 0
    .param p1, "is"    # Landroid/emcom/SmartcareInfos;

    .line 234
    invoke-super {p0, p1}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 235
    iput-object p0, p1, Landroid/emcom/SmartcareInfos;->httpInfo:Landroid/emcom/SmartcareInfos$HttpInfo;

    .line 236
    return-void
.end method

.method public copyFrom(Landroid/emcom/SmartcareInfos$HttpInfo;)Landroid/emcom/SmartcareInfos$HttpInfo;
    .locals 1
    .param p1, "sci"    # Landroid/emcom/SmartcareInfos$HttpInfo;

    .line 211
    iget-object v0, p1, Landroid/emcom/SmartcareInfos$HttpInfo;->host:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->host:Ljava/lang/String;

    .line 212
    iget v0, p1, Landroid/emcom/SmartcareInfos$HttpInfo;->startDate:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->startDate:I

    .line 213
    iget v0, p1, Landroid/emcom/SmartcareInfos$HttpInfo;->startTime:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->startTime:I

    .line 214
    iget v0, p1, Landroid/emcom/SmartcareInfos$HttpInfo;->endTime:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->endTime:I

    .line 215
    iget v0, p1, Landroid/emcom/SmartcareInfos$HttpInfo;->numStreams:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->numStreams:I

    .line 216
    iget v0, p1, Landroid/emcom/SmartcareInfos$HttpInfo;->uid:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->uid:I

    .line 217
    iget-object v0, p1, Landroid/emcom/SmartcareInfos$HttpInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->appName:Ljava/lang/String;

    .line 218
    return-object p0
.end method

.method public recycle()V
    .locals 1

    .line 223
    invoke-super {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->recycle()V

    .line 224
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->host:Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->startDate:I

    .line 226
    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->startTime:I

    .line 227
    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->endTime:I

    .line 228
    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->numStreams:I

    .line 229
    iput v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->uid:I

    .line 230
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->appName:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "HttpInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, ", hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ", startDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v1, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->startDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget v1, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v1, p0, Landroid/emcom/SmartcareInfos$HttpInfo;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
