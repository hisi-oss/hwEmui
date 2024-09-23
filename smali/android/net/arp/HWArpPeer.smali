.class public Landroid/net/arp/HWArpPeer;
.super Ljava/lang/Object;
.source "HWArpPeer.java"


# static fields
.field private static final ARP_LENGTH:I = 0x1c

.field private static final DBG:Z = false

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final IPV4_LENGTH:I = 0x4

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAX_LENGTH:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "HWArpPeer"


# instance fields
.field private final L2_BROADCAST:[B

.field private mInterfaceName:Ljava/lang/String;

.field private final mMyAddr:Ljava/net/InetAddress;

.field private final mMyMac:[B

.field private final mPeer:Ljava/net/InetAddress;

.field private final mSocket:Llibcore/net/RawSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Ljava/net/InetAddress;)V
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "myAddr"    # Ljava/net/InetAddress;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "peer"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x6

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/arp/HWArpPeer;->mMyMac:[B

    .line 59
    iput-object p1, p0, Landroid/net/arp/HWArpPeer;->mInterfaceName:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Landroid/net/arp/HWArpPeer;->mMyAddr:Ljava/net/InetAddress;

    .line 62
    if-eqz p3, :cond_0

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    iget-object v2, p0, Landroid/net/arp/HWArpPeer;->mMyMac:[B

    mul-int/lit8 v3, v1, 0x3

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    instance-of v1, p2, Ljava/net/Inet6Address;

    if-nez v1, :cond_1

    instance-of v1, p4, Ljava/net/Inet6Address;

    if-nez v1, :cond_1

    .line 73
    iput-object p4, p0, Landroid/net/arp/HWArpPeer;->mPeer:Ljava/net/InetAddress;

    .line 74
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/arp/HWArpPeer;->L2_BROADCAST:[B

    .line 75
    iget-object v0, p0, Landroid/net/arp/HWArpPeer;->L2_BROADCAST:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 77
    new-instance v0, Llibcore/net/RawSocket;

    iget-object v1, p0, Landroid/net/arp/HWArpPeer;->mInterfaceName:Ljava/lang/String;

    const/16 v2, 0x806

    invoke-direct {v0, v1, v2}, Llibcore/net/RawSocket;-><init>(Ljava/lang/String;S)V

    iput-object v0, p0, Landroid/net/arp/HWArpPeer;->mSocket:Llibcore/net/RawSocket;

    .line 78
    return-void

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IPv6 unsupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static doArp(Ljava/lang/String;Landroid/net/LinkProperties;III)Z
    .locals 8
    .param p0, "myMacAddress"    # Ljava/lang/String;
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .param p2, "timeoutMillis"    # I
    .param p3, "numArpPings"    # I
    .param p4, "minArpResponses"    # I

    .line 263
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "interfaceName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 265
    .local v1, "inetAddress":Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 268
    .local v2, "gateway":Ljava/net/InetAddress;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 269
    .local v3, "la":Landroid/net/LinkAddress;
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 270
    nop

    .line 273
    .end local v3    # "la":Landroid/net/LinkAddress;
    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 274
    .local v3, "route":Landroid/net/RouteInfo;
    invoke-virtual {v3}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    .line 275
    nop

    .line 278
    .end local v3    # "route":Landroid/net/RouteInfo;
    :cond_1
    const/4 v3, 0x0

    .line 280
    .local v3, "peer":Landroid/net/arp/HWArpPeer;
    :try_start_0
    new-instance v4, Landroid/net/arp/HWArpPeer;

    invoke-direct {v4, v0, v1, p0, v2}, Landroid/net/arp/HWArpPeer;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Ljava/net/InetAddress;)V

    move-object v3, v4

    .line 281
    const/4 v4, 0x0

    .line 282
    .local v4, "responses":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "i":I
    .local v6, "responses":I
    :goto_0
    if-ge v4, p3, :cond_3

    .line 283
    invoke-virtual {v3, p2}, Landroid/net/arp/HWArpPeer;->doArp(I)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 282
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 286
    .end local v4    # "i":I
    :cond_3
    if-lt v6, p4, :cond_4

    const/4 v5, 0x1

    nop

    .end local v6    # "responses":I
    :cond_4
    move v4, v5

    .line 296
    .local v4, "success":Z
    nop

    .line 297
    :goto_1
    invoke-virtual {v3}, Landroid/net/arp/HWArpPeer;->close()V

    goto :goto_2

    .line 296
    .end local v4    # "success":Z
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 292
    :catch_0
    move-exception v4

    .line 293
    .local v4, "ae":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "HWArpPeer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ARP failre: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v4, 0x1

    .line 296
    .local v4, "success":Z
    if-eqz v3, :cond_5

    goto :goto_1

    .line 287
    .end local v4    # "success":Z
    :catch_1
    move-exception v4

    .line 290
    .local v4, "se":Ljava/net/SocketException;
    const-string v5, "HWArpPeer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ARP test initiation failure: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    const/4 v4, 0x1

    .line 296
    .local v4, "success":Z
    if-eqz v3, :cond_5

    goto :goto_1

    .line 297
    :cond_5
    :goto_2
    nop

    .line 300
    return v4

    .line 296
    .end local v4    # "success":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 297
    invoke-virtual {v3}, Landroid/net/arp/HWArpPeer;->close()V

    :cond_6
    throw v4
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 305
    :try_start_0
    iget-object v0, p0, Landroid/net/arp/HWArpPeer;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v0}, Llibcore/net/RawSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 308
    :goto_0
    return-void
.end method

.method public doArp(I)[B
    .locals 23
    .param p1, "timeoutMillis"    # I

    move-object/from16 v0, p0

    .line 86
    iget-object v1, v0, Landroid/net/arp/HWArpPeer;->mMyAddr:Ljava/net/InetAddress;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 87
    return-object v2

    .line 90
    :cond_0
    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 91
    .local v3, "buf":Ljava/nio/ByteBuffer;
    iget-object v4, v0, Landroid/net/arp/HWArpPeer;->mPeer:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 92
    .local v4, "desiredIp":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move/from16 v7, p1

    int-to-long v8, v7

    add-long/2addr v5, v8

    .line 96
    .local v5, "timeout":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 97
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 99
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 100
    const/16 v9, 0x800

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 101
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 103
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 104
    iget-object v11, v0, Landroid/net/arp/HWArpPeer;->mMyMac:[B

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 105
    iget-object v11, v0, Landroid/net/arp/HWArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 106
    new-array v11, v9, [B

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 109
    iget-object v11, v0, Landroid/net/arp/HWArpPeer;->mSocket:Llibcore/net/RawSocket;

    iget-object v12, v0, Landroid/net/arp/HWArpPeer;->L2_BROADCAST:[B

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v15, v14}, Llibcore/net/RawSocket;->write([B[BII)I

    .line 111
    new-array v1, v1, [B

    .line 113
    .local v1, "recvBuf":[B
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v11, v11, v5

    if-gez v11, :cond_4

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v11, v5, v11

    .line 115
    .local v11, "duration":J
    iget-object v13, v0, Landroid/net/arp/HWArpPeer;->mSocket:Llibcore/net/RawSocket;

    const/16 v18, 0x0

    array-length v14, v1

    const/16 v20, -0x1

    long-to-int v2, v11

    move-object/from16 v16, v13

    move-object/from16 v17, v1

    move/from16 v19, v14

    move/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v2

    .line 119
    .local v2, "readLen":I
    const/16 v13, 0x1c

    if-lt v2, v13, :cond_3

    aget-byte v13, v1, v15

    if-nez v13, :cond_3

    aget-byte v13, v1, v8

    if-ne v13, v8, :cond_3

    const/4 v13, 0x2

    aget-byte v14, v1, v13

    const/16 v8, 0x8

    if-ne v14, v8, :cond_2

    const/4 v14, 0x3

    aget-byte v16, v1, v14

    if-nez v16, :cond_2

    aget-byte v8, v1, v10

    if-ne v8, v9, :cond_2

    const/4 v8, 0x5

    aget-byte v8, v1, v8

    if-ne v8, v10, :cond_2

    aget-byte v8, v1, v9

    if-nez v8, :cond_2

    const/4 v8, 0x7

    aget-byte v8, v1, v8

    if-ne v8, v13, :cond_2

    const/16 v8, 0xe

    aget-byte v8, v1, v8

    aget-byte v10, v4, v15

    if-ne v8, v10, :cond_2

    const/16 v8, 0xf

    aget-byte v8, v1, v8

    const/4 v10, 0x1

    aget-byte v15, v4, v10

    if-ne v8, v15, :cond_1

    const/16 v8, 0x10

    aget-byte v8, v1, v8

    aget-byte v13, v4, v13

    if-ne v8, v13, :cond_1

    const/16 v8, 0x11

    aget-byte v8, v1, v8

    aget-byte v13, v4, v14

    if-ne v8, v13, :cond_1

    .line 130
    new-array v8, v9, [B

    .line 131
    .local v8, "result":[B
    const/16 v10, 0x8

    const/4 v13, 0x0

    invoke-static {v1, v10, v8, v13, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 132
    return-object v8

    .line 134
    .end local v2    # "readLen":I
    .end local v8    # "result":[B
    .end local v11    # "duration":J
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    move v13, v15

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v8

    move v13, v15

    .line 111
    :goto_1
    move v8, v10

    move v15, v13

    const/4 v2, 0x0

    const/4 v10, 0x4

    goto/16 :goto_0

    .line 136
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public doGratuitousArp(I)[B
    .locals 22
    .param p1, "timeoutMillis"    # I

    move-object/from16 v0, p0

    .line 212
    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 213
    .local v2, "buf":Ljava/nio/ByteBuffer;
    iget-object v3, v0, Landroid/net/arp/HWArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 214
    .local v3, "desiredIp":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move/from16 v6, p1

    int-to-long v7, v6

    add-long/2addr v4, v7

    .line 218
    .local v4, "timeout":J
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 221
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 222
    const/16 v8, 0x800

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 223
    const/4 v8, 0x6

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 224
    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 226
    iget-object v10, v0, Landroid/net/arp/HWArpPeer;->mMyMac:[B

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 227
    iget-object v10, v0, Landroid/net/arp/HWArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 228
    new-array v10, v8, [B

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 229
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 231
    iget-object v10, v0, Landroid/net/arp/HWArpPeer;->mSocket:Llibcore/net/RawSocket;

    iget-object v11, v0, Landroid/net/arp/HWArpPeer;->L2_BROADCAST:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v14, v13}, Llibcore/net/RawSocket;->write([B[BII)I

    .line 233
    new-array v1, v1, [B

    .line 235
    .local v1, "recvBuf":[B
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    cmp-long v10, v10, v4

    if-gez v10, :cond_3

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v4, v10

    .line 237
    .local v10, "duration":J
    iget-object v15, v0, Landroid/net/arp/HWArpPeer;->mSocket:Llibcore/net/RawSocket;

    const/16 v17, 0x0

    array-length v12, v1

    const/16 v19, -0x1

    long-to-int v13, v10

    move-object/from16 v16, v1

    move/from16 v18, v12

    move/from16 v20, v13

    invoke-virtual/range {v15 .. v20}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v12

    .line 241
    .local v12, "readLen":I
    const/16 v13, 0x1c

    if-lt v12, v13, :cond_2

    aget-byte v13, v1, v14

    if-nez v13, :cond_2

    aget-byte v13, v1, v7

    if-ne v13, v7, :cond_2

    const/4 v13, 0x2

    aget-byte v15, v1, v13

    const/16 v7, 0x8

    if-ne v15, v7, :cond_1

    const/4 v15, 0x3

    aget-byte v16, v1, v15

    if-nez v16, :cond_1

    aget-byte v7, v1, v9

    if-ne v7, v8, :cond_1

    const/4 v7, 0x5

    aget-byte v7, v1, v7

    if-ne v7, v9, :cond_1

    aget-byte v7, v1, v8

    if-nez v7, :cond_1

    const/4 v7, 0x7

    aget-byte v7, v1, v7

    if-ne v7, v13, :cond_1

    const/16 v7, 0xe

    aget-byte v7, v1, v7

    aget-byte v9, v3, v14

    if-ne v7, v9, :cond_1

    const/16 v7, 0xf

    aget-byte v7, v1, v7

    const/4 v9, 0x1

    aget-byte v14, v3, v9

    if-ne v7, v14, :cond_0

    const/16 v7, 0x10

    aget-byte v7, v1, v7

    aget-byte v13, v3, v13

    if-ne v7, v13, :cond_0

    const/16 v7, 0x11

    aget-byte v7, v1, v7

    aget-byte v13, v3, v15

    if-ne v7, v13, :cond_0

    .line 252
    new-array v7, v8, [B

    .line 253
    .local v7, "result":[B
    const/16 v9, 0x8

    const/4 v13, 0x0

    invoke-static {v1, v9, v7, v13, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 254
    return-object v7

    .line 256
    .end local v7    # "result":[B
    .end local v10    # "duration":J
    .end local v12    # "readLen":I
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    move v13, v14

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v7

    move v13, v14

    .line 233
    :goto_1
    move v7, v9

    move v14, v13

    const/4 v9, 0x4

    goto :goto_0

    .line 258
    :cond_3
    const/4 v7, 0x0

    return-object v7
.end method

.method public getGateWayARPResponses(I)Landroid/net/arp/HWMultiGW;
    .locals 27
    .param p1, "timeoutMillis"    # I

    move-object/from16 v0, p0

    .line 145
    iget-object v1, v0, Landroid/net/arp/HWArpPeer;->mMyAddr:Ljava/net/InetAddress;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 146
    return-object v2

    .line 149
    :cond_0
    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 150
    .local v3, "buf":Ljava/nio/ByteBuffer;
    iget-object v4, v0, Landroid/net/arp/HWArpPeer;->mPeer:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 151
    .local v4, "desiredIp":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move/from16 v7, p1

    int-to-long v8, v7

    add-long/2addr v5, v8

    .line 155
    .local v5, "timeout":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 156
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 158
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 159
    const/16 v9, 0x800

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 160
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 163
    iget-object v11, v0, Landroid/net/arp/HWArpPeer;->mMyMac:[B

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 164
    iget-object v11, v0, Landroid/net/arp/HWArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v11}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 165
    new-array v11, v9, [B

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 167
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 168
    iget-object v11, v0, Landroid/net/arp/HWArpPeer;->mSocket:Llibcore/net/RawSocket;

    iget-object v12, v0, Landroid/net/arp/HWArpPeer;->L2_BROADCAST:[B

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v15, v14}, Llibcore/net/RawSocket;->write([B[BII)I

    .line 170
    new-array v1, v1, [B

    .line 171
    .local v1, "recvBuf":[B
    new-instance v11, Landroid/net/arp/HWMultiGW;

    invoke-direct {v11}, Landroid/net/arp/HWMultiGW;-><init>()V

    .line 172
    .local v11, "resultGW":Landroid/net/arp/HWMultiGW;
    new-array v12, v9, [B

    .line 174
    .local v12, "result":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 175
    .local v13, "lStart":J
    const-wide/16 v16, 0x0

    .line 178
    .local v16, "lEnd":J
    iget-object v2, v0, Landroid/net/arp/HWArpPeer;->mPeer:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/net/arp/HWMultiGW;->setGWIPAddr(Ljava/lang/String;)V

    .line 179
    move-wide/from16 v22, v16

    .end local v16    # "lEnd":J
    .local v22, "lEnd":J
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    cmp-long v2, v16, v5

    if-gez v2, :cond_3

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v9, v5, v16

    .line 181
    .local v9, "duration":J
    iget-object v2, v0, Landroid/net/arp/HWArpPeer;->mSocket:Llibcore/net/RawSocket;

    const/16 v18, 0x0

    array-length v8, v1

    const/16 v20, -0x1

    long-to-int v15, v9

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move/from16 v19, v8

    move/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v2

    .line 185
    .local v2, "readLen":I
    const/16 v8, 0x1c

    if-lt v2, v8, :cond_2

    const/4 v8, 0x0

    aget-byte v15, v1, v8

    if-nez v15, :cond_2

    const/4 v8, 0x1

    aget-byte v15, v1, v8

    if-ne v15, v8, :cond_2

    const/4 v8, 0x2

    aget-byte v15, v1, v8

    const/16 v8, 0x8

    if-ne v15, v8, :cond_2

    const/4 v15, 0x3

    aget-byte v16, v1, v15

    if-nez v16, :cond_2

    const/4 v8, 0x4

    aget-byte v15, v1, v8

    const/4 v8, 0x6

    if-ne v15, v8, :cond_1

    const/4 v15, 0x5

    aget-byte v15, v1, v15

    const/4 v8, 0x4

    if-ne v15, v8, :cond_2

    const/4 v15, 0x6

    aget-byte v16, v1, v15

    if-nez v16, :cond_2

    const/4 v15, 0x7

    aget-byte v15, v1, v15

    const/4 v8, 0x2

    if-ne v15, v8, :cond_2

    const/16 v8, 0xe

    aget-byte v8, v1, v8

    const/4 v15, 0x0

    aget-byte v0, v4, v15

    if-ne v8, v0, :cond_2

    const/16 v0, 0xf

    aget-byte v0, v1, v0

    const/4 v8, 0x1

    aget-byte v15, v4, v8

    if-ne v0, v15, :cond_2

    const/16 v0, 0x10

    aget-byte v0, v1, v0

    const/4 v15, 0x2

    aget-byte v15, v4, v15

    if-ne v0, v15, :cond_2

    const/16 v0, 0x11

    aget-byte v0, v1, v0

    const/4 v15, 0x3

    aget-byte v15, v4, v15

    if-ne v0, v15, :cond_2

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 198
    .end local v22    # "lEnd":J
    .local v15, "lEnd":J
    move-wide/from16 v24, v9

    sub-long v8, v15, v13

    .end local v9    # "duration":J
    .local v24, "duration":J
    invoke-virtual {v11, v8, v9}, Landroid/net/arp/HWMultiGW;->setArpRTT(J)V

    .line 201
    const/4 v0, 0x6

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v1, v9, v12, v8, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 202
    invoke-virtual {v11, v12}, Landroid/net/arp/HWMultiGW;->setGWMACAddr([B)V

    .line 204
    .end local v2    # "readLen":I
    .end local v24    # "duration":J
    move-wide/from16 v22, v15

    goto :goto_2

    .end local v15    # "lEnd":J
    .restart local v22    # "lEnd":J
    :cond_1
    move v0, v8

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    :goto_1
    const/4 v8, 0x0

    .line 179
    :goto_2
    move v9, v0

    move v15, v8

    move-object/from16 v0, p0

    const/4 v8, 0x1

    const/4 v10, 0x4

    goto/16 :goto_0

    .line 205
    :cond_3
    invoke-virtual {v11}, Landroid/net/arp/HWMultiGW;->getGWNum()I

    move-result v0

    if-lez v0, :cond_4

    .line 206
    return-object v11

    .line 208
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method
