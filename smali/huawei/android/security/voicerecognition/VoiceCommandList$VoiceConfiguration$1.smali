.class Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration$1;
.super Ljava/lang/Object;
.source "VoiceCommandList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    new-instance v0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;-><init>(Landroid/os/Parcel;Lhuawei/android/security/voicerecognition/VoiceCommandList$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
    .locals 1
    .param p1, "size"    # I

    .line 169
    new-array v0, p1, [Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration$1;->newArray(I)[Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;

    move-result-object p1

    return-object p1
.end method
