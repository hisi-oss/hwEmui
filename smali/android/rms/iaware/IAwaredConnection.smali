.class public Landroid/rms/iaware/IAwaredConnection;
.super Ljava/lang/Object;
.source "IAwaredConnection.java"


# static fields
.field private static final FLUSH_TIMEOUT:J = 0x7d0L

.field private static final LOCAL_SOCKET_NAME:Ljava/lang/String; = "iawared"

.field private static final TAG:Ljava/lang/String; = "IAwaredConnection"

.field private static instance:Landroid/rms/iaware/IAwaredConnection;


# instance fields
.field private outStream:Ljava/io/OutputStream;

.field private sock:Landroid/net/LocalSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Landroid/rms/iaware/IAwaredConnection;->instance:Landroid/rms/iaware/IAwaredConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    .line 40
    iput-object v0, p0, Landroid/rms/iaware/IAwaredConnection;->outStream:Ljava/io/OutputStream;

    .line 44
    return-void
.end method

.method private createImpl()Z
    .locals 6

    .line 133
    iget-object v0, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 134
    return v1

    .line 138
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v2, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    .line 139
    iget-object v2, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v4, "iawared"

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 141
    iget-object v2, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Landroid/rms/iaware/IAwaredConnection;->outStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return v1

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "IAwaredConnection"

    const-string v3, "Failed to create connection, SecurityException"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Landroid/rms/iaware/IAwaredConnection;->destroyImpl()V

    .line 153
    return v0

    .line 144
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 145
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "IAwaredConnection"

    const-string v3, "Failed to create connection, IOException"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Landroid/rms/iaware/IAwaredConnection;->destroyImpl()V

    .line 148
    return v0
.end method

.method private destroyImpl()V
    .locals 4

    .line 162
    iget-object v0, p0, Landroid/rms/iaware/IAwaredConnection;->outStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/rms/iaware/IAwaredConnection;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    iput-object v1, p0, Landroid/rms/iaware/IAwaredConnection;->outStream:Ljava/io/OutputStream;

    .line 169
    goto :goto_2

    .line 168
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "IAwaredConnection"

    const-string v3, "Failed to close output stream, IOException"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 168
    :goto_1
    iput-object v1, p0, Landroid/rms/iaware/IAwaredConnection;->outStream:Ljava/io/OutputStream;

    throw v0

    .line 172
    :cond_0
    :goto_2
    iget-object v0, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    .line 174
    :try_start_2
    iget-object v0, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    :goto_3
    iput-object v1, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    .line 179
    goto :goto_5

    .line 178
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 175
    :catch_1
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "IAwaredConnection"

    const-string v3, "Failed to close local socket, IOException"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 178
    :goto_4
    iput-object v1, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    throw v0

    .line 181
    :cond_1
    :goto_5
    return-void
.end method

.method private flush(J)V
    .locals 9
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroid/rms/iaware/IAwaredConnection;->sock:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 192
    .local v0, "myFd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_4

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 198
    .local v1, "start":J
    new-instance v3, Landroid/system/Int32Ref;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/system/Int32Ref;-><init>(I)V

    .line 202
    .local v3, "pending":Landroid/system/Int32Ref;
    :goto_0
    :try_start_0
    sget v4, Landroid/system/OsConstants;->TIOCOUTQ:I

    invoke-static {v0, v4, v3}, Landroid/system/Os;->ioctlInt(Ljava/io/FileDescriptor;ILandroid/system/Int32Ref;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    nop

    .line 207
    iget v4, v3, Landroid/system/Int32Ref;->value:I

    if-gtz v4, :cond_0

    .line 209
    goto :goto_3

    .line 213
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 214
    .local v4, "elapsed":J
    cmp-long v6, v4, p1

    if-gez v6, :cond_3

    .line 220
    iget v6, v3, Landroid/system/Int32Ref;->value:I

    .line 222
    .local v6, "left":I
    const/16 v7, 0x3e8

    if-gt v6, v7, :cond_1

    .line 223
    const-wide/16 v7, 0x1

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 229
    :catch_0
    move-exception v7

    goto :goto_2

    .line 224
    :cond_1
    const/16 v7, 0x1388

    if-gt v6, v7, :cond_2

    .line 225
    const-wide/16 v7, 0x5

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 227
    :cond_2
    const-wide/16 v7, 0xa

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    :goto_1
    nop

    .line 232
    .end local v4    # "elapsed":J
    .end local v6    # "left":I
    goto :goto_0

    .line 229
    .restart local v4    # "elapsed":J
    .restart local v6    # "left":I
    :goto_2
    nop

    .line 230
    .local v7, "ie":Ljava/lang/InterruptedException;
    nop

    .line 233
    .end local v4    # "elapsed":J
    .end local v6    # "left":I
    .end local v7    # "ie":Ljava/lang/InterruptedException;
    :goto_3
    return-void

    .line 215
    .restart local v4    # "elapsed":J
    :cond_3
    const-string v6, "IAwaredConnection"

    const-string v7, "Socket flush timed out !!!"

    invoke-static {v6, v7}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v6, Ljava/io/IOException;

    const-string v7, "flush timeout"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 203
    .end local v4    # "elapsed":J
    :catch_1
    move-exception v4

    .line 204
    .local v4, "e":Landroid/system/ErrnoException;
    invoke-virtual {v4}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 192
    .end local v1    # "start":J
    .end local v3    # "pending":Landroid/system/Int32Ref;
    .end local v4    # "e":Landroid/system/ErrnoException;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Landroid/rms/iaware/IAwaredConnection;
    .locals 2

    .line 52
    const-class v0, Landroid/rms/iaware/IAwaredConnection;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Landroid/rms/iaware/IAwaredConnection;->instance:Landroid/rms/iaware/IAwaredConnection;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Landroid/rms/iaware/IAwaredConnection;

    invoke-direct {v1}, Landroid/rms/iaware/IAwaredConnection;-><init>()V

    sput-object v1, Landroid/rms/iaware/IAwaredConnection;->instance:Landroid/rms/iaware/IAwaredConnection;

    .line 57
    :cond_0
    sget-object v1, Landroid/rms/iaware/IAwaredConnection;->instance:Landroid/rms/iaware/IAwaredConnection;

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized create()V
    .locals 2

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-direct {p0}, Landroid/rms/iaware/IAwaredConnection;->createImpl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const-string v0, "IAwaredConnection"

    const-string v1, "Failed to create connection"

    invoke-static {v0, v1}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/rms/iaware/IAwaredConnection;
    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-direct {p0}, Landroid/rms/iaware/IAwaredConnection;->destroyImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Landroid/rms/iaware/IAwaredConnection;
    throw v0
.end method

.method public sendPacket([B)Z
    .locals 3
    .param p1, "msg"    # [B

    .line 87
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/rms/iaware/IAwaredConnection;->sendPacket([BII)Z

    move-result v0

    return v0

    .line 88
    :cond_1
    :goto_0
    const-string v1, "IAwaredConnection"

    const-string v2, "Parameter check failed"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return v0
.end method

.method public declared-synchronized sendPacket([BII)Z
    .locals 4
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    monitor-enter p0

    .line 106
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-lez p3, :cond_2

    :try_start_0
    array-length v1, p1

    sub-int/2addr v1, p3

    if-le p2, v1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0}, Landroid/rms/iaware/IAwaredConnection;->createImpl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const-string v1, "IAwaredConnection"

    const-string v2, "Failed to create connection"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return v0

    .line 117
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/rms/iaware/IAwaredConnection;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    const-wide/16 v1, 0x7d0

    invoke-direct {p0, v1, v2}, Landroid/rms/iaware/IAwaredConnection;->flush(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "IAwaredConnection"

    const-string v3, "Failed to write output stream, IOException"

    invoke-static {v2, v3}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Landroid/rms/iaware/IAwaredConnection;->destroyImpl()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    monitor-exit p0

    return v0

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    :try_start_3
    const-string v1, "IAwaredConnection"

    const-string v2, "Parameter check failed"

    invoke-static {v1, v2}, Landroid/rms/iaware/AwareLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    monitor-exit p0

    return v0

    .line 105
    .end local p1    # "msg":[B
    .end local p2    # "offset":I
    .end local p3    # "count":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Landroid/rms/iaware/IAwaredConnection;
    throw p1
.end method
