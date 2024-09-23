.class public Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;
.super Ljava/lang/Object;
.source "VoiceCommandList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhuawei/android/security/voicerecognition/VoiceCommandList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceConfiguration"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlgoId:I

.field public mCallFlag:I

.field public mCommandString:Ljava/lang/String;

.field public mHeadsetId:I

.field public mVoiceTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration$1;

    invoke-direct {v0}, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration$1;-><init>()V

    sput-object v0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .param p1, "headsetId"    # I
    .param p2, "commandStr"    # Ljava/lang/String;
    .param p3, "algoId"    # I
    .param p4, "voiceTag"    # Ljava/lang/String;
    .param p5, "callflag"    # I

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCommandString:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mVoiceTag:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCallFlag:I

    .line 145
    iput p1, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mHeadsetId:I

    .line 146
    iput-object p2, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCommandString:Ljava/lang/String;

    .line 147
    iput p3, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mAlgoId:I

    .line 148
    iput-object p4, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mVoiceTag:Ljava/lang/String;

    .line 149
    iput p5, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCallFlag:I

    .line 150
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCommandString:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mVoiceTag:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCallFlag:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mHeadsetId:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCommandString:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mAlgoId:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mVoiceTag:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCallFlag:I

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lhuawei/android/security/voicerecognition/VoiceCommandList$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lhuawei/android/security/voicerecognition/VoiceCommandList$1;

    .line 136
    invoke-direct {p0, p1}, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public isAlgoIdEquals(I)Z
    .locals 1
    .param p1, "algoId"    # I

    .line 204
    iget v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mAlgoId:I

    if-ne v0, p1, :cond_0

    .line 205
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetIdEquals(I)Z
    .locals 1
    .param p1, "headsetId"    # I

    .line 197
    iget v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mHeadsetId:I

    if-ne v0, p1, :cond_0

    .line 198
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceConfiguration{mHeadsetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mHeadsetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCommandString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCommandString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlgoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mAlgoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVoiceTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mVoiceTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCallFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 180
    iget v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mHeadsetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCommandString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mAlgoId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mVoiceTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lhuawei/android/security/voicerecognition/VoiceCommandList$VoiceConfiguration;->mCallFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    return-void
.end method
