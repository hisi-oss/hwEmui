.class public Landroid/emcom/TrafficInfo;
.super Ljava/lang/Object;
.source "TrafficInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficInfo"


# instance fields
.field public mpRadioTraffic:I

.field public mpWifiTraffic:I

.field public pkgName:Ljava/lang/String;

.field public radioTraffic:I

.field public wifiTraffic:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/emcom/TrafficInfo;->pkgName:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    .line 12
    iput v0, p0, Landroid/emcom/TrafficInfo;->radioTraffic:I

    .line 13
    iput v0, p0, Landroid/emcom/TrafficInfo;->mpWifiTraffic:I

    .line 14
    iput v0, p0, Landroid/emcom/TrafficInfo;->mpRadioTraffic:I

    .line 17
    return-void
.end method


# virtual methods
.method public cleanTrafficInfo()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    .line 22
    iput v0, p0, Landroid/emcom/TrafficInfo;->radioTraffic:I

    .line 23
    iput v0, p0, Landroid/emcom/TrafficInfo;->mpWifiTraffic:I

    .line 24
    iput v0, p0, Landroid/emcom/TrafficInfo;->mpRadioTraffic:I

    .line 25
    return-void
.end method

.method public getMpRadioTraffic()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/emcom/TrafficInfo;->mpRadioTraffic:I

    return v0
.end method

.method public getMpWifiTraffic()I
    .locals 1

    .line 55
    iget v0, p0, Landroid/emcom/TrafficInfo;->mpWifiTraffic:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Landroid/emcom/TrafficInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTraffic()I
    .locals 1

    .line 48
    iget v0, p0, Landroid/emcom/TrafficInfo;->radioTraffic:I

    return v0
.end method

.method public getWifiTraffic()I
    .locals 1

    .line 40
    iget v0, p0, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    return v0
.end method

.method public setMpRadioTraffic(I)V
    .locals 0
    .param p1, "mpRadioTraffic"    # I

    .line 59
    iput p1, p0, Landroid/emcom/TrafficInfo;->mpRadioTraffic:I

    .line 60
    return-void
.end method

.method public setMpWifiTraffic(I)V
    .locals 0
    .param p1, "mpWifiTraffic"    # I

    .line 52
    iput p1, p0, Landroid/emcom/TrafficInfo;->mpWifiTraffic:I

    .line 53
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)Landroid/emcom/TrafficInfo;
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Landroid/emcom/TrafficInfo;->pkgName:Ljava/lang/String;

    .line 29
    return-object p0
.end method

.method public setRadioTraffic(I)Landroid/emcom/TrafficInfo;
    .locals 0
    .param p1, "radioTraffic"    # I

    .line 44
    iput p1, p0, Landroid/emcom/TrafficInfo;->radioTraffic:I

    .line 45
    return-object p0
.end method

.method public setWifiTraffic(I)Landroid/emcom/TrafficInfo;
    .locals 0
    .param p1, "wifiTraffic"    # I

    .line 36
    iput p1, p0, Landroid/emcom/TrafficInfo;->wifiTraffic:I

    .line 37
    return-object p0
.end method
