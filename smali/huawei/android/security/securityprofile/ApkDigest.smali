.class public Lhuawei/android/security/securityprofile/ApkDigest;
.super Ljava/lang/Object;
.source "ApkDigest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/android/security/securityprofile/ApkDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apkSignatureScheme:Ljava/lang/String;

.field public base64Digest:Ljava/lang/String;

.field public digestAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lhuawei/android/security/securityprofile/ApkDigest$1;

    invoke-direct {v0}, Lhuawei/android/security/securityprofile/ApkDigest$1;-><init>()V

    sput-object v0, Lhuawei/android/security/securityprofile/ApkDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/securityprofile/ApkDigest;->apkSignatureScheme:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/securityprofile/ApkDigest;->digestAlgorithm:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/securityprofile/ApkDigest;->base64Digest:Ljava/lang/String;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lhuawei/android/security/securityprofile/ApkDigest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lhuawei/android/security/securityprofile/ApkDigest$1;

    .line 6
    invoke-direct {p0, p1}, Lhuawei/android/security/securityprofile/ApkDigest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "apkSignatureScheme"    # Ljava/lang/String;
    .param p2, "digestAlgorithm"    # Ljava/lang/String;
    .param p3, "base64Digest"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lhuawei/android/security/securityprofile/ApkDigest;->apkSignatureScheme:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lhuawei/android/security/securityprofile/ApkDigest;->digestAlgorithm:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lhuawei/android/security/securityprofile/ApkDigest;->base64Digest:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 26
    iget-object v0, p0, Lhuawei/android/security/securityprofile/ApkDigest;->apkSignatureScheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lhuawei/android/security/securityprofile/ApkDigest;->digestAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lhuawei/android/security/securityprofile/ApkDigest;->base64Digest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    return-void
.end method
