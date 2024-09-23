.class Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$SingletonInstance;
.super Ljava/lang/Object;
.source "FaceRecognizeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonInstance"
.end annotation


# static fields
.field private static final instance:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 284
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;-><init>(Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$1;)V

    sput-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$SingletonInstance;->instance:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;
    .locals 1

    .line 283
    sget-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder$SingletonInstance;->instance:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$ServiceHolder;

    return-object v0
.end method
