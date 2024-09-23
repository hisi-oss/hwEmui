.class Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder$SingletonInstance;
.super Ljava/lang/Object;
.source "FaceRecognizeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonInstance"
.end annotation


# static fields
.field private static final instance:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 684
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;-><init>()V

    sput-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder$SingletonInstance;->instance:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;
    .locals 1

    .line 683
    sget-object v0, Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder$SingletonInstance;->instance:Lhuawei/android/security/facerecognition/FaceRecognizeManagerImpl$CallbackHolder;

    return-object v0
.end method
