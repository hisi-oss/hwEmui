.class Landroid/media/hwmnote/OrderedDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "OrderedDataOutputStream.java"


# static fields
.field private static final BYTE_BUFFER_ARRAY_LEN:I = 0x2

.field private static final BYTE_BUFFER_LEN:I = 0x4


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 25
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 33
    return-void
.end method


# virtual methods
.method public setByteOrder(Ljava/nio/ByteOrder;)Landroid/media/hwmnote/OrderedDataOutputStream;
    .locals 1
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 40
    iget-object v0, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    return-object p0
.end method

.method public writeInt(I)Landroid/media/hwmnote/OrderedDataOutputStream;
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 63
    iget-object v0, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    iget-object v0, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 65
    return-object p0
.end method

.method public writeShort(S)Landroid/media/hwmnote/OrderedDataOutputStream;
    .locals 4
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 51
    iget-object v0, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 52
    iget-object v0, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Landroid/media/hwmnote/OrderedDataOutputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    return-object p0
.end method
