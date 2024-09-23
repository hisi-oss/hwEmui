.class public Landroid/media/HwAudioRecordImpl;
.super Ljava/lang/Object;
.source "HwAudioRecordImpl.java"

# interfaces
.implements Landroid/media/IHwAudioRecord;


# static fields
.field private static final CONSTANT_NUM:I = 0x3ec

.field private static final CONSTANT_VALUE:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "HwAudioRecordImpl"

.field private static mAudioService:Landroid/os/IBinder;

.field private static mHwAudioRecoder:Landroid/media/IHwAudioRecord;


# instance fields
.field private mAppOps:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/media/HwAudioRecordImpl;

    invoke-direct {v0}, Landroid/media/HwAudioRecordImpl;-><init>()V

    sput-object v0, Landroid/media/HwAudioRecordImpl;->mHwAudioRecoder:Landroid/media/IHwAudioRecord;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Landroid/media/HwAudioRecordImpl;->mAudioService:Landroid/os/IBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "HwAudioRecordImpl"

    const-string v1, "HwAudioRecordImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method private static getAudioService()Landroid/os/IBinder;
    .locals 1

    .line 79
    sget-object v0, Landroid/media/HwAudioRecordImpl;->mAudioService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Landroid/media/HwAudioRecordImpl;->mAudioService:Landroid/os/IBinder;

    return-object v0

    .line 82
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Landroid/media/HwAudioRecordImpl;->mAudioService:Landroid/os/IBinder;

    .line 83
    sget-object v0, Landroid/media/HwAudioRecordImpl;->mAudioService:Landroid/os/IBinder;

    return-object v0
.end method

.method public static getDefault()Landroid/media/IHwAudioRecord;
    .locals 1

    .line 47
    sget-object v0, Landroid/media/HwAudioRecordImpl;->mHwAudioRecoder:Landroid/media/IHwAudioRecord;

    return-object v0
.end method


# virtual methods
.method public isAudioRecordAllowed()Z
    .locals 5

    .line 91
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/HwAudioRecordImpl;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_0

    .line 93
    const-string v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Landroid/media/HwAudioRecordImpl;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 95
    :cond_0
    iget-object v1, p0, Landroid/media/HwAudioRecordImpl;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/media/HwAudioRecordImpl;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v3, 0x1b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-interface {v1, v3, v4, v0}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Unable to noteOperation error"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    return v2
.end method

.method public sendStateChangedIntent(I)V
    .locals 6
    .param p1, "state"    # I

    .line 55
    const-string v0, "HwAudioRecordImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStateChangedIntent, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Landroid/media/HwAudioRecordImpl;->getAudioService()Landroid/os/IBinder;

    move-result-object v0

    .line 57
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 58
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 61
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 62
    const-class v3, Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    if-eqz v0, :cond_0

    .line 67
    const/16 v3, 0x3eb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 69
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwAudioRecordImpl"

    const-string v5, "sendStateChangedIntent transact error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 74
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 75
    nop

    .line 76
    return-void

    .line 73
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 74
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public showDisableMicrophoneToast()V
    .locals 6

    .line 110
    const-string v0, "HwAudioRecordImpl"

    const-string v1, "showDisableMicrophoneToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Landroid/media/HwAudioRecordImpl;->getAudioService()Landroid/os/IBinder;

    move-result-object v0

    .line 112
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 113
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 116
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IAudioService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    if-eqz v0, :cond_0

    .line 118
    const/16 v3, 0x3ed

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 120
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    goto :goto_1

    .line 124
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "HwAudioRecordImpl"

    const-string v5, "showDisableMicrophoneToast transact error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 127
    :goto_1
    return-void

    .line 124
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
