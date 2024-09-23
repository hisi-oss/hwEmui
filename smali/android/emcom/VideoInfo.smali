.class public Landroid/emcom/VideoInfo;
.super Ljava/lang/Object;
.source "VideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/emcom/VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appName:Ljava/lang/String;

.field public fullDelay:I

.field public hostName:Ljava/lang/String;

.field public result:Z

.field public srDelay:I

.field public streamDur:I

.field public times:S

.field public totalLen:I

.field public uVMos:B

.field public videoDataRate:I

.field public videoEndTime:I

.field public videoStartDate:I

.field public videoStartTime:I

.field public videoTerminateFlag:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroid/emcom/VideoInfo$1;

    invoke-direct {v0}, Landroid/emcom/VideoInfo$1;-><init>()V

    sput-object v0, Landroid/emcom/VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/emcom/VideoInfo;->appName:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->srDelay:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->fullDelay:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/emcom/VideoInfo;->times:S

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->totalLen:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->streamDur:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->videoDataRate:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/VideoInfo;->videoTerminateFlag:B

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/VideoInfo;->uVMos:B

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/emcom/VideoInfo;->hostName:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->videoStartDate:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->videoStartTime:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->videoEndTime:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/emcom/VideoInfo;->result:Z

    .line 45
    return-void
.end method


# virtual methods
.method public final copyFrom(Landroid/emcom/VideoInfo;)V
    .locals 1
    .param p1, "o"    # Landroid/emcom/VideoInfo;

    .line 101
    iget-object v0, p1, Landroid/emcom/VideoInfo;->appName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/VideoInfo;->appName:Ljava/lang/String;

    .line 102
    iget v0, p1, Landroid/emcom/VideoInfo;->srDelay:I

    iput v0, p0, Landroid/emcom/VideoInfo;->srDelay:I

    .line 103
    iget v0, p1, Landroid/emcom/VideoInfo;->fullDelay:I

    iput v0, p0, Landroid/emcom/VideoInfo;->fullDelay:I

    .line 104
    iget-short v0, p1, Landroid/emcom/VideoInfo;->times:S

    iput-short v0, p0, Landroid/emcom/VideoInfo;->times:S

    .line 105
    iget v0, p1, Landroid/emcom/VideoInfo;->totalLen:I

    iput v0, p0, Landroid/emcom/VideoInfo;->totalLen:I

    .line 106
    iget v0, p1, Landroid/emcom/VideoInfo;->streamDur:I

    iput v0, p0, Landroid/emcom/VideoInfo;->streamDur:I

    .line 107
    iget v0, p1, Landroid/emcom/VideoInfo;->videoDataRate:I

    iput v0, p0, Landroid/emcom/VideoInfo;->videoDataRate:I

    .line 108
    iget-byte v0, p1, Landroid/emcom/VideoInfo;->videoTerminateFlag:B

    iput-byte v0, p0, Landroid/emcom/VideoInfo;->videoTerminateFlag:B

    .line 109
    iget-byte v0, p1, Landroid/emcom/VideoInfo;->uVMos:B

    iput-byte v0, p0, Landroid/emcom/VideoInfo;->uVMos:B

    .line 110
    iget-object v0, p1, Landroid/emcom/VideoInfo;->hostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/emcom/VideoInfo;->hostName:Ljava/lang/String;

    .line 111
    iget v0, p1, Landroid/emcom/VideoInfo;->videoStartDate:I

    iput v0, p0, Landroid/emcom/VideoInfo;->videoStartDate:I

    .line 112
    iget v0, p1, Landroid/emcom/VideoInfo;->videoStartTime:I

    iput v0, p0, Landroid/emcom/VideoInfo;->videoStartTime:I

    .line 113
    iget v0, p1, Landroid/emcom/VideoInfo;->videoEndTime:I

    iput v0, p0, Landroid/emcom/VideoInfo;->videoEndTime:I

    .line 114
    iget-boolean v0, p1, Landroid/emcom/VideoInfo;->result:Z

    iput-boolean v0, p0, Landroid/emcom/VideoInfo;->result:Z

    .line 115
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/emcom/VideoInfo;->appName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Landroid/emcom/VideoInfo;->srDelay:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Landroid/emcom/VideoInfo;->fullDelay:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/emcom/VideoInfo;->times:S

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Landroid/emcom/VideoInfo;->totalLen:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput v0, p0, Landroid/emcom/VideoInfo;->streamDur:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->videoDataRate:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/VideoInfo;->videoTerminateFlag:B

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/emcom/VideoInfo;->uVMos:B

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/emcom/VideoInfo;->hostName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->videoStartDate:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->videoStartTime:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/emcom/VideoInfo;->videoEndTime:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/emcom/VideoInfo;->result:Z

    .line 98
    return-void
.end method

.method public recycle()V
    .locals 3

    .line 154
    const-string v0, ""

    iput-object v0, p0, Landroid/emcom/VideoInfo;->appName:Ljava/lang/String;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Landroid/emcom/VideoInfo;->srDelay:I

    .line 156
    iput v0, p0, Landroid/emcom/VideoInfo;->fullDelay:I

    .line 157
    iput-short v0, p0, Landroid/emcom/VideoInfo;->times:S

    .line 158
    iput v0, p0, Landroid/emcom/VideoInfo;->totalLen:I

    .line 159
    iput v0, p0, Landroid/emcom/VideoInfo;->streamDur:I

    .line 160
    iput v0, p0, Landroid/emcom/VideoInfo;->videoDataRate:I

    .line 161
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/emcom/VideoInfo;->videoTerminateFlag:B

    .line 162
    const/4 v1, 0x0

    iput-byte v1, p0, Landroid/emcom/VideoInfo;->uVMos:B

    .line 163
    const-string v2, ""

    iput-object v2, p0, Landroid/emcom/VideoInfo;->hostName:Ljava/lang/String;

    .line 164
    iput v1, p0, Landroid/emcom/VideoInfo;->videoStartDate:I

    .line 165
    iput v1, p0, Landroid/emcom/VideoInfo;->videoStartTime:I

    .line 166
    iput v1, p0, Landroid/emcom/VideoInfo;->videoEndTime:I

    .line 167
    iput-boolean v0, p0, Landroid/emcom/VideoInfo;->result:Z

    .line 168
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "hash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ",app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Landroid/emcom/VideoInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ",srDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v1, p0, Landroid/emcom/VideoInfo;->srDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ",fullDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p0, Landroid/emcom/VideoInfo;->fullDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ",times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-short v1, p0, Landroid/emcom/VideoInfo;->times:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ",totalLen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Landroid/emcom/VideoInfo;->totalLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ",streamDur: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Landroid/emcom/VideoInfo;->streamDur:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ",videoDataRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v1, p0, Landroid/emcom/VideoInfo;->videoDataRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ",videoTerminateFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-byte v1, p0, Landroid/emcom/VideoInfo;->videoTerminateFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ",uVMos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-byte v1, p0, Landroid/emcom/VideoInfo;->uVMos:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ",videoStartDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Landroid/emcom/VideoInfo;->videoStartDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ",videoStartTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget v1, p0, Landroid/emcom/VideoInfo;->videoStartTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ",videoEndTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Landroid/emcom/VideoInfo;->videoEndTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ",result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-boolean v1, p0, Landroid/emcom/VideoInfo;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 49
    iget-object v0, p0, Landroid/emcom/VideoInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Landroid/emcom/VideoInfo;->srDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Landroid/emcom/VideoInfo;->fullDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-short v0, p0, Landroid/emcom/VideoInfo;->times:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Landroid/emcom/VideoInfo;->totalLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/emcom/VideoInfo;->streamDur:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Landroid/emcom/VideoInfo;->videoDataRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-byte v0, p0, Landroid/emcom/VideoInfo;->videoTerminateFlag:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-byte v0, p0, Landroid/emcom/VideoInfo;->uVMos:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Landroid/emcom/VideoInfo;->hostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Landroid/emcom/VideoInfo;->videoStartDate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/emcom/VideoInfo;->videoStartTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Landroid/emcom/VideoInfo;->videoEndTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-boolean v0, p0, Landroid/emcom/VideoInfo;->result:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
