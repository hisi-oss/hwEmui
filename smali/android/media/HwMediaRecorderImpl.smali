.class public Landroid/media/HwMediaRecorderImpl;
.super Ljava/lang/Object;
.source "HwMediaRecorderImpl.java"

# interfaces
.implements Landroid/media/IHwMediaRecorder;


# static fields
.field private static final CONSTANT_NUM:I = 0x3ec

.field private static final CONSTANT_VALUE:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "HwMediaRecorderImpl"

.field private static mAudioService:Landroid/os/IBinder;

.field private static mHwMediaRecoder:Landroid/media/IHwMediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/media/HwMediaRecorderImpl;

    invoke-direct {v0}, Landroid/media/HwMediaRecorderImpl;-><init>()V

    sput-object v0, Landroid/media/HwMediaRecorderImpl;->mHwMediaRecoder:Landroid/media/IHwMediaRecorder;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Landroid/media/HwMediaRecorderImpl;->mAudioService:Landroid/os/IBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "HwMediaRecorderImpl"

    const-string v1, "HwMediaRecorderImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private static getAudioService()Landroid/os/IBinder;
    .locals 1

    .line 40
    sget-object v0, Landroid/media/HwMediaRecorderImpl;->mAudioService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Landroid/media/HwMediaRecorderImpl;->mAudioService:Landroid/os/IBinder;

    return-object v0

    .line 43
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Landroid/media/HwMediaRecorderImpl;->mAudioService:Landroid/os/IBinder;

    .line 44
    sget-object v0, Landroid/media/HwMediaRecorderImpl;->mAudioService:Landroid/os/IBinder;

    return-object v0
.end method

.method public static getDefault()Landroid/media/IHwMediaRecorder;
    .locals 1

    .line 53
    sget-object v0, Landroid/media/HwMediaRecorderImpl;->mHwMediaRecoder:Landroid/media/IHwMediaRecorder;

    return-object v0
.end method


# virtual methods
.method public sendStateChangedIntent(I)V
    .locals 6
    .param p1, "state"    # I

    .line 62
    const-string v0, "HwMediaRecorderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStateChangedIntent, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Landroid/media/HwMediaRecorderImpl;->getAudioService()Landroid/os/IBinder;

    move-result-object v0

    .line 64
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 65
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 68
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 69
    const-class v3, Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    if-eqz v0, :cond_0

    .line 74
    const/16 v3, 0x3eb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 76
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 77
    :catch_0
    move-exception v3

    .line 78
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwMediaRecorderImpl"

    const-string v5, "sendStateChangedIntent transact error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 82
    nop

    .line 83
    return-void

    .line 80
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public showDisableMicrophoneToast()V
    .locals 6

    .line 89
    const-string v0, "HwMediaRecorderImpl"

    const-string v1, "showDisableMicrophoneToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Landroid/media/HwMediaRecorderImpl;->getAudioService()Landroid/os/IBinder;

    move-result-object v0

    .line 91
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 92
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 95
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    if-eqz v0, :cond_0

    .line 97
    const/16 v3, 0x3ed

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 99
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 100
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwMediaRecorderImpl"

    const-string v5, "showDisableMicrophoneToast transact error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 106
    :goto_1
    return-void

    .line 103
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
