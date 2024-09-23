.class public Landroid/media/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Sniffer$SupportFormat;
    }
.end annotation


# static fields
.field public static final FILE_EXT_AUDIO_AAC_ADTS:Ljava/lang/String; = "aac"

.field public static final FILE_EXT_AUDIO_APE:Ljava/lang/String; = "ape"

.field public static final FILE_EXT_AUDIO_FLAC:Ljava/lang/String; = "flac"

.field public static final FILE_EXT_AUDIO_M4A:Ljava/lang/String; = "m4a"

.field public static final FILE_EXT_AUDIO_MPEG:Ljava/lang/String; = "mp3"

.field public static final MEDIA_MIMETYPE_AUDIO_AAC_ADTS:Ljava/lang/String; = "audio/aac-adts"

.field public static final MEDIA_MIMETYPE_AUDIO_APE:Ljava/lang/String; = "audio/ape"

.field public static final MEDIA_MIMETYPE_AUDIO_FLAC:Ljava/lang/String; = "audio/flac"

.field public static final MEDIA_MIMETYPE_AUDIO_M4A:Ljava/lang/String; = "audio/mp4"

.field public static final MEDIA_MIMETYPE_AUDIO_MPEG:Ljava/lang/String; = "audio/mpeg"

.field private static final TAG:Ljava/lang/String; = "Sniffer_Java"


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-string v0, "musicsniffer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Landroid/media/Sniffer;->nativeInit()V

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-direct {p0}, Landroid/media/Sniffer;->nativeSetup()V

    .line 83
    return-void
.end method

.method public static getRealExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 92
    new-instance v0, Landroid/media/Sniffer;

    invoke-direct {v0}, Landroid/media/Sniffer;-><init>()V

    .line 93
    .local v0, "sniffer":Landroid/media/Sniffer;
    invoke-virtual {v0, p0}, Landroid/media/Sniffer;->setDataSource(Ljava/lang/String;)Z

    .line 94
    invoke-virtual {v0}, Landroid/media/Sniffer;->getFileMime()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "mime":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/media/Sniffer;->isTagValid()Z

    move-result v2

    .line 96
    .local v2, "isValid":Z
    invoke-virtual {v0}, Landroid/media/Sniffer;->release()V

    .line 97
    if-nez v2, :cond_0

    .line 98
    const/4 v3, 0x0

    return-object v3

    .line 100
    :cond_0
    invoke-static {v1}, Landroid/media/Sniffer$SupportFormat;->getRealExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetAlbum()Ljava/lang/String;
.end method

.method private native nativeGetArtist()Ljava/lang/String;
.end method

.method private native nativeGetDuration()J
.end method

.method private native nativeGetFileMime()Ljava/lang/String;
.end method

.method private native nativeGetTitle()Ljava/lang/String;
.end method

.method private static native nativeInit()V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetDataSource(Ljava/lang/String;)Z
.end method

.method private native nativeSetup()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 212
    :try_start_0
    invoke-direct {p0}, Landroid/media/Sniffer;->nativeFinalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 217
    nop

    .line 218
    return-void

    .line 216
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 156
    invoke-direct {p0}, Landroid/media/Sniffer;->nativeGetAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 146
    invoke-direct {p0}, Landroid/media/Sniffer;->nativeGetArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 166
    invoke-direct {p0}, Landroid/media/Sniffer;->nativeGetDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileMime()Ljava/lang/String;
    .locals 1

    .line 110
    invoke-direct {p0}, Landroid/media/Sniffer;->nativeGetFileMime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 136
    invoke-direct {p0}, Landroid/media/Sniffer;->nativeGetTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native isTagValid()Z
.end method

.method public release()V
    .locals 2

    .line 200
    const-string v0, "Sniffer_Java"

    const-string v1, "release!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Landroid/media/Sniffer;->nativeRelease()V

    .line 202
    return-void
.end method

.method public native reset()V
.end method

.method public setDataSource(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "Sniffer_Java"

    const-string v2, "setDataSource file does not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x0

    return v1

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/Sniffer;->nativeSetDataSource(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
