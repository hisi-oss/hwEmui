.class Landroid/media/hwmnote/CountedDataInputStream;
.super Ljava/io/FilterInputStream;
.source "CountedDataInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE_ARRAY_SIZE:I = 0x8

.field private static final INT_BYTE_COUNT:I = 0x4

.field private static final SHORT_BYTE_COUNT:I = 0x2

.field private static final UNSIGNED_DWORD:J = 0xffffffffL

.field private static final UNSIGNED_WORD:I = 0xffff


# instance fields
.field private final mByteArray:[B

.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 21
    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteArray:[B

    .line 38
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteArray:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 46
    return-void
.end method


# virtual methods
.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public getReadByteCount()I
    .locals 1

    .line 53
    iget v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 89
    .local v0, "r":I
    iget v1, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    .line 90
    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 64
    .local v0, "r":I
    iget v1, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    .line 65
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 78
    .local v0, "r":I
    iget v1, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    if-ltz v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    .line 79
    return v0
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/hwmnote/CountedDataInputStream;->readOrThrow([BII)V

    .line 187
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 188
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/hwmnote/CountedDataInputStream;->readOrThrow([BII)V

    .line 205
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 206
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readOrThrow([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/hwmnote/CountedDataInputStream;->readOrThrow([BII)V

    .line 145
    return-void
.end method

.method public readOrThrow([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/hwmnote/CountedDataInputStream;->read([BII)I

    move-result v0

    .line 134
    .local v0, "r":I
    if-ne v0, p3, :cond_0

    .line 137
    return-void

    .line 135
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/hwmnote/CountedDataInputStream;->readOrThrow([BII)V

    .line 169
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 170
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Landroid/media/hwmnote/CountedDataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Landroid/media/hwmnote/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 152
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 153
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 101
    .local v0, "skip":J
    iget v2, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    .line 102
    return-wide v0
.end method

.method public skipOrThrow(J)V
    .locals 2
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1, p2}, Landroid/media/hwmnote/CountedDataInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public skipTo(J)V
    .locals 4
    .param p1, "target"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget v0, p0, Landroid/media/hwmnote/CountedDataInputStream;->mCount:I

    int-to-long v0, v0

    .line 121
    .local v0, "cur":J
    sub-long v2, p1, v0

    .line 122
    .local v2, "diff":J
    nop

    .line 123
    invoke-virtual {p0, v2, v3}, Landroid/media/hwmnote/CountedDataInputStream;->skipOrThrow(J)V

    .line 124
    return-void
.end method
