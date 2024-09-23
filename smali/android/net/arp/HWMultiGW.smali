.class public Landroid/net/arp/HWMultiGW;
.super Ljava/lang/Object;
.source "HWMultiGW.java"


# static fields
.field private static final DBG:Z = true

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "HWMultiGW"


# instance fields
.field private mCurrentIdx:I

.field private mGWIpAddr:Ljava/lang/String;

.field private mMACAddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRttArp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/arp/HWMultiGW;->mCurrentIdx:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/arp/HWMultiGW;->mGWIpAddr:Ljava/lang/String;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/arp/HWMultiGW;->mRttArp:J

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method private isMACDuplicated(Ljava/lang/String;)Z
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 104
    .local v0, "list_size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 105
    iget-object v3, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const/4 v1, 0x1

    return v1

    .line 104
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private macByte2String([B)Ljava/lang/String;
    .locals 4
    .param p1, "macByte"    # [B

    .line 113
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    const-string v0, "%02x:%02x:%02x:%02x:%02x:%02x"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    .line 117
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aget-byte v3, p1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 116
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public clearGW()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/arp/HWMultiGW;->mCurrentIdx:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/arp/HWMultiGW;->mGWIpAddr:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    return-void
.end method

.method public getArpRTT()J
    .locals 2

    .line 121
    iget-wide v0, p0, Landroid/net/arp/HWMultiGW;->mRttArp:J

    return-wide v0
.end method

.method public getGWIPAddr()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/net/arp/HWMultiGW;->mGWIpAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getGWMACAddr()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGWMACAddrList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGWNum()I
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNextGWMACAddr()Ljava/lang/String;
    .locals 2

    .line 87
    iget v0, p0, Landroid/net/arp/HWMultiGW;->mCurrentIdx:I

    iget-object v1, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    iget v1, p0, Landroid/net/arp/HWMultiGW;->mCurrentIdx:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "macAddr":Ljava/lang/String;
    iget v1, p0, Landroid/net/arp/HWMultiGW;->mCurrentIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/arp/HWMultiGW;->mCurrentIdx:I

    .line 92
    return-object v0
.end method

.method public setArpRTT(J)V
    .locals 0
    .param p1, "rtt"    # J

    .line 124
    iput-wide p1, p0, Landroid/net/arp/HWMultiGW;->mRttArp:J

    .line 125
    return-void
.end method

.method public setGWIPAddr(Ljava/lang/String;)V
    .locals 3
    .param p1, "gateway"    # Ljava/lang/String;

    .line 51
    const-string v0, "HWMultiGW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGateWay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iput-object p1, p0, Landroid/net/arp/HWMultiGW;->mGWIpAddr:Ljava/lang/String;

    .line 55
    :cond_0
    return-void
.end method

.method public setGWMACAddr(Ljava/lang/String;)V
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/net/arp/HWMultiGW;->isMACDuplicated(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public setGWMACAddr([B)V
    .locals 2
    .param p1, "addr"    # [B

    .line 62
    invoke-direct {p0, p1}, Landroid/net/arp/HWMultiGW;->macByte2String([B)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "strMACAddr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Landroid/net/arp/HWMultiGW;->isMACDuplicated(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Landroid/net/arp/HWMultiGW;->mMACAddrList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method
