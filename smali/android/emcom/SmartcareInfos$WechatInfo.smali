.class public Landroid/emcom/SmartcareInfos$WechatInfo;
.super Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;
.source "SmartcareInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/SmartcareInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WechatInfo"
.end annotation


# instance fields
.field public endTime:I

.field public host:Ljava/lang/String;

.field public latancy:I

.field public startDate:I

.field public startTime:I

.field public successFlag:B

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;-><init>()V

    .line 153
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->successFlag:B

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->latancy:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->type:I

    .line 157
    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->startDate:I

    .line 158
    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->startTime:I

    .line 159
    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->endTime:I

    return-void
.end method


# virtual methods
.method public addToInfos(Landroid/emcom/SmartcareInfos;)V
    .locals 0
    .param p1, "is"    # Landroid/emcom/SmartcareInfos;

    .line 163
    invoke-super {p0, p1}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 164
    iput-object p0, p1, Landroid/emcom/SmartcareInfos;->wechatInfo:Landroid/emcom/SmartcareInfos$WechatInfo;

    .line 165
    return-void
.end method

.method public copyFrom(Landroid/emcom/SmartcareInfos$WechatInfo;)Landroid/emcom/SmartcareInfos$WechatInfo;
    .locals 1
    .param p1, "wci"    # Landroid/emcom/SmartcareInfos$WechatInfo;

    .line 168
    iget-byte v0, p1, Landroid/emcom/SmartcareInfos$WechatInfo;->successFlag:B

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->successFlag:B

    .line 169
    iget v0, p1, Landroid/emcom/SmartcareInfos$WechatInfo;->latancy:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->latancy:I

    .line 170
    iget v0, p1, Landroid/emcom/SmartcareInfos$WechatInfo;->type:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->type:I

    .line 171
    iget-object v0, p1, Landroid/emcom/SmartcareInfos$WechatInfo;->host:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->host:Ljava/lang/String;

    .line 172
    iget v0, p1, Landroid/emcom/SmartcareInfos$WechatInfo;->startDate:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->startDate:I

    .line 173
    iget v0, p1, Landroid/emcom/SmartcareInfos$WechatInfo;->startTime:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->startTime:I

    .line 174
    iget v0, p1, Landroid/emcom/SmartcareInfos$WechatInfo;->endTime:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->endTime:I

    .line 175
    return-object p0
.end method

.method public recycle()V
    .locals 1

    .line 180
    invoke-super {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->recycle()V

    .line 181
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->successFlag:B

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->latancy:I

    .line 183
    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->type:I

    .line 184
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->host:Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->startDate:I

    .line 186
    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->startTime:I

    .line 187
    iput v0, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->endTime:I

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WechatInfo: , hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latancy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->latancy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",successFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->successFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/emcom/SmartcareInfos$WechatInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0
.end method
