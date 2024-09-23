.class public Lhuawei/android/security/facerecognition/FaceCamera;
.super Ljava/lang/Object;
.source "FaceCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/android/security/facerecognition/FaceCamera$HandlerExecutor;
    }
.end annotation


# static fields
.field private static final ANDROID_HW_BIO_FACE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANDROID_HW_BIO_FACE_RUNNING_MODE_KEY:Ljava/lang/String; = "com.huawei.capture.metadata.bioFaceRunningMode"

.field private static final ANDROID_HW_BIO_FACE_RUNNING_MODE_KEY_VALUE:[I

.field private static final ANDROID_HW_BIO_FACE_RUNNING_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final AUTH_FPS_FOR_3D_STRUCTURE_LIGHT_CAMERA:I = 0x3c

.field private static final AUTH_FPS_FOR_DUAL_CAMERA:I = 0x1e

.field private static final AUTH_PAY_TYPE:I = 0x1

.field public static final BD_REPORT_EVENT_ID_IMAGE:I = 0x1f6

.field public static final BD_REPORT_EVNET_ID_OPEN:I = 0x1f5

.field private static final BIO_FACE_MODE_3D_AUTHENTICATION:I = 0x5

.field private static final BIO_FACE_MODE_3D_ENROLLMENT:I = 0x4

.field private static final BIO_FACE_MODE_AUTHENTICATION:I = 0x2

.field private static final BIO_FACE_MODE_ENROLLMENT:I = 0x1

.field private static final BIO_FACE_MODE_PAY:I = 0x3

.field private static final BIO_FACE_RUNNING_NOT_SUPPORTED:I = 0x0

.field private static final BIO_FACE_RUNNING_SUPPORTED:I = 0x1

.field private static final BIO_FACE_RUNNING_UNKOWN:I = -0x1

.field private static final CAMERA_CLOSING:I = 0x2

.field private static final CAMERA_IDLE:I = 0x0

.field private static final CAMERA_OPENING:I = 0x3

.field private static final CAMERA_READY:I = 0x1

.field private static final CAMERA_STRUCTURE_LIGHT_SUPPORTED:I = 0x1

.field private static final ENROLL_FPS_FOR_3D_STRUCTURE_LIGHT_CAMERA:I = 0x1e

.field private static final ENROLL_FPS_FOR_DUAL_CAMERA:I = 0x1e

.field private static final HEIGHT:I = 0x1e0

.field private static final HUAWEI_BIO_RUNNING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_SOFTLIGHT_ALLOWED:Z

.field private static final MSG_CAMERA_CLOSED:I = 0x4

.field private static final MSG_CAMERA_DISCONNECTED:I = 0x3

.field private static final MSG_CREATE_REQUEST_OK:I = 0x14

.field private static final MSG_CREATE_SESSION_CAMERA_CLOSED:I = 0xa

.field private static final MSG_CREATE_SESSION_FAILED:I = 0xc

.field private static final MSG_CREATE_SESSION_OK:I = 0xb

.field private static final MSG_OPEN_CAMERA_ERROR:I = 0x2

.field private static final MSG_OPEN_CAMERA_OK:I = 0x0

.field private static final MSG_OPEN_CAMERA_TIME_OUT:I = 0x1

.field private static final NO_MSG_CODE:I = -0x1

.field private static final OP_CLOSE_CAMERA:I = 0x3

.field private static final OP_CREATE_SESSION:I = 0x1

.field private static final OP_OPEN_CAMERA:I = 0x0

.field private static final OP_SEND_REQUEST:I = 0x2

.field private static final REQUEST_SENDING:I = 0x6

.field private static final REQUEST_WORKING:I = 0x7

.field public static final RET_CREATE_SESSION_FAILED:I = 0x3ec

.field public static final RET_CREATE_SESSION_OK:I = 0x3eb

.field public static final RET_OPEN_CAMERA_FAILED:I = 0x3e9

.field public static final RET_OPEN_CAMERA_OK:I = 0x3e8

.field public static final RET_OPEN_CAMERA_TIMEOUT:I = 0x3ea

.field public static final RET_OP_ALLOW:I = 0x1

.field public static final RET_OP_ALREADY:I = 0x0

.field public static final RET_OP_DENY:I = 0x2

.field public static final RET_REPEAT_REQUEST_FAILED:I = 0x3ee

.field public static final RET_REPEAT_REQUEST_OK:I = 0x3ed

.field private static final SECURE_CAMERA:I = 0x1

.field private static final SECURE_CAMERA_TYPE_POSITION:I = 0x1

.field private static final SECURE_CAMERA_WITH_3D:I = 0x4

.field private static final SECURE_CAMERA_WITH_DEPTH_MAP:I = 0x3

.field private static final SECURE_MODE:I = 0x1

.field private static final SENSOR_LIGHT_THRESHOLD:F = 2.0f

.field private static final SESSION_CREATED:I = 0x5

.field private static final SESSION_CREATING:I = 0x4

.field private static final SKIP_IMAGE_QUEUE_SIZE:I = 0x2

.field private static final SKIP_IMAGE_SWICH_ON:Z = true

.field private static final SUPPORT_FACE_MODE:I

.field public static final SYSTEM_UI_PKG:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "FaceCamera"

.field private static final UNSECURE_CAMERA:I = 0x0

.field private static final WIDTH:I = 0x280

.field private static mCurrentLux:F

.field private static final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private static mSensorDataLock:Ljava/util/concurrent/Semaphore;

.field private static sInstance:Lhuawei/android/security/facerecognition/FaceCamera;


# instance fields
.field private fpsRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isEnrolling:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBioFaceRunningSupportMode:I

.field private mCameraCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraHandlerThread:Landroid/os/HandlerThread;

.field private mCameraId:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private final mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mHwBioFaceRunningModeKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mImageCount:I

.field private mImageCountLock:Ljava/lang/Object;

.field private mImageReader:Landroid/media/ImageReader;

.field private final mImageReaderLock:Ljava/lang/Object;

.field private volatile mIsImageReported:Z

.field private mIsStructuredLightSupported:Ljava/lang/Byte;

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mSoftlightOn:Z

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;

.field private volatile printTimeLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "com.huawei.capture.metadata.bioFaceMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lhuawei/android/security/facerecognition/FaceCamera;->ANDROID_HW_BIO_FACE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 58
    new-instance v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v1, "com.huawei.device.capabilities.bioFaceRunningSupported"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lhuawei/android/security/facerecognition/FaceCamera;->ANDROID_HW_BIO_FACE_RUNNING_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 61
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "com.huawei.capture.metadata.bioFaceRunningMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lhuawei/android/security/facerecognition/FaceCamera;->HUAWEI_BIO_RUNNING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 69
    const-string v0, "ro.config.support_face_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    .line 78
    new-array v0, v1, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lhuawei/android/security/facerecognition/FaceCamera;->ANDROID_HW_BIO_FACE_RUNNING_MODE_KEY_VALUE:[I

    .line 81
    const-string v0, "ro.config.allow_face_softlight"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/security/facerecognition/FaceCamera;->IS_SOFTLIGHT_ALLOWED:Z

    .line 194
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorDataLock:Ljava/util/concurrent/Semaphore;

    .line 221
    new-instance v0, Lhuawei/android/security/facerecognition/FaceCamera$1;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/FaceCamera$1;-><init>()V

    sput-object v0, Lhuawei/android/security/facerecognition/FaceCamera;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 1192
    :try_start_0
    const-string v0, "FaceRecognizeSendImage"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "FaceCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadLibrary occurs error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mHwBioFaceRunningModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    .line 151
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageCountLock:Ljava/lang/Object;

    .line 152
    iput v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageCount:I

    .line 162
    const/4 v1, -0x1

    iput v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBioFaceRunningSupportMode:I

    .line 165
    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mIsImageReported:Z

    .line 168
    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSoftlightOn:Z

    .line 176
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mIsStructuredLightSupported:Ljava/lang/Byte;

    .line 192
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 193
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraCloseLock:Ljava/util/concurrent/Semaphore;

    .line 199
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mStateLock:Ljava/lang/Object;

    .line 259
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReaderLock:Ljava/lang/Object;

    .line 261
    iput-boolean v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->printTimeLog:Z

    .line 262
    new-instance v0, Lhuawei/android/security/facerecognition/FaceCamera$2;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/FaceCamera$2;-><init>(Lhuawei/android/security/facerecognition/FaceCamera;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 468
    new-instance v0, Lhuawei/android/security/facerecognition/FaceCamera$3;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/FaceCamera$3;-><init>(Lhuawei/android/security/facerecognition/FaceCamera;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 531
    new-instance v0, Lhuawei/android/security/facerecognition/FaceCamera$4;

    invoke-direct {v0, p0}, Lhuawei/android/security/facerecognition/FaceCamera$4;-><init>(Lhuawei/android/security/facerecognition/FaceCamera;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 453
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "face_camera"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraHandlerThread:Landroid/os/HandlerThread;

    .line 454
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 455
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraHandler:Landroid/os/Handler;

    .line 456
    return-void
.end method

.method static synthetic access$002(F)F
    .locals 0
    .param p0, "x0"    # F

    .line 47
    sput p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCurrentLux:F

    return p0
.end method

.method static synthetic access$100()Ljava/util/concurrent/Semaphore;
    .locals 1

    .line 47
    sget-object v0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorDataLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1000(Lhuawei/android/security/facerecognition/FaceCamera;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .line 47
    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 47
    sget v0, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    return v0
.end method

.method static synthetic access$1200(Lhuawei/android/security/facerecognition/FaceCamera;Landroid/graphics/Rect;[Ljava/nio/ByteBuffer;[I[I)[B
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # [Ljava/nio/ByteBuffer;
    .param p3, "x3"    # [I
    .param p4, "x4"    # [I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lhuawei/android/security/facerecognition/FaceCamera;->getDataFromImage(Landroid/graphics/Rect;[Ljava/nio/ByteBuffer;[I[I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1400(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$1402(Lhuawei/android/security/facerecognition/FaceCamera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .line 47
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1500(Lhuawei/android/security/facerecognition/FaceCamera;I)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lhuawei/android/security/facerecognition/FaceCamera;I)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->handleMessage(I)V

    return-void
.end method

.method static synthetic access$1700(Lhuawei/android/security/facerecognition/FaceCamera;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->unRegisterLightSensorListener()V

    return-void
.end method

.method static synthetic access$1800(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1900(Lhuawei/android/security/facerecognition/FaceCamera;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->closeImageReader()V

    return-void
.end method

.method static synthetic access$200(Lhuawei/android/security/facerecognition/FaceCamera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReaderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lhuawei/android/security/facerecognition/FaceCamera;)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->stopBackgroundThread()V

    return-void
.end method

.method static synthetic access$2100(Lhuawei/android/security/facerecognition/FaceCamera;II)V
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lhuawei/android/security/facerecognition/FaceCamera;->handleMessage(II)V

    return-void
.end method

.method static synthetic access$2202(Lhuawei/android/security/facerecognition/FaceCamera;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 47
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$300(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lhuawei/android/security/facerecognition/FaceCamera;)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-boolean v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->isEnrolling:Z

    return v0
.end method

.method static synthetic access$500(Lhuawei/android/security/facerecognition/FaceCamera;)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->increaseAndCheckImageCount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lhuawei/android/security/facerecognition/FaceCamera;)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-boolean v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->printTimeLog:Z

    return v0
.end method

.method static synthetic access$602(Lhuawei/android/security/facerecognition/FaceCamera;Z)Z
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->printTimeLog:Z

    return p1
.end method

.method static synthetic access$700(Lhuawei/android/security/facerecognition/FaceCamera;)Z
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-boolean v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mIsImageReported:Z

    return v0
.end method

.method static synthetic access$702(Lhuawei/android/security/facerecognition/FaceCamera;Z)Z
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mIsImageReported:Z

    return p1
.end method

.method static synthetic access$800(Lhuawei/android/security/facerecognition/FaceCamera;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lhuawei/android/security/facerecognition/FaceCamera;)J
    .locals 2
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;

    .line 47
    iget-wide v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lhuawei/android/security/facerecognition/FaceCamera;J)J
    .locals 0
    .param p0, "x0"    # Lhuawei/android/security/facerecognition/FaceCamera;
    .param p1, "x1"    # J

    .line 47
    iput-wide p1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCurrentTime:J

    return-wide p1
.end method

.method private checkOperation(I)I
    .locals 9
    .param p1, "operation"    # I

    .line 1108
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1145
    :try_start_0
    monitor-exit v0

    goto/16 :goto_6

    .line 1136
    :pswitch_0
    const-string v1, "FaceCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curState = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->getCurState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Operate = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->getOperate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-eq v6, v4, :cond_0

    iget v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-eqz v6, :cond_0

    const-string v6, "ok"

    goto :goto_0

    :cond_0
    const-string v6, "fail"

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-nez v1, :cond_1

    .line 1138
    monitor-exit v0

    return v2

    .line 1139
    :cond_1
    iget v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-ne v1, v4, :cond_2

    .line 1140
    monitor-exit v0

    return v4

    .line 1142
    :cond_2
    monitor-exit v0

    return v5

    .line 1129
    :pswitch_1
    const-string v1, "FaceCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curState = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->getCurState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Operate = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->getOperate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-ne v6, v3, :cond_3

    const-string v6, "ok"

    goto :goto_1

    :cond_3
    const-string v6, "fail"

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-ne v1, v3, :cond_4

    .line 1131
    monitor-exit v0

    return v5

    .line 1133
    :cond_4
    monitor-exit v0

    return v4

    .line 1120
    :pswitch_2
    const-string v6, "FaceCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->getCurState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Operate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->getOperate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-ne v8, v5, :cond_5

    const-string v8, "ok"

    goto :goto_2

    :cond_5
    const-string v8, "fail"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-eq v6, v3, :cond_8

    iget v3, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-ne v3, v1, :cond_6

    goto :goto_3

    .line 1123
    :cond_6
    iget v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-ne v1, v5, :cond_7

    .line 1124
    monitor-exit v0

    return v5

    .line 1126
    :cond_7
    monitor-exit v0

    return v4

    .line 1122
    :cond_8
    :goto_3
    monitor-exit v0

    return v2

    .line 1111
    :pswitch_3
    const-string v6, "FaceCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->getCurState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Operate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/FaceCamera;->getOperate(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-nez v8, :cond_9

    const-string v8, "ok"

    goto :goto_4

    :cond_9
    const-string v8, "fail"

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-eq v6, v5, :cond_c

    iget v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-eq v6, v1, :cond_c

    iget v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-ne v1, v3, :cond_a

    goto :goto_5

    .line 1114
    :cond_a
    iget v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    if-nez v1, :cond_b

    .line 1115
    monitor-exit v0

    return v5

    .line 1117
    :cond_b
    monitor-exit v0

    return v4

    .line 1113
    :cond_c
    :goto_5
    monitor-exit v0

    return v2

    .line 1145
    :goto_6
    return v5

    .line 1147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cloneByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "original"    # Ljava/nio/ByteBuffer;

    .line 361
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 362
    .local v0, "clone":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 363
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 364
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 365
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 366
    return-object v0
.end method

.method private closeCamera()V
    .locals 5

    .line 1050
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1051
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    const-string v0, "FaceCamera"

    const-string v1, "Lock not released, recycle resources now"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 1054
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->stopBackgroundThread()V

    .line 1055
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1058
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1060
    :try_start_1
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1065
    :goto_0
    goto :goto_1

    .line 1063
    :catch_0
    move-exception v0

    .line 1064
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "FaceCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abort capture IllegalStateException error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1

    .line 1061
    :catch_1
    move-exception v0

    .line 1062
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "FaceCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abort capture CameraAccessException error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_0

    .line 1066
    :goto_1
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 1067
    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 1069
    :cond_1
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1071
    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1076
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    .line 1073
    :catch_2
    move-exception v0

    .line 1076
    :cond_2
    :goto_2
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1077
    nop

    .line 1078
    return-void
.end method

.method private closeImageReader()V
    .locals 3

    .line 969
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReaderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 970
    :try_start_0
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 971
    const-string v1, "FaceCamera"

    const-string v2, "Close image surface."

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 973
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReader:Landroid/media/ImageReader;

    .line 975
    :cond_0
    monitor-exit v0

    .line 976
    return-void

    .line 975
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private configureQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 623
    const-string v0, "FaceCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureQuickPreview mHwBioFaceRunningModeKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mHwBioFaceRunningModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mHwBioFaceRunningModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mHwBioFaceRunningModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Lhuawei/android/security/facerecognition/FaceCamera;->ANDROID_HW_BIO_FACE_RUNNING_MODE_KEY_VALUE:[I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 627
    :cond_0
    return-void
.end method

.method private getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 5
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/lang/String;",
            ")",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation

    .line 602
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 603
    const-string v1, "FaceCamera"

    const-string v2, "[getAvailableSessionKeys] characteristics is null"

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-object v0

    .line 606
    :cond_0
    const/4 v1, 0x0

    .line 607
    .local v1, "keyP2NotificationRequest":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<[I>;"
    nop

    .line 608
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object v2

    .line 609
    .local v2, "requestKeyList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    if-nez v2, :cond_1

    .line 610
    const-string v3, "FaceCamera"

    const-string v4, "[getAvailableSessionKeys] No keys!"

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-object v0

    .line 613
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 614
    .local v3, "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 615
    move-object v1, v3

    .line 618
    .end local v3    # "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    :cond_2
    goto :goto_0

    .line 619
    :cond_3
    return-object v1
.end method

.method private getCurState()Ljava/lang/String;
    .locals 1

    .line 1166
    iget v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1184
    const-string v0, "ERROR_STATE"

    return-object v0

    .line 1182
    :pswitch_0
    const-string v0, "REQUEST_WORKING"

    return-object v0

    .line 1180
    :pswitch_1
    const-string v0, "REQUEST_SENDING"

    return-object v0

    .line 1178
    :pswitch_2
    const-string v0, "SESSION_CREATED"

    return-object v0

    .line 1176
    :pswitch_3
    const-string v0, "SESSION_CREATING"

    return-object v0

    .line 1172
    :pswitch_4
    const-string v0, "CAMERA_OPENING"

    return-object v0

    .line 1170
    :pswitch_5
    const-string v0, "CAMERA_CLOSING"

    return-object v0

    .line 1174
    :pswitch_6
    const-string v0, "CAMERA_READY"

    return-object v0

    .line 1168
    :pswitch_7
    const-string v0, "CAMERA_IDLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDataFromImage(Landroid/graphics/Rect;[Ljava/nio/ByteBuffer;[I[I)[B
    .locals 21
    .param p1, "crop"    # Landroid/graphics/Rect;
    .param p2, "planeArray"    # [Ljava/nio/ByteBuffer;
    .param p3, "rowStrideArray"    # [I
    .param p4, "pixelStrideArray"    # [I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 394
    .local v3, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 396
    .local v4, "height":I
    const/4 v5, 0x0

    .line 397
    .local v5, "data":[B
    const/4 v6, 0x0

    .line 399
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 400
    .local v7, "offset":I
    const/4 v8, 0x0

    .line 401
    .local v8, "offsetU":I
    const/4 v9, 0x0

    .line 402
    .local v9, "offsetV":I
    mul-int v10, v3, v4

    const/16 v11, 0x23

    invoke-static {v11}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v12

    mul-int/2addr v10, v12

    div-int/lit8 v10, v10, 0x8

    new-array v5, v10, [B

    .line 403
    const/4 v10, 0x0

    aget v12, p3, v10

    new-array v12, v12, [B

    .line 404
    .local v12, "rowData":[B
    move v13, v9

    move v9, v8

    move v8, v7

    move-object v7, v6

    move v6, v10

    .local v6, "i":I
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    .local v8, "offset":I
    .local v9, "offsetU":I
    .local v13, "offsetV":I
    :goto_0
    array-length v14, v1

    if-ge v6, v14, :cond_7

    .line 405
    if-nez v6, :cond_0

    move v15, v10

    goto :goto_1

    :cond_0
    const/4 v15, 0x1

    .line 406
    .local v15, "shift":I
    :goto_1
    aget-object v7, v1, v6

    .line 407
    aget v16, p3, v6

    .line 408
    .local v16, "rowStride":I
    aget v14, p4, v6

    .line 410
    .local v14, "pixelStride":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v18

    shr-int v10, v18, v15

    .line 411
    .local v10, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v18

    shr-int v11, v18, v15

    .line 412
    .local v11, "h":I
    iget v1, v0, Landroid/graphics/Rect;->top:I

    shr-int/2addr v1, v15

    mul-int v1, v1, v16

    iget v2, v0, Landroid/graphics/Rect;->left:I

    shr-int/2addr v2, v15

    mul-int/2addr v2, v14

    add-int/2addr v1, v2

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 413
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_2
    if-ge v1, v11, :cond_6

    .line 414
    const/16 v2, 0x23

    invoke-static {v2}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v18

    div-int/lit8 v2, v18, 0x8

    .line 416
    .local v2, "bytesPerPixel":I
    if-ne v14, v2, :cond_1

    .line 418
    mul-int v0, v10, v2

    .line 419
    .local v0, "length":I
    invoke-virtual {v7, v5, v8, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 420
    add-int/2addr v8, v0

    .line 421
    add-int/lit8 v9, v8, 0x1

    .line 422
    move v13, v8

    .line 443
    move/from16 v19, v2

    goto :goto_5

    .line 427
    .end local v0    # "length":I
    :cond_1
    add-int/lit8 v0, v10, -0x1

    mul-int/2addr v0, v14

    add-int/2addr v0, v2

    .line 428
    .restart local v0    # "length":I
    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v12, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 429
    .end local v2    # "bytesPerPixel":I
    .local v19, "bytesPerPixel":I
    const/4 v2, 0x1

    if-ne v6, v2, :cond_3

    .line 430
    move/from16 v17, v9

    const/4 v9, 0x0

    .local v9, "col":I
    .local v17, "offsetU":I
    :goto_3
    if-ge v9, v10, :cond_2

    .line 431
    mul-int v18, v9, v14

    aget-byte v18, v12, v18

    aput-byte v18, v5, v17

    .line 432
    add-int/lit8 v17, v17, 0x2

    .line 430
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 435
    .end local v9    # "col":I
    :cond_2
    move/from16 v9, v17

    .end local v17    # "offsetU":I
    .local v9, "offsetU":I
    :cond_3
    const/4 v2, 0x2

    if-ne v6, v2, :cond_4

    .line 436
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_4
    if-ge v2, v10, :cond_4

    .line 437
    mul-int v17, v2, v14

    aget-byte v17, v12, v17

    aput-byte v17, v5, v13

    .line 438
    add-int/lit8 v13, v13, 0x2

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 443
    .end local v2    # "col":I
    :cond_4
    :goto_5
    add-int/lit8 v2, v11, -0x1

    if-ge v1, v2, :cond_5

    .line 444
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int v2, v2, v16

    sub-int/2addr v2, v0

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 413
    .end local v0    # "length":I
    .end local v19    # "bytesPerPixel":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p1

    goto :goto_2

    .line 404
    .end local v1    # "row":I
    .end local v10    # "w":I
    .end local v11    # "h":I
    .end local v15    # "shift":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v10, 0x0

    const/16 v11, 0x23

    goto/16 :goto_0

    .line 448
    .end local v6    # "i":I
    .end local v14    # "pixelStride":I
    .end local v16    # "rowStride":I
    :cond_7
    return-object v5
.end method

.method public static declared-synchronized getInstance()Lhuawei/android/security/facerecognition/FaceCamera;
    .locals 2

    const-class v0, Lhuawei/android/security/facerecognition/FaceCamera;

    monitor-enter v0

    .line 459
    :try_start_0
    sget-object v1, Lhuawei/android/security/facerecognition/FaceCamera;->sInstance:Lhuawei/android/security/facerecognition/FaceCamera;

    if-nez v1, :cond_0

    .line 460
    new-instance v1, Lhuawei/android/security/facerecognition/FaceCamera;

    invoke-direct {v1}, Lhuawei/android/security/facerecognition/FaceCamera;-><init>()V

    sput-object v1, Lhuawei/android/security/facerecognition/FaceCamera;->sInstance:Lhuawei/android/security/facerecognition/FaceCamera;

    .line 462
    :cond_0
    sget-object v1, Lhuawei/android/security/facerecognition/FaceCamera;->sInstance:Lhuawei/android/security/facerecognition/FaceCamera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getOperate(I)Ljava/lang/String;
    .locals 1
    .param p1, "operation"    # I

    .line 1151
    packed-switch p1, :pswitch_data_0

    .line 1161
    const-string v0, "ERROR_OP"

    return-object v0

    .line 1159
    :pswitch_0
    const-string v0, "OP_CLOSE_CAMERA"

    return-object v0

    .line 1157
    :pswitch_1
    const-string v0, "OP_SEND_REQUEST"

    return-object v0

    .line 1155
    :pswitch_2
    const-string v0, "OP_CREATE_SESSION"

    return-object v0

    .line 1153
    :pswitch_3
    const-string v0, "OP_OPEN_CAMERA"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleMessage(I)V
    .locals 1
    .param p1, "msgType"    # I

    .line 979
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lhuawei/android/security/facerecognition/FaceCamera;->handleMessage(II)V

    .line 980
    return-void
.end method

.method private handleMessage(II)V
    .locals 8
    .param p1, "msgType"    # I
    .param p2, "msgCode"    # I

    .line 991
    const/16 v0, 0x14

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1029
    :pswitch_0
    const-string v4, "FaceCamera"

    const-string v5, "MSG_CREATE_SESSION_FAILED"

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    new-instance v4, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    new-instance v5, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    new-array v1, v1, [J

    const-wide/16 v6, 0x3ec

    aput-wide v6, v1, v3

    invoke-direct {v5, v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    invoke-direct {v4, v5}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    invoke-static {v4, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 1033
    goto/16 :goto_0

    .line 1023
    :pswitch_1
    const-string v4, "FaceCamera"

    const-string v5, "MSG_CREATE_SESSION_OK"

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    new-instance v4, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    new-instance v5, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    new-array v1, v1, [J

    const-wide/16 v6, 0x3eb

    aput-wide v6, v1, v3

    invoke-direct {v5, v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    invoke-direct {v4, v5}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    invoke-static {v4, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 1027
    goto/16 :goto_0

    .line 1020
    :pswitch_2
    const-string v0, "FaceCamera"

    const-string v1, "MSG_CREATE_SESSION_CAMERA_CLOSED"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    goto/16 :goto_0

    .line 1017
    :pswitch_3
    const-string v0, "FaceCamera"

    const-string v1, "MSG_CAMERA_CLOSED"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    goto/16 :goto_0

    .line 1011
    :pswitch_4
    const-string v0, "FaceCamera"

    const-string v1, "MSG_CAMERA_DISCONNECTED"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    new-instance v1, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    const/4 v4, 0x6

    new-array v3, v3, [J

    invoke-direct {v1, v4, v3}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    invoke-direct {v0, v1}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    invoke-static {v0, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 1015
    goto :goto_0

    .line 1005
    :pswitch_5
    const-string v4, "FaceCamera"

    const-string v5, "MSG_OPEN_CAMERA_ERROR"

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    new-instance v4, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    new-instance v5, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    new-array v1, v1, [J

    const-wide/16 v6, 0x3e9

    aput-wide v6, v1, v3

    invoke-direct {v5, v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    invoke-direct {v4, v5}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    invoke-static {v4, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 1009
    goto :goto_0

    .line 993
    :pswitch_6
    const-string v4, "FaceCamera"

    const-string v5, "MSG_OPEN_CAMERA_TIME_OUT"

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    new-instance v4, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    new-instance v5, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    new-array v1, v1, [J

    const-wide/16 v6, 0x3ea

    aput-wide v6, v1, v3

    invoke-direct {v5, v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    invoke-direct {v4, v5}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    invoke-static {v4, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 997
    goto :goto_0

    .line 999
    :pswitch_7
    const-string v4, "FaceCamera"

    const-string v5, "MSG_OPEN_CAMERA_OK"

    invoke-static {v4, v5}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    new-instance v4, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    new-instance v5, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    new-array v1, v1, [J

    const-wide/16 v6, 0x3e8

    aput-wide v6, v1, v3

    invoke-direct {v5, v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    invoke-direct {v4, v5}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    invoke-static {v4, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 1003
    goto :goto_0

    .line 1035
    :cond_0
    const-string v0, "FaceCamera"

    const-string v4, "MSG_CREATE_REQUEST_OK"

    invoke-static {v0, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    new-instance v0, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;

    new-instance v4, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;

    const/4 v5, 0x5

    new-array v1, v1, [J

    const-wide/16 v6, 0x3ed

    aput-wide v6, v1, v3

    invoke-direct {v4, v5, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeEvent;-><init>(I[J)V

    invoke-direct {v0, v4}, Lhuawei/android/security/facerecognition/base/HwSecurityEventTask;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeEvent;)V

    invoke-static {v0, v2}, Lhuawei/android/security/facerecognition/base/HwSecurityTaskThread;->staticPushTask(Lhuawei/android/security/facerecognition/base/HwSecurityTaskBase;I)V

    .line 1039
    nop

    .line 1043
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private increaseAndCheckImageCount()Z
    .locals 3

    .line 348
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageCount:I

    rem-int/lit8 v1, v1, 0x2

    .line 350
    .local v1, "tmp":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 351
    .end local v1    # "tmp":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isBioFaceRunningSupported()Z
    .locals 6

    .line 911
    iget v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBioFaceRunningSupportMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_1

    .line 913
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lhuawei/android/security/facerecognition/FaceCamera;->ANDROID_HW_BIO_FACE_RUNNING_SUPPORTED:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 914
    .local v0, "supportMode":B
    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput v3, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBioFaceRunningSupportMode:I

    .line 915
    const-string v3, "FaceCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supportMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    .end local v0    # "supportMode":B
    goto :goto_1

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Ljava/lang/Exception;
    iput v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBioFaceRunningSupportMode:I

    .line 918
    const-string v3, "FaceCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get support mode exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBioFaceRunningSupportMode:I

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public static native native_send_image([B)I
.end method

.method private declared-synchronized registerLightSensorListener()V
    .locals 4

    monitor-enter p0

    .line 237
    :try_start_0
    const-string v0, "FaceCamera"

    const-string v1, "registerLightSensorListener"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorDataLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    .line 239
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorManager:Landroid/hardware/SensorManager;

    .line 242
    :cond_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 243
    .local v0, "sensor":Landroid/hardware/Sensor;
    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lhuawei/android/security/facerecognition/FaceCamera;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 236
    .end local v0    # "sensor":Landroid/hardware/Sensor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/security/facerecognition/FaceCamera;
    throw v0
.end method

.method private resetImageCount()V
    .locals 2

    .line 355
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageCountLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageCount:I

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 370
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageExtractorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 372
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 373
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundHandler:Landroid/os/Handler;

    .line 374
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->resetImageCount()V

    .line 376
    :cond_0
    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3

    .line 379
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 382
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 384
    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mBackgroundHandler:Landroid/os/Handler;

    .line 385
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->resetImageCount()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "FaceCamera"

    const-string v2, "Stop background thread occurs InterruptedException"

    invoke-static {v1, v2}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized unRegisterLightSensorListener()V
    .locals 2

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lhuawei/android/security/facerecognition/FaceCamera;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorManager:Landroid/hardware/SensorManager;

    .line 250
    const-string v0, "FaceCamera"

    const-string v1, "unRegisterLightSensorListener"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_0
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lhuawei/android/security/facerecognition/FaceCamera;
    throw v0
.end method

.method private updateStateTo(I)Z
    .locals 6
    .param p1, "toState"    # I

    .line 1088
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->getCurState()Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "oldState":Ljava/lang/String;
    iget v2, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    .line 1100
    iput p1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    .line 1101
    const-string v2, "FaceCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->getCurState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    monitor-exit v0

    return v4

    .line 1092
    :cond_0
    if-eqz p1, :cond_1

    .line 1093
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1095
    :cond_1
    iput p1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mState:I

    .line 1096
    const-string v2, "FaceCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->getCurState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    monitor-exit v0

    return v4

    .line 1104
    .end local v1    # "oldState":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()Z
    .locals 10

    .line 925
    const-string v0, "FaceCamera"

    const-string v1, "call close"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 927
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 5. call close camera --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lhuawei/android/security/facerecognition/FaceCamera;->checkOperation(I)I

    move-result v2

    .line 930
    .local v2, "checkOpRlt":I
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 931
    return v3

    .line 933
    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    .line 934
    return v5

    .line 937
    :cond_1
    iget-boolean v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSoftlightOn:Z

    if-eqz v6, :cond_2

    .line 938
    const-string v6, "FaceCamera"

    const-string v7, "Close Softlight."

    invoke-static {v6, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :try_start_0
    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 941
    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v7, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 942
    iput-boolean v5, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSoftlightOn:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    goto :goto_0

    .line 943
    :catch_0
    move-exception v6

    .line 944
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "FaceCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Close Softlight error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-direct {p0, v4}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 948
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->unRegisterLightSensorListener()V

    .line 949
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->closeImageReader()V

    .line 950
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->closeCamera()V

    .line 953
    :try_start_1
    iget-object v4, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x1f4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 954
    const-string v4, "FaceCamera"

    const-string v6, "Close Camera out of time."

    invoke-static {v4, v6}, Lhuawei/android/security/facerecognition/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 959
    :cond_3
    :goto_1
    invoke-direct {p0, v5}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 960
    iget-object v4, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 961
    goto :goto_2

    .line 959
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 956
    :catch_1
    move-exception v4

    .line 957
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v6, "FaceCamera"

    const-string v7, "InterruptedException occurs on closing."

    invoke-static {v6, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 962
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 963
    .local v4, "current2":J
    const-string v6, "PerformanceTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time 5.1. call-back close camera --- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    return v3

    .line 959
    .end local v4    # "current2":J
    :goto_3
    invoke-direct {p0, v5}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 960
    iget-object v4, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3
.end method

.method public createPreviewRequest(II)I
    .locals 13
    .param p1, "requestType"    # I
    .param p2, "flag"    # I

    .line 791
    const-string v0, "FaceCamera"

    const-string v1, "call createPreviewRequest"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 793
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 4. call create request --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_0

    goto/16 :goto_b

    .line 798
    :cond_0
    invoke-direct {p0, v3}, Lhuawei/android/security/facerecognition/FaceCamera;->checkOperation(I)I

    move-result v2

    .line 799
    .local v2, "checkOpRlt":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 800
    return v2

    .line 802
    :cond_1
    iput-boolean v4, p0, Lhuawei/android/security/facerecognition/FaceCamera;->printTimeLog:Z

    .line 804
    const/4 v5, 0x1

    .line 805
    .local v5, "bioFaceMode":I
    const/4 v6, 0x0

    if-nez p1, :cond_2

    .line 806
    :try_start_0
    iput-boolean v4, p0, Lhuawei/android/security/facerecognition/FaceCamera;->isEnrolling:Z

    goto :goto_0

    .line 903
    .end local v5    # "bioFaceMode":I
    :catch_0
    move-exception v4

    goto/16 :goto_7

    .line 901
    :catch_1
    move-exception v3

    goto/16 :goto_8

    .line 898
    :catch_2
    move-exception v4

    goto/16 :goto_a

    .line 807
    .restart local v5    # "bioFaceMode":I
    :cond_2
    if-ne p1, v4, :cond_4

    .line 808
    iput-boolean v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->isEnrolling:Z

    .line 809
    if-ne p2, v4, :cond_3

    .line 810
    const/4 v5, 0x3

    goto :goto_0

    .line 812
    :cond_3
    const/4 v5, 0x2

    .line 816
    :cond_4
    :goto_0
    sget v7, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 817
    if-ne v4, v5, :cond_5

    .line 818
    const/4 v5, 0x4

    goto :goto_1

    .line 820
    :cond_5
    const/4 v5, 0x5

    .line 824
    :cond_6
    :goto_1
    sget v7, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    if-eqz v7, :cond_7

    .line 825
    const-string v7, "FaceCamera"

    const-string v9, "camera mode set mode:%d"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v7, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v9, Lhuawei/android/security/facerecognition/FaceCamera;->ANDROID_HW_BIO_FACE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 829
    :cond_7
    sget v7, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    if-ne v7, v8, :cond_a

    .line 830
    const-string v7, "FaceCamera"

    const-string v9, "Range : set range"

    invoke-static {v7, v9}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/4 v7, 0x0

    .line 836
    .local v7, "targetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mIsStructuredLightSupported:Ljava/lang/Byte;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mIsStructuredLightSupported:Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    if-ne v9, v4, :cond_8

    .line 838
    const/16 v9, 0x1e

    .line 839
    .local v9, "fpsForEnroll":I
    const/16 v10, 0x3c

    .local v10, "fpsForAuth":I
    goto :goto_2

    .line 842
    .end local v9    # "fpsForEnroll":I
    .end local v10    # "fpsForAuth":I
    :cond_8
    const/16 v9, 0x1e

    .line 843
    .restart local v9    # "fpsForEnroll":I
    const/16 v10, 0x1e

    .line 846
    .restart local v10    # "fpsForAuth":I
    :goto_2
    if-ne v8, v5, :cond_9

    .line 847
    new-instance v8, Landroid/util/Range;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object v7, v8

    goto :goto_3

    .line 849
    :cond_9
    new-instance v8, Landroid/util/Range;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object v7, v8

    .line 851
    :goto_3
    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v8, v11, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 852
    const-string v8, "FaceCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Range : set to success."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .end local v7    # "targetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v9    # "fpsForEnroll":I
    .end local v10    # "fpsForAuth":I
    goto/16 :goto_5

    :cond_a
    sget v7, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    if-eqz v7, :cond_b

    sget v7, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    if-ne v7, v4, :cond_10

    .line 854
    :cond_b
    const/4 v7, 0x0

    .line 855
    .restart local v7    # "targetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->fpsRanges:[Landroid/util/Range;

    if-eqz v8, :cond_f

    .line 856
    const-string v8, "FaceCamera"

    const-string v9, "Range : set range"

    invoke-static {v8, v9}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    move-object v8, v7

    move v7, v6

    .local v7, "index":I
    .local v8, "targetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :goto_4
    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->fpsRanges:[Landroid/util/Range;

    array-length v9, v9

    if-ge v7, v9, :cond_e

    .line 860
    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->fpsRanges:[Landroid/util/Range;

    aget-object v9, v9, v7

    .line 861
    .local v9, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_d

    if-eqz v8, :cond_c

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v10, v11, :cond_d

    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v10, v11, :cond_d

    .line 862
    :cond_c
    move-object v8, v9

    .line 859
    .end local v9    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 866
    .end local v7    # "index":I
    :cond_e
    move-object v7, v8

    .end local v8    # "targetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local v7, "targetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_f
    if-eqz v7, :cond_10

    .line 867
    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v8, v9, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 868
    const-string v8, "FaceCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Range : set to success."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/util/Range;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    .end local v7    # "targetFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_10
    :goto_5
    iget-object v7, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 874
    sget-boolean v7, Lhuawei/android/security/facerecognition/FaceCamera;->IS_SOFTLIGHT_ALLOWED:Z

    if-eqz v7, :cond_12

    iget-object v7, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 876
    sget-object v6, Lhuawei/android/security/facerecognition/FaceCamera;->mSensorDataLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v7, 0x1e

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 877
    const-string v6, "FaceCamera"

    const-string v7, "Wait light sensor data out of time."

    invoke-static {v6, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 878
    :cond_11
    sget v6, Lhuawei/android/security/facerecognition/FaceCamera;->mCurrentLux:F

    const/high16 v7, 0x40000000    # 2.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_13

    .line 879
    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 880
    const-string v6, "FaceCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lux : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lhuawei/android/security/facerecognition/FaceCamera;->mCurrentLux:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v6, "FaceCamera"

    const-string v7, "Dark scene, open Softlight."

    invoke-static {v6, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iput-boolean v4, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSoftlightOn:Z

    goto :goto_6

    .line 885
    :cond_12
    iput-boolean v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSoftlightOn:Z

    .line 886
    const-string v6, "FaceCamera"

    const-string v7, "Softlight is not supported or allowed."

    invoke-static {v6, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :cond_13
    :goto_6
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->isBioFaceRunningSupported()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 891
    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v7, Lhuawei/android/security/facerecognition/FaceCamera;->HUAWEI_BIO_RUNNING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 895
    :cond_14
    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v6}, Lhuawei/android/security/facerecognition/FaceCamera;->configureQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 896
    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    .line 897
    .local v6, "mPreviewRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v7, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v8, 0x0

    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6, v8, v9}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "bioFaceMode":I
    .end local v6    # "mPreviewRequest":Landroid/hardware/camera2/CaptureRequest;
    goto :goto_9

    .line 903
    :goto_7
    nop

    .line 904
    .local v4, "ex":Ljava/lang/RuntimeException;
    const-string v5, "FaceCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request occurs un-handle error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return v3

    .line 901
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :goto_8
    nop

    .line 902
    .local v3, "ec":Ljava/lang/InterruptedException;
    const-string v5, "FaceCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InterruptedException occurs on getting mSensorDataLock."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .end local v3    # "ec":Ljava/lang/InterruptedException;
    :goto_9
    nop

    .line 907
    return v4

    .line 898
    :goto_a
    nop

    .line 899
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "FaceCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request occurs un-handle error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    return v3

    .line 796
    .end local v2    # "checkOpRlt":I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_b
    return v3
.end method

.method public createPreviewSession(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)I"
        }
    .end annotation

    .line 724
    .local p1, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    const-string v0, "FaceCamera"

    const-string v1, "call createPreviewSession"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 726
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 3. call create session --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lhuawei/android/security/facerecognition/FaceCamera;->checkOperation(I)I

    move-result v3

    .line 729
    .local v3, "checkOpRlt":I
    if-eq v3, v2, :cond_0

    .line 730
    return v3

    .line 732
    :cond_0
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 735
    const/4 v4, 0x2

    :try_start_0
    iget-object v5, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v5

    iput-object v5, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 737
    iget-object v5, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReaderLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    const/16 v6, 0x280

    const/16 v7, 0x1e0

    const/16 v8, 0x23

    :try_start_1
    invoke-static {v6, v7, v8, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v6

    iput-object v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReader:Landroid/media/ImageReader;

    .line 740
    iget-object v6, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReader:Landroid/media/ImageReader;

    iget-object v7, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 742
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v6, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v7, "tmpSurfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/Surface;

    .line 746
    .local v9, "singleSurface":Landroid/view/Surface;
    new-instance v10, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v10, v9}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 747
    .local v10, "previewConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v11, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v11, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 749
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .end local v9    # "singleSurface":Landroid/view/Surface;
    .end local v10    # "previewConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_0

    .line 752
    :cond_1
    sget v8, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 753
    :cond_2
    new-instance v8, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 754
    .local v8, "captureConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v10, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 757
    const-string v9, "FaceCamera"

    const-string v10, "add image surface."

    invoke-static {v9, v10}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    .end local v8    # "captureConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_3
    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v8}, Lhuawei/android/security/facerecognition/FaceCamera;->configureQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 761
    new-instance v8, Landroid/hardware/camera2/params/SessionConfiguration;

    const/4 v9, 0x0

    new-instance v10, Lhuawei/android/security/facerecognition/FaceCamera$HandlerExecutor;

    iget-object v11, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-direct {v10, v11}, Lhuawei/android/security/facerecognition/FaceCamera$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v11, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mSessionStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-direct {v8, v9, v6, v10, v11}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 764
    .local v8, "sessionConfigByOutput":Landroid/hardware/camera2/params/SessionConfiguration;
    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 765
    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v9, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 766
    .end local v6    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v7    # "tmpSurfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    .end local v8    # "sessionConfigByOutput":Landroid/hardware/camera2/params/SessionConfiguration;
    monitor-exit v5

    .line 773
    nop

    .line 774
    return v2

    .line 766
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 770
    :catch_0
    move-exception v2

    .line 771
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v5, "FaceCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preview occurs un-handle error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    return v4

    .line 767
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 768
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "FaceCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preview occurs un-handle error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return v4
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 592
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mContext:Landroid/content/Context;

    .line 593
    return-void
.end method

.method public openCamera(I)I
    .locals 13
    .param p1, "requestType"    # I

    .line 630
    const-string v0, "FaceCamera"

    const-string v1, "call openCamera"

    invoke-static {v0, v1}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 632
    .local v0, "current":J
    const-string v2, "PerformanceTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time 2. call open camera --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lhuawei/android/security/facerecognition/FaceCamera;->checkOperation(I)I

    move-result v3

    .line 635
    .local v3, "checkOpRlt":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 636
    return v3

    .line 638
    :cond_0
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 639
    iget-object v5, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mContext:Landroid/content/Context;

    const-string v6, "camera"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager;

    .line 640
    .local v5, "manager":Landroid/hardware/camera2/CameraManager;
    sget-boolean v6, Lhuawei/android/security/facerecognition/FaceCamera;->IS_SOFTLIGHT_ALLOWED:Z

    if-eqz v6, :cond_1

    const-string v6, "com.android.systemui"

    iget-object v7, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 641
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->registerLightSensorListener()V

    .line 645
    :cond_1
    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v7

    .line 646
    .local v7, "cameraList":[Ljava/lang/String;
    if-eqz v7, :cond_9

    array-length v8, v7

    if-nez v8, :cond_2

    goto/16 :goto_3

    .line 652
    :cond_2
    array-length v8, v7

    sub-int/2addr v8, v4

    .local v8, "index":I
    :goto_0
    if-lez v8, :cond_5

    .line 653
    aget-object v9, v7, v8

    .line 654
    .local v9, "cameraId":Ljava/lang/String;
    nop

    .line 655
    invoke-virtual {v5, v9}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v10

    .line 658
    .local v10, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 659
    .local v11, "facing":Ljava/lang/Integer;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eqz v12, :cond_3

    .line 660
    goto :goto_1

    .line 662
    :cond_3
    iput-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraId:Ljava/lang/String;

    .line 663
    iput-object v10, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 664
    goto :goto_2

    .line 652
    .end local v9    # "cameraId":Ljava/lang/String;
    .end local v10    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v11    # "facing":Ljava/lang/Integer;
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 666
    .end local v8    # "index":I
    :cond_5
    :goto_2
    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v9, 0x12c

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 668
    invoke-direct {p0, v4}, Lhuawei/android/security/facerecognition/FaceCamera;->handleMessage(I)V

    .line 669
    invoke-direct {p0, v2}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 670
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->unRegisterLightSensorListener()V

    .line 671
    const-string v4, "FaceCamera"

    const-string v8, "Query CameraOpenCloseLock Timeout!"

    invoke-static {v4, v8}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    return v6

    .line 675
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCurrentTime:J

    .line 676
    sget v8, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    if-eqz v8, :cond_7

    .line 677
    const-string v8, "FaceCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "call setSecureFaceMode. requestType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->getInstance()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    move-result-object v8

    shl-int/lit8 v9, p1, 0x1

    or-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;->setSecureFaceMode(I)I

    move-result v8

    .line 679
    .local v8, "ret":I
    if-eqz v8, :cond_7

    .line 680
    const-string v4, "FaceCamera"

    const-string v9, "setSecureMode failed"

    invoke-static {v4, v9}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-direct {p0, v6}, Lhuawei/android/security/facerecognition/FaceCamera;->handleMessage(I)V

    .line 682
    invoke-direct {p0, v2}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 683
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->unRegisterLightSensorListener()V

    .line 684
    iget-object v4, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 685
    return v6

    .line 688
    .end local v8    # "ret":I
    :cond_7
    const-string v8, "FaceCamera"

    const-string v9, "call manager.openCamera"

    invoke-static {v8, v9}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraId:Ljava/lang/String;

    iget-object v9, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v10, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8, v9, v10}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 690
    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/util/Range;

    iput-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->fpsRanges:[Landroid/util/Range;

    .line 693
    sget v8, Lhuawei/android/security/facerecognition/FaceCamera;->SUPPORT_FACE_MODE:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 695
    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    new-instance v9, Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v10, "com.huawei.device.capabilities.hwStructuredLightSupported"

    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v9, v10, v11}, Landroid/hardware/camera2/CameraCharacteristics$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 696
    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    iput-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mIsStructuredLightSupported:Ljava/lang/Byte;

    .line 697
    const-string v8, "FaceCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mIsStructuredLightSupported "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mIsStructuredLightSupported:Ljava/lang/Byte;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lhuawei/android/security/facerecognition/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_8
    iget-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v9, "com.huawei.capture.metadata.bioFaceRunningMode"

    invoke-direct {p0, v8, v9}, Lhuawei/android/security/facerecognition/FaceCamera;->getAvailableSessionKeys(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v8

    iput-object v8, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mHwBioFaceRunningModeKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 703
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->startBackgroundThread()V

    .line 719
    .end local v7    # "cameraList":[Ljava/lang/String;
    nop

    .line 720
    return v4

    .line 647
    .restart local v7    # "cameraList":[Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-direct {p0, v2}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 648
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->unRegisterLightSensorListener()V

    .line 649
    const-string v4, "FaceCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get cameraList error: cameraList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    return v6

    .line 711
    .end local v7    # "cameraList":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 712
    .local v4, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->unRegisterLightSensorListener()V

    .line 713
    invoke-direct {p0, v2}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 714
    const-string v2, "FaceCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Occurs un-handle error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 716
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 717
    return v6

    .line 704
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 705
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lhuawei/android/security/facerecognition/FaceCamera;->unRegisterLightSensorListener()V

    .line 706
    const-string v7, "FaceCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Occurs error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhuawei/android/security/facerecognition/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-direct {p0, v2}, Lhuawei/android/security/facerecognition/FaceCamera;->updateStateTo(I)Z

    .line 708
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 709
    iget-object v2, p0, Lhuawei/android/security/facerecognition/FaceCamera;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 710
    return v6
.end method
