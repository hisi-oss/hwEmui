.class public Landroid/emcom/SmartcareInfos$FwkNetworkInfo;
.super Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;
.source "SmartcareInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/emcom/SmartcareInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FwkNetworkInfo"
.end annotation


# instance fields
.field public mcc:S

.field public mnc:S

.field public rat:B

.field public rsrp:B

.field public rsrq:B

.field public sinr:I

.field public timeAndCid:Ljava/lang/String;

.field public wlanBssid:Ljava/lang/String;

.field public wlanSignalStrength:B

.field public wlanSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addToInfos(Landroid/emcom/SmartcareInfos;)V
    .locals 0
    .param p1, "is"    # Landroid/emcom/SmartcareInfos;

    .line 344
    invoke-super {p0, p1}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->addToInfos(Landroid/emcom/SmartcareInfos;)V

    .line 345
    iput-object p0, p1, Landroid/emcom/SmartcareInfos;->fwkNetworkInfo:Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    .line 346
    return-void
.end method

.method public copyFrom(Landroid/emcom/SmartcareInfos$FwkNetworkInfo;)Landroid/emcom/SmartcareInfos$FwkNetworkInfo;
    .locals 1
    .param p1, "fci"    # Landroid/emcom/SmartcareInfos$FwkNetworkInfo;

    .line 329
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->mcc:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->mcc:S

    .line 330
    iget-short v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->mnc:S

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->mnc:S

    .line 331
    iget-byte v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rat:B

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rat:B

    .line 332
    iget-object v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->timeAndCid:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->timeAndCid:Ljava/lang/String;

    .line 333
    iget-byte v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rsrp:B

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rsrp:B

    .line 334
    iget-byte v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rsrq:B

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rsrq:B

    .line 335
    iget v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->sinr:I

    iput v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->sinr:I

    .line 336
    iget-byte v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanSignalStrength:B

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanSignalStrength:B

    .line 337
    iget-object v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanBssid:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanBssid:Ljava/lang/String;

    .line 338
    iget-object v0, p1, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanSsid:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanSsid:Ljava/lang/String;

    .line 339
    return-object p0
.end method

.method public recycle()V
    .locals 1

    .line 350
    invoke-super {p0}, Landroid/emcom/SmartcareInfos$SmartcareBaseInfo;->recycle()V

    .line 351
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->mcc:S

    .line 352
    iput-short v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->mnc:S

    .line 353
    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rat:B

    .line 354
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->timeAndCid:Ljava/lang/String;

    .line 355
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rsrp:B

    .line 356
    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rsrq:B

    .line 357
    iput v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->sinr:I

    .line 358
    iput-byte v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanSignalStrength:B

    .line 359
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanBssid:Ljava/lang/String;

    .line 360
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanSsid:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "FwkNetworkInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, ", hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, ", rat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-byte v1, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rat:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, ", rsrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-byte v1, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rsrp:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, ", rsrq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-byte v1, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->rsrq:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, ", sinr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget v1, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->sinr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, ", wlanSignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-byte v1, p0, Landroid/emcom/SmartcareInfos$FwkNetworkInfo;->wlanSignalStrength:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
