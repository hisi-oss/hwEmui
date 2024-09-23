.class Lhuawei/android/security/facerecognition/FaceRecognition$1;
.super Ljava/lang/Object;
.source "FaceRecognition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/facerecognition/FaceRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lhuawei/android/security/facerecognition/FaceRecognition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lhuawei/android/security/facerecognition/FaceRecognition;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 71
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognition;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lhuawei/android/security/facerecognition/FaceRecognition;-><init>(Landroid/os/Parcel;Lhuawei/android/security/facerecognition/FaceRecognition$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/FaceRecognition$1;->createFromParcel(Landroid/os/Parcel;)Lhuawei/android/security/facerecognition/FaceRecognition;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lhuawei/android/security/facerecognition/FaceRecognition;
    .locals 1
    .param p1, "size"    # I

    .line 75
    new-array v0, p1, [Lhuawei/android/security/facerecognition/FaceRecognition;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lhuawei/android/security/facerecognition/FaceRecognition$1;->newArray(I)[Lhuawei/android/security/facerecognition/FaceRecognition;

    move-result-object p1

    return-object p1
.end method
