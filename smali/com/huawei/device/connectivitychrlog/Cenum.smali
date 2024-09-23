.class public Lcom/huawei/device/connectivitychrlog/Cenum;
.super Ljava/lang/Object;
.source "Cenum.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field length:I

.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cenum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->LOG_TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    return v0
.end method

.method public getOrdinal()I
    .locals 4

    .line 37
    const/4 v0, -0x1

    .line 39
    .local v0, "index":I
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrdinal failed name is not in the enum map, name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setByByteArray([BIZ)V
    .locals 4
    .param p1, "src"    # [B
    .param p2, "len"    # I
    .param p3, "bIsLittleEndian"    # Z

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "data":I
    iget v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    if-eq v1, p2, :cond_0

    .line 59
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setByByteArray failed ,not support len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 63
    const/4 v1, 0x0

    aget-byte v0, p1, v1

    goto :goto_0

    .line 64
    :cond_1
    iget v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 65
    invoke-static {p1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->littleEndianBytesToShort([B)S

    move-result v0

    goto :goto_0

    .line 66
    :cond_2
    iget v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 67
    invoke-static {p1}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->littleEndianBytesToInt([B)I

    move-result v0

    .line 73
    :goto_0
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    .local v2, "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 75
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->name:Ljava/lang/String;

    .line 77
    .end local v2    # "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    goto :goto_1

    .line 79
    :cond_4
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setByByteArray data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 69
    :cond_5
    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setByByteArray failed ,not support length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/device/connectivitychrlog/ChrLog;->chrLogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 95
    iput p1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .line 112
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    new-array v0, v0, [B

    .line 113
    .local v0, "byteArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 114
    .local v1, "bytebuf":Ljava/nio/ByteBuffer;
    iget v2, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/huawei/device/connectivitychrlog/Cenum;->getOrdinal()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 116
    :cond_0
    iget v2, p0, Lcom/huawei/device/connectivitychrlog/Cenum;->length:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/huawei/device/connectivitychrlog/Cenum;->getOrdinal()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/device/connectivitychrlog/Cenum;->getOrdinal()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
