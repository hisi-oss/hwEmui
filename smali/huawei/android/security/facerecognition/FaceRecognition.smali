.class public Lhuawei/android/security/facerecognition/FaceRecognition;
.super Ljava/lang/Object;
.source "FaceRecognition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/android/security/facerecognition/FaceRecognition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceId:J

.field private mFaceId:I

.field private mName:Ljava/lang/CharSequence;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lhuawei/android/security/facerecognition/FaceRecognition$1;

    invoke-direct {v0}, Lhuawei/android/security/facerecognition/FaceRecognition$1;-><init>()V

    sput-object v0, Lhuawei/android/security/facerecognition/FaceRecognition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mName:Ljava/lang/CharSequence;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mUserId:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mFaceId:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mDeviceId:J

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lhuawei/android/security/facerecognition/FaceRecognition$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lhuawei/android/security/facerecognition/FaceRecognition$1;

    .line 10
    invoke-direct {p0, p1}, Lhuawei/android/security/facerecognition/FaceRecognition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IIJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "userId"    # I
    .param p3, "faceId"    # I
    .param p4, "deviceId"    # J

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mName:Ljava/lang/CharSequence;

    .line 18
    iput p2, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mUserId:I

    .line 19
    iput p3, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mFaceId:I

    .line 20
    iput-wide p4, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mDeviceId:J

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mDeviceId:J

    return-wide v0
.end method

.method public getFaceId()I
    .locals 1

    .line 42
    iget v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mFaceId:I

    return v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 34
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 49
    iget v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mUserId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget-object v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mFaceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-wide v0, p0, Lhuawei/android/security/facerecognition/FaceRecognition;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    return-void
.end method
