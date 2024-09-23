.class public final Landroid/media/HwMediaMuxer;
.super Ljava/lang/Object;
.source "HwMediaMuxer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwMediaMuxer"


# instance fields
.field private mNativeObject:J

.field private mediaMuxer:Landroid/media/MediaMuxer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "media_jni.huawei"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 61
    const-string v0, "mNativeObject"

    iget-object v1, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-direct {p0, v0, v1}, Landroid/media/HwMediaMuxer;->getFieldValueByFieldName(Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/HwMediaMuxer;->mNativeObject:J

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/media/MediaMuxer;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    .line 45
    const-string v0, "mNativeObject"

    iget-object v1, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-direct {p0, v0, v1}, Landroid/media/HwMediaMuxer;->getFieldValueByFieldName(Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/HwMediaMuxer;->mNativeObject:J

    .line 46
    return-void
.end method

.method private getFieldValueByFieldName(Ljava/lang/String;Ljava/lang/Object;)J
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .line 68
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 69
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 71
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HwMediaMuxer"

    const-string v2, "GET mNativeObject Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private static native nativeSetUserTag(JLjava/lang/String;)V
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 287
    iget-object v0, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 315
    return-void
.end method

.method public setLocation(FF)V
    .locals 1
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .line 109
    iget-object v0, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 110
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 1
    .param p1, "degrees"    # I

    .line 94
    iget-object v0, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 95
    return-void
.end method

.method public setUserTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "userTag"    # Ljava/lang/String;

    .line 119
    const-string v0, "HwMediaMuxer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserTag() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p1, :cond_0

    .line 123
    iget-wide v0, p0, Landroid/media/HwMediaMuxer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/media/HwMediaMuxer;->nativeSetUserTag(JLjava/lang/String;)V

    .line 125
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set null String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 139
    return-void
.end method

.method public stop()V
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 151
    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 306
    iget-object v0, p0, Landroid/media/HwMediaMuxer;->mediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 307
    return-void
.end method
