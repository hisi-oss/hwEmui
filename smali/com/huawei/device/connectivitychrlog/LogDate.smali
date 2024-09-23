.class public Lcom/huawei/device/connectivitychrlog/LogDate;
.super Ljava/lang/Object;
.source "LogDate.java"


# instance fields
.field private calendarNow:Ljava/util/Calendar;

.field private length:I

.field private value:Ljava/util/Date;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "pLength"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x8

    iput v0, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->length:I

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->value:Ljava/util/Date;

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    .line 35
    iput p1, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->length:I

    .line 36
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->length:I

    return v0
.end method

.method public getValue()Ljava/util/Date;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->value:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public setValue(Ljava/util/Date;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Date;

    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->value:Ljava/util/Date;

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->value:Ljava/util/Date;

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->value:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 26
    return-void
.end method

.method public toByteArray()[B
    .locals 5

    .line 40
    iget v0, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->length:I

    new-array v0, v0, [B

    .line 41
    .local v0, "byteArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 42
    .local v1, "bytebuf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, -0x7d0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 43
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 44
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 45
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 46
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 47
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 48
    iget v2, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->length:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 49
    iget-object v2, p0, Lcom/huawei/device/connectivitychrlog/LogDate;->calendarNow:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Lcom/huawei/device/connectivitychrlog/ByteConvert;->shortToBytes(S)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 51
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
