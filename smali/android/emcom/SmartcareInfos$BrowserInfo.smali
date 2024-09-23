.class public Landroid/emcom/SmartcareInfos$BrowserInfo;
.super Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;
.source "SmartcareInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/SmartcareInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrowserInfo"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public connectLatency:S

.field public connectSuccessFlag:B

.field public dnsLatency:S

.field public dnsSuccessFlag:B

.field public downloadAvgThput:I

.field public pageId:J

.field public pageLatency:I

.field public result:Z

.field public rspCode:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageId:J

    .line 68
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->appName:Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageLatency:I

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->result:Z

    .line 71
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->rspCode:S

    .line 72
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsLatency:S

    .line 73
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectLatency:S

    .line 74
    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsSuccessFlag:B

    .line 75
    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectSuccessFlag:B

    .line 76
    iput v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->downloadAvgThput:I

    .line 77
    return-void
.end method


# virtual methods
.method public addToInfos(Landroid/emcom/SmartcareInfos;)V
    .locals 3
    .param p1, "is"    # Landroid/emcom/SmartcareInfos;

    .line 81
    invoke-super {p0, p1}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 82
    const-string v0, "is"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p0, p1, Landroid/emcom/SmartcareInfos;->browserInfo:Landroid/emcom/SmartcareInfos$BrowserInfo;

    .line 84
    return-void
.end method

.method public copyFrom(Landroid/emcom/SmartcareInfos$BrowserInfo;)Landroid/emcom/SmartcareInfos$BrowserInfo;
    .locals 2
    .param p1, "wci"    # Landroid/emcom/SmartcareInfos$BrowserInfo;

    .line 87
    iget-wide v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageId:J

    iput-wide v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageId:J

    .line 88
    iget-object v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->appName:Ljava/lang/String;

    .line 89
    iget v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageLatency:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageLatency:I

    .line 90
    iget-boolean v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->result:Z

    iput-boolean v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->result:Z

    .line 92
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->rspCode:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->rspCode:S

    .line 94
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsLatency:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsLatency:S

    .line 95
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectLatency:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectLatency:S

    .line 96
    iget-byte v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsSuccessFlag:B

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsSuccessFlag:B

    .line 97
    iget-byte v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectSuccessFlag:B

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectSuccessFlag:B

    .line 98
    iget v0, p1, Landroid/emcom/SmartcareInfos$BrowserInfo;->downloadAvgThput:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->downloadAvgThput:I

    .line 99
    return-object p0
.end method

.method public recycle()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->recycle()V

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageId:J

    .line 106
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->appName:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageLatency:I

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->result:Z

    .line 110
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->rspCode:S

    .line 112
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsLatency:S

    .line 113
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectLatency:S

    .line 114
    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsSuccessFlag:B

    .line 115
    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectSuccessFlag:B

    .line 116
    iput v0, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->downloadAvgThput:I

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BrowserInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ", pageId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-wide v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", pageLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->pageLatency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ", rspCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-short v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->rspCode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", dnsLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-short v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsLatency:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ", connectLatency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-short v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectLatency:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", dnsSuccessFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-byte v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->dnsSuccessFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ", connectSuccessFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-byte v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->connectSuccessFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", downloadAvgThput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v1, p0, Landroid/emcom/SmartcareInfos$BrowserInfo;->downloadAvgThput:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
